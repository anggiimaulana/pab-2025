import 'book.dart';
import 'special_page.dart';

void main() {
  var page1 = SpecialPage(number: 1);
  Book myBook = Book(title: "Dart OOP", page: page1);

  print("Judul buku: ${myBook.title}");
  print("Jumlah halaman: ${myBook.page}");
  myBook.setPageCount(100);
}
