// ignore: depend_on_referenced_packages
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:proyecto_m6/config/theme/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

// Un simple boolean
final isDarkmodeProvider = StateProvider((ref) => false);

// Un simple int
final selectedColorProvider = StateProvider((ref) => 0);

// Un objeto de tipo AppTheme (custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);
class ThemeNotifier extends StateNotifier<AppTheme> {
  ThemeNotifier() : super(AppTheme()) {
    // Cuando se crea el ThemeNotifier, carga las preferencias almacenadas
    loadPreferences();
  }

  void toggleDarkmode() {
    state = state.copyWith(isDarkmode: !state.isDarkmode);
    savePreferences();
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
    savePreferences();
  }

  // Método para guardar las preferencias en shared_preferences
  void savePreferences() async {
    final preferences = await SharedPreferences.getInstance();
    preferences.setBool('isDarkmode', state.isDarkmode);
    preferences.setInt('selectedColor', state.selectedColor);
  }

  // Método para cargar las preferencias desde shared_preferences
  void loadPreferences() async {
    final preferences = await SharedPreferences.getInstance();
    final isDarkmode = preferences.getBool('isDarkmode') ?? false;
    final selectedColor = preferences.getInt('selectedColor') ?? 0;
    state = state.copyWith(isDarkmode: isDarkmode, selectedColor: selectedColor);
  }
}


