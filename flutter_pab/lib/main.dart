import 'package:flutter/material.dart';
import 'package:flutter_pab/widget/widget/gesture/gesture_detector.dart';
import 'package:flutter_pab/widget/widget/gesture/grid_view.dart';
import 'package:flutter_pab/widget/widget/indikator-progres/circular_progress_indikactor.dart';
import 'package:flutter_pab/widget/widget/indikator-progres/indikator_custom.dart';
import 'package:flutter_pab/widget/widget/indikator-progres/indikator_listview.dart';
import 'package:flutter_pab/widget/widget/indikator-progres/linear_progress_indicator.dart';
import 'package:flutter_pab/widget/widget/indikator-progres/progress_bar_slider.dart';
import 'package:flutter_pab/widget/widget/navigasi/bottom_navigator.dart';
import 'package:flutter_pab/widget/widget/input/button.dart';
import 'package:flutter_pab/widget/widget/navigasi/drawer.dart';
import 'package:flutter_pab/widget/widget/input/form.dart';
import 'package:flutter_pab/widget/widget/navigasi/navigator.dart';
import 'package:flutter_pab/widget/widget/input/text_field.dart';
import 'package:flutter_pab/widget/widget/text-image/asset_image.dart';
import 'package:flutter_pab/widget/widget/text-image/network_image.dart';
import 'package:flutter_pab/widget/widget/text-image/rich_text.dart';
import 'package:flutter_pab/widget/widget/text-image/text.dart';

// navigator
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyIndikatorLisview());
  }
}
