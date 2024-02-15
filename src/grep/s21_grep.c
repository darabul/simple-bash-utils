#include "s21_grep.h"

int main(int argc, char **argv) {
  int count_sample = 0;
  char *samples = NULL;
  grep_flag flag = (grep_flag){};
  if (argc < 3) {
    exit(0);
  } else {
    samples = calloc(1, sizeof(char));
    samples = find_options(argc, argv, &flag, &count_sample, samples);
    run_utilit(argc, argv, samples, count_sample, flag);
    free(samples);
  }
  return 0;
}

char *find_options(int argc, char **argv, grep_flag *flag, int *count,
                   char *samples) {
  int option = 0, opt = 0, tmp = 0;
  const char *short_options = "e:ivclnhsf:o";
  char *sample_link = samples;
  char **sample_array = calloc(1, sizeof(char *));
  while ((option = getopt_long(argc, argv, short_options, NULL, &opt)) != -1) {
    switch (option) {
      case 'e':
        flag->e = 1;
        *count += 1;
        break;
      case 'i':
        flag->i = 1;
        break;
      case 'v':
        flag->v = 1;
        break;
      case 'c':
        flag->c = 1;
        break;
      case 'l':
        flag->l = 1;
        break;
      case 'n':
        flag->n = 1;
        break;
      case 'h':
        flag->h = 1;
        break;
      case 's':
        flag->s = 1;
        break;
      case 'f':
        flag->f = 1;
        sample_link = samples_for_flag_f(sample_link, optarg);
        break;
      case 'o':
        flag->o = 1;
        break;
      default:
        fprintf(stderr, "ERROR");
    }
    if (*count > tmp)
      //заполняем массив шаблонов
      sample_array = sample_into_array(optarg, *count, sample_array);
    tmp = *count;
  }
  if (!*count && !flag->f)
    //случай, когда нет флагов
    sample_array = no_flags_sample_found(argv, sample_array);
  // конвертируем массив шаблонов в строку с разделителями в виде |
  sample_link = samples_connect(sample_array, *count, sample_link, *flag);
  if (*count) {
    for (int i = 0; i < *count; i++) {
      free(sample_array[i]);
    }
  } else {
    free(sample_array[0]);
  }
  free(sample_array);
  return sample_link;
}
void run_utilit(int argc, char **argv, char *samples, int count,
                grep_flag flag) {
  int count_files = 0;
  char **files = NULL;
  files = calloc(1, sizeof(char *));
  files = file_matrix(argc, argv, files, count, &count_files, flag);
  for (int i = 0; i < count_files; i++) {
    open_file_func(samples, files, i, count_files, flag);
  }
  if (!files[0] && !flag.s) printf("No files");

  for (int i = 0; i < count_files; i++) {
    free(files[i]);
  }
  free(files);
}