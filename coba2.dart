void main () {
  List<dynamic> data = [];
  var item = ["buku", "sepatu", "payung"];
  data.addAll(item);
 
  void cetak() {
    for (int i = 0; i < data.length;i++) {
      print("List data ke- ${i}:${data[i]}");
    }
  }
print("ListData: $data");
data.add(1);
cetak();
} 