CFLAGS = -Wall -Winline -std=c99 -g
LDFLAGS = 

DEPS = pulutof_calib_data.h
OBJ = calibrator.o

all: calibrator

CFLAGS += -DPULUTOF1

%.o: %.c $(DEPS)
	gcc -c -o $@ $< $(CFLAGS) -pthread

calibrator: $(OBJ)
	gcc $(LDFLAGS) -o calibrator $^ -lm -pthread

e:
	gedit --new-window calibrator.c pulutof_calib_data.h
