CC = gcc
FLAGS = -Werror -Wall -Wextra
SAN=-fsanitize=leak -fsanitize=address -fsanitize=undefined -fsanitize=unreachable -fno-sanitize-recover -fstack-protector -fanalyzer


all: s21_grep

seg_f:
	$(CC) $(CFLAGS) $(SAN) -std=c11 s21_grep.c ../common/flags_func.c -o s21_grep
s21_grep:
	$(CC) $(CFLAGS) s21_grep.c ../common/flags_func.c -o s21_grep
clean:
	rm -rf s21_grep
rebuild: clean s21_grep