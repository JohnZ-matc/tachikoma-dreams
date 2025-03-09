#include <ncurses.h>

void initTerminalUI() {
    initscr();            // Start ncurses mode
    noecho();             // Don't echo user input
    curs_set(0);          // Hide cursor
    keypad(stdscr, TRUE); // Enable keyboard input

    // Print a message
    mvprintw(5, 10, "Welcome to Tachikoma-Dreams!");
    mvprintw(7, 10, "Press any key to continue...");

    refresh();  // Refresh screen to show updates
    getch();    // Wait for user input

    endwin();   // Exit ncurses mode
}

