import 'karyawan.dart';
import 'pejebat.dart';
import 'staf.dart';

void main(List<String> arguments) {
  List<Staf> listofStaff = [
    Karyawan("A123", "Lars Bak", "Solo", 2017),
    Karyawan("A345", "Kasper Lund", "Semarang"),
    Karyawan("B231", "Guido Van Rossum", "Kalimantan", 2018),
    Pejabat("P001", "Kevin McCarthy", "ketua"),
    Pejabat("P002", "Steve Scalise", "wakil ketua"),
    Pejabat("P003", "Hakeem Jeffries", "anggota")
  ];

  // Buat waktu pada 15 Oktober 2015 Jam 7:12
  var date = DateTime.parse('2023-10-15T07:12');
  for (var data in listofStaff) {
    print(data.absenMasuk(date));
  }

  // print deskripsi
  for (var data in listofStaff) {
    print(data.deskripsi);
  }
}
