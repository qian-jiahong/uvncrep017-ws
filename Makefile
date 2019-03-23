CFLAGS=-Wall
repeater: repeater.o repeaterproc.o openbsd_stringfuncs.o iniparser.o readini.o repeaterutil.o repeaterevents.o
	g++ $(CFLAGS) -o repeater repeater.o repeaterproc.o openbsd_stringfuncs.o iniparser.o readini.o repeaterutil.o repeaterevents.o

repeater.o: repeater.cpp
	g++ $(CFLAGS) -c repeater.cpp

repeaterproc.o: repeaterproc.cpp
	g++ $(CFLAGS) -c repeaterproc.cpp

openbsd_stringfuncs.o: openbsd_stringfuncs.cpp
	g++ $(CFLAGS) -c openbsd_stringfuncs.cpp

iniparser.o: iniparser.cpp
	g++ $(CFLAGS) -c iniparser.cpp

readini.o: readini.cpp
	g++ $(CFLAGS) -c readini.cpp

repeaterutil.o: repeaterutil.cpp
	g++ $(CFLAGS) -c repeaterutil.cpp

repeaterevents.o: repeaterevents.cpp
	g++ $(CFLAGS) -c repeaterevents.cpp

clean:
	rm -f *.o repeater

install:
	@echo -----------------------------------------------------------
	./install.sh
	@echo -----------------------------------------------------------

uninstall:
	@echo -----------------------------------------------------------
	./uninstall.sh
	@echo -----------------------------------------------------------

