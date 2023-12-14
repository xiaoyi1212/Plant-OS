#include <dos.h>
#define PIT_CTRL 0x0043
#define PIT_CNT0 0x0040

struct TIMERCTL timerctl;
void fpu_disable();
#define TIMER_FLAGS_ALLOC 1 /* 已配置状态 */
#define TIMER_FLAGS_USING 2 /* 定时器运行中 */
extern int cg_flag0;
extern struct TASK *c_task;
void init_pit(void) {
  io_out8(0x43, 0x36);
  io_out8(0x40, 0xA1);
  io_out8(0x40, 0x04);

  int i;
  struct TIMER *t;
  timerctl.count = 0;
  for (i = 0; i < MAX_TIMER; i++) {
    timerctl.timers0[i].flags = 0; /* 没有使用 */
  }
  t = timer_alloc(); /* 取得一个 */
  t->timeout = 0xffffffff;
  t->flags = TIMER_FLAGS_USING;
  t->next = 0;     /* 末尾 */
  timerctl.t0 = t; /* 因为现在只有哨兵，所以他就在最前面*/
  timerctl.next =
      0xffffffff; /* 因为只有哨兵，所以下一个超时时刻就是哨兵的时刻 */
  return;
}

struct TIMER *timer_alloc(void) {
  int i;
  for (i = 0; i < MAX_TIMER; i++) {
    if (timerctl.timers0[i].flags == 0) {
      timerctl.timers0[i].flags = TIMER_FLAGS_ALLOC;
      timerctl.timers0[i].waiter = NULL;
      return &timerctl.timers0[i];
    }
  }
  return 0; /* 没找到 */
}

void timer_free(struct TIMER *timer) {
  timer->flags = 0; /* 未使用 */
  timer->waiter = NULL;
  return;
}

void timer_init(struct TIMER *timer, struct FIFO8 *fifo, unsigned char data) {
  timer->fifo = fifo;
  timer->data = data;
  return;
}

void timer_settime(struct TIMER *timer, unsigned int timeout) {
  int e;
  struct TIMER *t, *s;
  timer->timeout = timeout + timerctl.count;
  timer->flags = TIMER_FLAGS_USING;
  e = io_load_eflags();
  t = timerctl.t0;
  if (timer->timeout <= t->timeout) {
    /* 插入最前面的情况 */
    timerctl.t0 = timer;
    timer->next = t; /* 下面是设定t */
    timerctl.next = timer->timeout;
    io_store_eflags(e);
    return;
  }
  for (;;) {
    s = t;
    t = t->next;
    if (timer->timeout <= t->timeout) {
      /* 插入s和t之间的情况 */
      s->next = timer; /* s下一个是timer */
      timer->next = t; /* timer的下一个是t */
      io_store_eflags(e);
      return;
    }
  }
}

void sleep(unsigned long long s) {
  struct TIMER *timer;
  timer = timer_alloc();
  timer->waiter = current_task();
  unsigned char buf[50];
  struct FIFO8 fifo;
  fifo8_init(&fifo, 50, buf);
  timer_init(timer, &fifo, 1);
  timer_settime(timer, s);
  task_fall_blocked(WAITING);
  for (;;) {
    int i = fifo8_get(&fifo);
    if (i == 1) {
      timer_free(timer);
      return;
    }
  }
}

uint32_t mt2flag = 0;
int g = 0;
static uint32_t count = 0;
uint64_t global_time = 0;
void inthandler20(int cs, int *esp) {
 // logk("*");
  // printk("CS:EIP=%04x:%08x\n",current_task()->tss.cs,esp[-10]);
  extern mtask *current;
  if(global_time + 1 == 0) {
    logk("reset\n");
    extern mtask m[255];
    for (int i = 0; i < 255; i++) {
      m[i].jiffies = 0;
    }
    global_time = 0;
  }
  global_time++;
  io_out8(PIC0_OCW2, 0x60); /* 把IRQ-00接收信号结束的信息通知给PIC */
  struct TIMER *timer;

  timerctl.count++;
  if (timerctl.next > timerctl.count) {
    goto D;
  }
  timer = timerctl.t0; /* 首先把最前面的地址赋给timer */
  char ts = 0;
  for (;;) {
    /* 因为timers的定时器都处于运行状态，所以不确认flags */
    if (timer->timeout > timerctl.count) {
      break;
    }
    /* 超时 */
    timer->flags = TIMER_FLAGS_ALLOC;
    timer->waiter->state = RUNNING;
    timer->waiter->ready = 1;
    fifo8_put(timer->fifo, timer->data);
    timer = timer->next; /* 将下一个定时器的地址赋给timer*/
  }
  timerctl.t0 = timer;
  timerctl.next = timer->timeout;
D:
  if (current) {
    io_sti();
    task_next();
  }
  // extern struct TIMER *mt_timer1, *mt_timer2, *mt_timer3;
  // extern int tasknum;
  // struct TIMER* timer;

  // timerctl.count++;
  // if (timerctl.next > timerctl.count) {
  //   return;
  // }
  // timer = timerctl.t0; /* 首先把最前面的地址赋给timer */
  // char ts = 0;
  // for (;;) {
  //   /* 因为timers的定时器都处于运行状态，所以不确认flags */
  //   if (timer->timeout > timerctl.count) {
  //     break;
  //   }
  //   /* 超时 */
  //   timer->flags = TIMER_FLAGS_ALLOC;
  //   if (timer == mt_timer3) {  // mt_timer3超时
  //     mt2flag = 0;
  //     if (count == 3) {
  //       mt2flag = 1;
  //       count = 0;
  //     }
  //     ts = 3;
  //     count++;
  //   } else if (timer == mt_timer2) {  // mt_timer2超时
  //     ts = 2;
  //   } else if (timer == mt_timer1) {  // mt_timer1超时
  //     ts = 1;
  //   } else {
  //     fifo8_put(timer->fifo, timer->data);
  //   }
  //   timer = timer->next; /* 将下一个定时器的地址赋给timer*/
  // }
  // timerctl.t0 = timer;
  // timerctl.next = timer->timeout;
  // printk("*");
  // ClearExpFlag();
  // disableExp();

  // io_cli();
  // extern int st_task;
  // fpu_disable();
  // if (ts == 3) {
  //   mt_taskswitch3();
  // }
  // if (ts == 2) {
  //   mt_taskswitch2();
  // }
  // if (ts == 1) {
  //   mt_taskswitch1();
  // }
  // io_sti();
  // if (current_task()->fpu_use == 1 && current_task()->app == 1) {
  //   extern int dflag ;
  //   dflag = 1;
  //   // printk("switch %s\n",current_task()->name);
  //   asm volatile("frstor %0" ::"m"(current_task()->fxsave_region));
  //   current_task()->fpu_use = 0;
  //   dflag = 0;
  // } else {
  //   //asm volatile("fninit");
  // }
  // if(GetExpFlag()) {
  //   printk("Warning: an Error for CPU!\n");
  // }
  // ClearExpFlag();
  // EnableExp();
}
