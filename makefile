# the compiler to use
CC = clang

# compiler flags:
#  -g    adds debugging information to the executable file
#  -Wall turns on most, but not all, compiler warnings
CFLAGS  = -g -Wall

#include path
INC = -I`brew --cellar`/../include
  
#files to link:
LFLAGS = -L`brew --cellar`/../lib -lspl
  
# the name to use for both the target source file, and the output file:
TARGET = sum
  
all: $(TARGET)
  
$(TARGET): $(TARGET).c
	$(CC) $(CFLAGS) -o $(TARGET) $(TARGET).c $(INC) $(LFLAGS)
