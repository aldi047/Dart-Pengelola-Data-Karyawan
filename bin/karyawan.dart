import 'staf.dart';
import 'package:intl/intl.dart';

class Karyawan extends Staf {
  int _gaji = UMR;

  Karyawan(super.npp, super.nama, [super.alamat, super.thnMasuk = 2015]);

  @override
  int get tunjangan => (((2023 - thnMasuk) < 5) ? 1000000 : 2000000);

  @override
  String absenMasuk(DateTime jamMasuk) {
    if (jamMasuk.hour > 8) {
      return '$nama pada ${DateFormat("MMMMEEEEd").format(jamMasuk)} jam ${DateFormat("Hm").format(jamMasuk)} datang Terlambat';
    } else {
      return '$nama pada ${DateFormat("MMMMEEEEd").format(jamMasuk)} jam ${DateFormat("Hm").format(jamMasuk)} datang Tepat waktu';
    }
  }

  // setter
  @override
  set gaji(int gaji) {
    if (gaji < UMR) {
      _gaji = UMR;
      print('gaji tidak boleh di bawah UMR');
    } else if (((2023 - thnMasuk) < 5) && (gaji != UMR)) {
      _gaji = UMR;
      print('Gaji pegawai baru harus sesuai UMR');
    } else {
      _gaji = gaji;
    }
  }

  // getter
  @override
  int get gaji {
    return _gaji + tunjangan;
  }

  @override
  String get deskripsi {
    return '''=========================
Npp         : $npp
Nama        : $nama
Alamat      : ${alamat ?? ''}
Tahun Masuk : $thnMasuk
Gaji        : $gaji
''';
  }
}
