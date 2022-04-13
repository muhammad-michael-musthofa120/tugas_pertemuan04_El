// class OOP

class Motor {
  String? jenis;
  String? merk;
  int? tenaga;
  int? harga;

  //construktor
  Motor({this.merk, this.jenis, this.tenaga, this.harga});

  //method
  maju(int kecepatan) {
    print(kecepatan.toString() + "KM/Jam");
  }
}

//inheritance / pewarisan
class Honda extends Motor {
  int? tenaga;
  int? kecepatanmax;

  Honda({String? merk, this.tenaga, this.kecepatanmax}) : super(merk: merk);
}

void main() {
  //instansiasi
  var m1 = Motor(merk: "Suzuki", jenis: "Motor Balap", tenaga: 150, harga: 21);

  m1.maju(50);
  print(m1.merk);
  print(m1.jenis);
  print(m1.tenaga);
  print(m1.harga);

  print("----------------------");

  var m2 = Motor(merk: "Honda", jenis: "Grand", tenaga: 110, harga: 13);

  m2.maju(70);
  print(m2.merk);
  print(m2.jenis);
  print(m2.tenaga);
  print(m2.harga);

  var h2 = Honda(tenaga: 150, kecepatanmax: 150, merk: "Ayla");
  print("----------------------");
  print(h2.tenaga);
  print(h2.kecepatanmax);
  print(h2.merk);
}
