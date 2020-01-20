box: box.cpp
	g++ -J4 -o box box.cpp
	
clean_box:
	rm ./box

run:
	./box
