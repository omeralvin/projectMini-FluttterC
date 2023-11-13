import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foodation/screens/login_screen.dart';

void main() {
  testWidgets('Pengujian UI LoginScreen', (WidgetTester tester) async {
    // Bangun widget aplikasi dan perbarui widget
    await tester.pumpWidget(const MaterialApp(
      home: LoginScreen(),
    ));

    // Verifikasi apakah teks "Foodation" ditampilkan dengan benar
    expect(find.text("Foodation"), findsOneWidget);

    // Masukkan teks ke dalam kolom username dan password
    await tester.enterText(find.byType(TextFormField).at(0), 'contohuser');
    await tester.enterText(find.byType(TextFormField).at(1), 'contohpassword');

    // Tap tombol "Masuk"
    await tester.tap(find.text("Masuk"));
    await tester.pump();

    // Verifikasi apakah dialog "Login Gagal" ditampilkan saat username atau password kosong
    expect(find.text("Login Gagal"), findsNothing);

    // Verifikasi apakah navigasi ke layar registrasi berhasil saat tombol "Daftar" ditekan
    await tester.tap(find.text('Daftar'));
    await tester.pumpAndSettle();

    // Verifikasi apakah kita telah berpindah ke layar registrasi
    expect(find.text('RegisScreen'), findsOneWidget);
  });
}
