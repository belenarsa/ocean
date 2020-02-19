all: bin 

bin: main.o 
	gcc main.o -Wall -o is_armstrong_number -lm 
main.o : main.c
	gcc -c main.c -pedantic -Wall -o main.o
clean: clean-doc clean-obj clean-bin
	rm -f *.o is_armstrong_number 
clean-obj:
	rm -f *.o 
clean-bin:
	rm -f is_armstrong_number 
clean-doc:
	rm -rf html latex
doc: clean-doc
	doxygen	

cppcheck-xml:
	cppcheck --enable=all --inconclusive --xml --xml-version=2 . 2> cppcheck.xml 
cppcheck:
	cppcheck --enable=all --inconclusive *.c

