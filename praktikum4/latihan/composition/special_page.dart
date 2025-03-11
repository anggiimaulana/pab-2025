class SpecialPage {
  int? number;
  SpecialPage? page;

  SpecialPage(this.number);

  void setMargint() {
    print("Margin set for page: $number");
  }

  String getTitle() {
    return "Ttitle of page $number";
  }

  @override
  String toString() {
    return "$number";
  }
}
