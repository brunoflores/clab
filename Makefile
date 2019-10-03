# all source files here
SRCS = hw.c helper.c

# target here
TARG = hw

# compiler, compile flags, and needed libs
CC   = gcc
OPTS = -Wall -O
LIBS = -lm

# translates .c files in src list to .o's
OBJS = $(SRCS:.c=.o)

# used to generate the target
all: $(TARG)

# generates the target executable
$(TARG): $(OBJS)
	$(CC) -o $(TARG) $(OBJS) $(LIBS)

# generic rule for .o files
%.o: %.c
	$(CC) $(OPTS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARG)
