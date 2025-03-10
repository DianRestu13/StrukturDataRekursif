void main() {
void tail(int i){
  if (i > 0) {
    stdout.write('$i');
    tail(i    -1);
  }
}
}