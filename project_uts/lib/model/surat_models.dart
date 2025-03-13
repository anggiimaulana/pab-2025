class PengajuanSk {
  final String title;
  final String icon;
  final String color;
  final String route;

  PengajuanSk(
      {required this.title,
      required this.icon,
      required this.color,
      required this.route});
}

final List<PengajuanSk> listCategorySk = [
  PengajuanSk(
    title: "Surat Keterangan Tidak Mampu (Listrik)",
    icon: "assets/icon/sktml_icon.png",
    color: "F3A889",
    route: "/sktml",
  ),
  PengajuanSk(
    title: "Surat Keterangan Tidak Mampu (Beasiswa)",
    icon: "assets/icon/sktmb_icon.png",
    color: "5C89DA",
    route: "/sktmb",
  ),
  PengajuanSk(
    title: "Surat Keterangan Penghasilan Orang Tua (Beasiswa)",
    icon: "assets/icon/skpot_icon.png",
    color: "899EC4",
    route: "/skpot",
  ),
  PengajuanSk(
    title: "Surat Keterangan Penghasilan (Bantuan)",
    icon: "assets/icon/skpb_icon.png",
    color: "BD3D3D",
    route: "/skpb",
  ),
  PengajuanSk(
    title: "Surat Keterangan Tidak Mampu (Sekolah)",
    icon: "assets/icon/sktms_icon.png",
    color: "254379",
    route: "/sktms",
  ),
  PengajuanSk(
    title: "Surat Keterangan Usaha",
    icon: "assets/icon/sku_icon.png",
    color: "3DB35B",
    route: "/sku",
  ),
  PengajuanSk(
    title: "Surat Keterangan Status",
    icon: "assets/icon/sks_icon.png",
    color: "F6BE05",
    route: "/sks",
  ),
  PengajuanSk(
    title: "Surat Keterangan Belum Menikah",
    icon: "assets/icon/skbm_icon.png",
    color: "E88B99",
    route: "/skbm",
  ),
  PengajuanSk(
    title: "Surat Keterangan Pekerjaan",
    icon: "assets/icon/skp_icon.png",
    color: "6652A1",
    route: "/skp",
  ),
];