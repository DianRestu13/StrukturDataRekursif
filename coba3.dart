void main () {
  Set<int> number = {} ;
  number.add(10);
  number.add(20);
  print("Set Data: ${number}");

  number.remove(10);
  print(number);
  number.add(50);
  print(number);

  var mahasiswa = {"Dian", "Restu", "Khoirunnisa"};
  mahasiswa.remove("Khoirunnisa");
  print(mahasiswa);
}