# jnacurses

A curses implementation for Java.

The Java side talks to the system `ncurses` library through JNA. Since JNA
cannot call C macros, `jnacurses.c` wraps the macros that curses exposes
(`getyx`, `stdscr`, `LINES`, `COLS`, ...) as plain functions and is built
into `libjnacurses.so`.

## Layout

- `jnacurses.c` - the thin C shim compiled to `libjnacurses.so`.
- `scripts/build_lib.py` - builds the shared library.
