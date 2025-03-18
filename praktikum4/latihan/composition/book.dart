import 'special_page.dart';

class Book {
  String? title;
  SpecialPage? page;

  Book({String? title, SpecialPage? page}) {
    this.title = title;
    this.page = page;
  }

  void setPageCount(int count) {
    print("Setting page count to $count");
  }

  void setTitle(String newTitle) {
    title = newTitle;
  }
}
