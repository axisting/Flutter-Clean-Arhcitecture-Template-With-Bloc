part of 'main.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 20),
      centerTitle: true, // AppBar başlığını ortaya hizala
    ),
    // ? Diğer tema ayarlarını buraya ekleyebilirsiniz
  );
}
