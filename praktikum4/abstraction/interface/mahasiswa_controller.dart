import 'crud_operation.dart';

class MahasiswaController implements CrudOperation {
  @override
  void create() {
    print("Tambah data mahasiswa");
  }

  @override
  void read() {
    print("Ubah data mahasiswa");
  }

  @override
  void update() {
    print("Ubah data mahasiswa");
  }

  @override
  void delete() {
    print("Hapus data mahasiswa");
  }
}
