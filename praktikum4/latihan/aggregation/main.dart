import 'jenis_produk.dart';
import 'produk.dart';

void main() {
  JenisProduk jns1 = JenisProduk("8012", "Advan Workplus");
  JenisProduk jns2 = JenisProduk("2738", "Axio");
  JenisProduk jns3 = JenisProduk("4883", "Lenovo LOQ");

  Produk prd = Produk("4883", "Lenovo LOQ");
  prd.dataJenisProduk.add(jns1);
  prd.dataJenisProduk.add(jns2);
  prd.dataJenisProduk.add(jns3);

  prd.showJenisProduk();
}
