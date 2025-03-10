import 'dart:io';

void main() {
  // Daftar menu restoran
  Map<String, List<MenuItem>> menu = {
    'Makanan': [
      MenuItem('Nasi Goreng Spesial', 25000),
      MenuItem('Ayam Bakar Madu', 30000),
      MenuItem('Soto Ayam', 20000),
      MenuItem('Mie Ayam Bakso', 18000),
      MenuItem('Rendang Daging', 45000),
      MenuItem('Pecel Lele', 20000),
    ],
    'Minuman': [
      MenuItem('Es Teh Tawar', 3000),
      MenuItem('Kopi Hitam', 10000),
      MenuItem('Smoothie Alpukat', 25000),
      MenuItem('Es Jeruk', 8000),
      MenuItem('Lemon Tea', 15000),
      MenuItem('Soda Gembira', 15000),
    ],
    'Dessert': [
      MenuItem('Es Krim Vanilla', 15000),
      MenuItem('Pisang Goreng Keju', 17000),
      MenuItem('Brownies Kukus', 20000),
      MenuItem('Puding Cokelat', 12000),
      MenuItem('Kue Lapis', 15000),
    ],
  };

  // Daftar pesanan
  List<MenuItem> cart = [];

  print("=== Selamat Datang di Restoran Kami ===");

  while (true) {
    print("\nKategori Menu:");
    int index = 1;
    menu.keys.forEach((category) {
      print("$index. $category");
      index++;
    });
    print("${index}. Lihat Pesanan");
    print("${index + 1}. Keluar");

    stdout.write("\nPilih kategori atau opsi lainnya (1-${index + 1}): ");
    String? input = stdin.readLineSync();
    int choice = int.tryParse(input ?? '') ?? 0;

    if (choice >= 1 && choice <= menu.keys.length) {
      String selectedCategory = menu.keys.elementAt(choice - 1);
      print("\n=== Menu $selectedCategory ===");
      List<MenuItem> items = menu[selectedCategory]!;
      for (int i = 0; i < items.length; i++) {
        print("${i + 1}. ${items[i].name} - ${items[i].price} IDR");
      }
      stdout.write("\nPilih item untuk ditambahkan ke pesanan (1-${items.length}) atau 0 untuk kembali: ");
      String? itemInput = stdin.readLineSync();
      int itemChoice = int.tryParse(itemInput ?? '') ?? -1;

      if (itemChoice >= 1 && itemChoice <= items.length) {
        cart.add(items[itemChoice - 1]);
        print("\n${items[itemChoice - 1].name} telah ditambahkan ke pesanan.");
      }
    } else if (choice == menu.keys.length + 1) {
      while (true) {
        print("\n=== Daftar Pesanan ===");
        if (cart.isEmpty) {
          print("Belum ada pesanan.");
          break;
        } else {
          int total = 0;
          for (int i = 0; i < cart.length; i++) {
            print("${i + 1}. ${cart[i].name} - ${cart[i].price} IDR");
            total += cart[i].price;
          }
          print("Total: $total IDR");
          print("\n1. Hapus item dari pesanan");
          print("2. Kembali ke menu utama");

          stdout.write("\nPilih opsi (1-2): ");
          String? cancelInput = stdin.readLineSync();
          int cancelChoice = int.tryParse(cancelInput ?? '') ?? 0;

          if (cancelChoice == 1) {
            stdout.write("\nPilih item yang ingin dihapus (1-${cart.length}): ");
            String? removeInput = stdin.readLineSync();
            int removeChoice = int.tryParse(removeInput ?? '') ?? -1;

            if (removeChoice >= 1 && removeChoice <= cart.length) {
              print("\n${cart[removeChoice - 1].name} telah dihapus dari pesanan.");
              cart.removeAt(removeChoice - 1);
            } else {
              print("\nPilihan tidak valid.");
            }
          } else if (cancelChoice == 2) {
            break;
          } else {
            print("\nPilihan tidak valid.");
          }
        }
      }
    } else if (choice == menu.keys.length + 2) {
      print("\nTerima kasih telah menggunakan layanan kami!");
      break;
    } else {
      print("\nPilihan tidak valid. Silakan coba lagi.");
    }
  }
}

class MenuItem {
  String name;
  int price;

  MenuItem(this.name, this.price);
}