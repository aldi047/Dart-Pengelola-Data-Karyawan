const UMR = 2900000;

abstract class Staf {
  String npp;
  String nama;
  String? alamat; // nullable
  int thnMasuk;
  int _gaji = UMR;

  Staf(this.npp, this.nama, [this.alamat, this.thnMasuk = 2015]);

  set gaji(int gaji);
  int get gaji;
  int get tunjangan;
  String absenMasuk(DateTime jamMasuk);
  String get deskripsi;
}
