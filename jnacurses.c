#include<curses.h>

int gety(WINDOW *win) {
	int y,x;
	getyx(win,y,x);
	return y;
}
int getx(WINDOW *win) {
	int y,x;
	getyx(win,y,x);
	return x;
}
WINDOW* getStdscr(void) {
	return stdscr;
}
int getLINES(void) {
	return LINES;
}
int getCOLS(void) {
	return COLS;
}
