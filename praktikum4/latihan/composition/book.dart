import 'special_page.dart';

class Book {
  String? title;
  SpecialPage? page;

  Book(this.title, this.page);

  void setPageCount(int count) {
    print("Setting page count to $count");
  }

  void setTitle(String newTitle) {
    title = newTitle;
  }
}
