// the greatest programer ------ kawai

#include "gui.h"

#define FLAGS_OVERRUN 0x0001

void fifo8_init(struct FIFO8 *fifo, int size, unsigned char *buf) {
  fifo->size = size;
  fifo->buf = buf;
  fifo->free = size; /* 缓冲区大小 */
  fifo->flags = 0;
  fifo->p = 0; /* 下一个数据写入位置 */
  fifo->q = 0; /* 下一个数据读出位置 */
  return;
}

int fifo8_put(struct FIFO8 *fifo, unsigned char data) {
  if (fifo->free == 0) {
    /* 没有空间了，溢出 */
    fifo->flags |= FLAGS_OVERRUN;
    return -1;
  }
  fifo->buf[fifo->p] = data;
  fifo->p++;
  if (fifo->p == fifo->size) {
    fifo->p = 0;
  }
  fifo->free--;
  return 0;
}

int fifo8_get(struct FIFO8 *fifo) {
  int data;
  if (fifo->free == fifo->size) {
    /* 如果缓冲区为空则返回-1 */
    return -1;
  }
  data = fifo->buf[fifo->q];
  fifo->q++;
  if (fifo->q == fifo->size) {
    fifo->q = 0;
  }
  fifo->free++;
  return data;
}

int fifo8_status(struct FIFO8 *fifo) {
  if (fifo == NULL) {
    return 0;
  }
  return fifo->size - fifo->free;
}

void fifo32_init(struct FIFO32 *fifo, int size, int *buf) {
  fifo->size = size;
  fifo->buf = buf;
  fifo->free = size;
  fifo->flags = 0;
  fifo->next_r = 0;
  fifo->next_w = 0;
}

int fifo32_put(struct FIFO32 *fifo, int data) {
  if (fifo->free == 0) {
    fifo->flags |= FLAGS_OVERRUN;
    return -1;
  }

  fifo->buf[fifo->next_w] = data;
  fifo->next_w++;
  if (fifo->next_w == fifo->size) {
    fifo->next_w = 0;
  }
  fifo->free--;

  return 0;
}

int fifo32_get(struct FIFO32 *fifo) {
  if (fifo->free == fifo->size) {
    return -1;
  }

  int data = fifo->buf[fifo->next_r];
  fifo->next_r++;
  if (fifo->next_r == fifo->size) {
    fifo->next_r = 0;
  }
  fifo->free++;

  return data;
}

int fifo32_status(struct FIFO32 *fifo) { return fifo->size - fifo->free; }