import 'package:intl/intl.dart';

import 'staf.dart';

class Pejabat extends Staf {
  String jabatan = 'anggota';
  int _gaji = 4200000;

  Pejabat(super.npp, super.nama, this.jabatan);

  @override
  String absenMasuk(DateTime jamMasuk) {
    if (jamMasuk.hour > 8) {
      return '$nama pada ${DateFormat("MMMMEEEEd").format(jamMasuk)} jam ${DateFormat("Hm").format(jamMasuk)} datang Terlambat';
    } else {
      return '$nama pada ${DateFormat("MMMMEEEEd").format(jamMasuk)} jam ${DateFormat("Hm").format(jamMasuk)} datang Tepat waktu';
    }
  }

  @override
  int get tunjangan {
    switch (jabatan) {
      case 'ketua':
        return 18900000;
      case 'wakil ketua':
        return 15600000;
      default:
        return 9700000;
    }
  }

  @override
  String get deskripsi {
    return '''=========================
Npp         : $npp
Nama        : $nama
Alamat      : ${alamat ?? ''}
Tahun Masuk : $thnMasuk
Jabatan     : $jabatan
Gaji        : $gaji
''';
  }

  @override
  int get gaji {
    return _gaji + tunjangan;
  }

  @override
  set gaji(int gaji) {
    gaji = _gaji;
  }
}
