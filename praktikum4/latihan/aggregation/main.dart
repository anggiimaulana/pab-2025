import 'jenis_produk.dart';
import 'produk.dart';

void main() {
  JenisProduk jns1 = JenisProduk(kodeJenis: "8012", namaJenis: "Advan Workplus");
  JenisProduk jns2 = JenisProduk(kodeJenis: "2738", namaJenis: "Axio");
  JenisProduk jns3 = JenisProduk(kodeJenis: "4883", namaJenis: "Lenovo LOQ");

  Produk prd = Produk(kode: "4883", nama: "Lenovo LOQ");
  prd.dataJenisProduk.add(jns1);
  prd.dataJenisProduk.add(jns2);
  prd.dataJenisProduk.add(jns3);

  prd.showJenisProduk();
}
