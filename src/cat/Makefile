CC=gcc
CFLAGS=-Wall -Wextra -Werror
SAN=-fsanitize=address

all: s21_cat

seg_f:
	$(CC) $(CFLAGS) $(SAN) -std=c11 s21_cat.c -o s21_cat
s21_cat:
	$(CC) $(CFLAGS) s21_cat.c -o s21_cat
clean:
	rm -rf s21_cat
rebuild: clean s21_cat