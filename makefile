CFLAGS=-J4
CC=g++
TARGET=box

$(TARGET): box.cpp
	$(CC) $(CFLAGS) -o $(TARGET) box.cpp
	
clean_box:
	rm ./$(TARGET)

run:
	./$(TARGET)
