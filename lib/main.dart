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
      home: const BookingFormPage(),
    );
  }
}
