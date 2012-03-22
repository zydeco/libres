LIB = libres.a

CC = clang
AR = ar
RANLIB = ranlib
CFLAGS = -fPIC -std=c99

all: $(LIB)

$(LIB): res.c
	$(CC) -c $(CFLAGS) res.c
	$(AR) -ru $(LIB) res.o
	$(RANLIB) $(LIB)

clean:
	rm -rf $(LIB) res.o