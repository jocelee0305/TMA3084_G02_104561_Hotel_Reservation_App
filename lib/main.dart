import 'package:material_ui/material_ui.dart';

import 'booking_form_page.dart';

void main() {
  runApp(const HotelApp());
}

class HotelApp extends StatelessWidget {
  const HotelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hotel Reservation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: const Color(0xFF00897B),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF2F8F7),
        appBarTheme: const AppBarTheme(centerTitle: true),
      ),
      home: const BookingFormPage(),
    );
  }
}
