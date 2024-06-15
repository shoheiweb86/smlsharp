int S (int n) {
  int a = 0, i = n;
  while (i > 0) {
    a = a + i;
    i = i - 1;
  }
  return a;
}