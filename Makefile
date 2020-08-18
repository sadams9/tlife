CC=gcc

CFLAGS= \
				-Werror \
				-Wall

SRC= \
	   src/main.c  \
     src/block.c \
	   src/cell.c \
	   src/block_visual.c \
	   src/color.c \
	   src/control.c \
	   src/map.c \
	   src/map_io.c \
	   src/player.c \
	   src/screen.c \
	   src/map_visual.c \
	   src/bool.c \
	   src/shape.c \
	   src/player_visual.c \
	   src/terminal.c \
	   src/window.c \
	   src/player_io.c \
	   src/game.c \
	   src/constants.c \
	   src/frame.c \
     src/player_target.c \
	   src/player_building.c \
	   src/init.c \
	   src/loop.c \
	   src/destroy.c \
	   src/vector_math.c \
	   src/control_delta.c

APP=bin/app

# here I don't feel like learning how makefiles work yet, so I'm writing a
# bunch of commands out the long way
run:
	$(RM) -r bin
	mkdir bin
	$(CC) -lcurses $(SRC) -o $(APP)
	bin/app

build:
	$(RM) -r bin
	mkdir bin
	$(CC) -lcurses $(SRC) -o $(APP)

clean:
	$(RM) -r bin

