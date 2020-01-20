box: box.cpp
	g++ -o box box.cpp
	
clean_box:
	rm ./box

run:
	./box
