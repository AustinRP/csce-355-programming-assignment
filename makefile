# Austin Pahl, CSCE 355 Programming Assignment, Fall 2016
# Based on the rules described here:
# http://stackoverflow.com/a/2481326/6715745
CXX=g++
CPPFLAGS=-std=c++11

SRC=src/

PSRCS=$(SRC)properties_main.cc
POBJS=$(patsubst $(SRC)%.cc,%.o,$(PSRCS))

SSRCS=$(SRC)simulator_main.cc
SOBJS=$(patsubst $(SRC)%.cc,%.o,$(PSRCS))


all: properties simulator

properties: $(POBJS)
	g++ -o properties $(POBJS)

properties_main.o: $(SRC)properties_main.cc
	g++ $(CPPFLAGS) -c $(SRC)properties_main.cc

simulator: $(SOBJS)
	g++ -o simulator $(SOBJS) 

simulator_main.o: $(SRC)simulator_main.cc
	g++ $(CPPFLAGS) -c $(SRC)simulator_main.cc

clean: 
	rm *.o simulator properties