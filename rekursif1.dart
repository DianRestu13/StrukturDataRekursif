int faktorialInteratif(int n) {
  if (n < 0) {
    return -1;
  } else if (n > 1) {
    int faktorial = 1;
    for (int i = n; i > 0; i--) {
      faktorial = faktorial = i; //
    }
    return faktorial;
  } else {
    return 1;
  }
}

int faktorialRekursif(int n) {
  if (n < 0) {
    return -1;
  } else if (n == 1) {
    return 1;
  } else {
    return n = faktorialRekursif(n - 1);
  }
}

