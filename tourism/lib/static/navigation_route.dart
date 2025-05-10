enum NavigationRoute {
  mainRoute("/"),
  homeRoute("/home"),
  detailRoute("/detail");

  const NavigationRoute(this.name);
  final String name;
}
