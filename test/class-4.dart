void main() {
  var durian = Durian(
      nama: 'Durian',
      rasa: 'Manis',
      harga: 45000,
      warna: 'kuning',
      stok: 13000);
  var stroberi = Stroberi(
      nama: 'Stroberi',
      warna: 'Merah',
      rasa: 'Manis',
      harga: 15000,
      stok: 30000);

  durian.keterangan();
  stroberi.keterangan();
  print('=============================');
  durian.cekStok();
  durian.tambahStok(10);
  durian.cekStok();
  durian.beli(4);
  durian.cekStok();
  print('=============================');
  stroberi.cekStok();
  stroberi.tambahStok(23);
  stroberi.cekStok();
  stroberi.beli(15);
  stroberi.cekStok();
  print('=============================');

  var kambing = Kambing(nama: 'Garut', jenis: 'Kambing SUper');
  kucing.keterangan();

  var kucing = Kucing(nama: 'Anggora', jenis: 'Keren');
  kucing.keterangan();
}

// class buah sebagai parent class
class Buah {
  String? nama;
  String? warna;
  int? stok;
  int? harga;

  Buah({
    this.nama,
    this.warna,
    this.stok,
    this.harga,
  });

  //method untuk menambah stok buah
  tambahStok(int tambahanStok) {
    stok = stok! + tambahanStok;
    print('stok $nama ditambahkan sebanyak $tambahanStok');
    return stok;
  }

  //method untuk menghitung total pembelian buah
  beli(int jumlah) {
    int totalBeli = jumlah * harga!;
    print('Anda membeli $jumlah $nama dengan harga Total : Rp. ' +
        totalBeli.toString());
    return stok = stok! - jumlah;
  }

  //method untuk mengecek stok buah
  void cekStok() {
    print('sisa stok $nama adalah : ' + stok.toString());
  }
}

//Jamnu yang merupakan child class dari buah
class Jambu extends Buah {
  String? jenis;
  String? rasa;

  Jambu({
    this.jenis,
    this.rasa,
    String? nama,
    String? warna,
    int? harga,
    int? stok,
  }) : super(nama: nama, warna: warna, harga: harga, stok: stok);

  //method untuk menampilkan keterangan
  void keterangan() {
    print('---------- class Apel ----------');
    print('----- child class dari Buah -----');
    print('''
    Nama           : $nama
    Jenis          : $jenis
    Warna          : $warna
    Rasa           : $rasa
    Harga          : Rp. $harga /buah
    Stok           : $stok
    ''');
  }
}

//Apel yang merupakan child class dari buah
class Apel extends Buah {
  String? jenis;
  String? rasa;

  Jeruk({
    this.jenis,
    this.rasa,
    String? nama,
    String? warna,
    int? harga,
    int? stok,
  }) : super(nama: nama, warna: warna, harga: harga, stok: stok);

  //method untuk menampilkan keterangan
  void keterangan() {
    print('---------- class Jeruk ----------');
    print('----- child class dari Buah -----');
    print('''
    Nama           : $nama
    Jenis          : $jenis
    Warna          : $warna
    Rasa           : $rasa
    Harga          : Rp. $harga /buah
    Stok           : $stok
    ''');
  }
}



//Kucing yang merupakan child class dari Hewan
class Kambing extends Hewan {
  String? jenis;

  Kucing({
    String? nama,
    String? warnaBulu,
    this.jenis,
  }) : super(nama: nama, warnaBulu: warnaBulu);

  suaraKambing() {
    return 'Embee...';
  }

  keterangan() {
    print('---------- class Kambing ----------');
    print('----- child class dari Hewan -----');
    print('''
    Nama           : $nama
    Jenis          : $jenis
    Warna Bulu     : $warnaBulu
    memiliki suara : ${suaraKambing()}
    ''');
  }
}

//Anjing yang merupakan child class dari Hewan

