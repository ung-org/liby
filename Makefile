.POSIX:

LIB=liby

$(LIB).a: $(LIB).o
	$(AR) rv $@ $(LIB).o

$(LIB).o: $(LIB).c
	$(CC) $(CFLAGS) -c $(LIB).c

clean:
	rm -f *.a *.o
