import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//  Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

// Un simple booleano
final isDarkModeProvider = StateProvider<bool>((ref) => false);

// Un simple entero
final selectedColorProvider = StateProvider<int>((ref) => 0);
