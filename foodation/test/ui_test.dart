import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foodation/screens/login_screen.dart';

void main() {
  testWidgets('Screen Login UI test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: LoginScreen(),
    ));

    // Memverifikasi apakah widget ditampilkan dengan benar
    expect(find.text('Foodation'), findsOneWidget);
    expect(find.text('Username'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
    expect(find.byType(ElevatedButton), findsOneWidget);

    // Memasukkan teks ke dalam kolom teks
    await tester.enterText(find.byType(TextFormField).at(0), 'testuser');
    await tester.enterText(find.byType(TextFormField).at(1), 'testpassword');

    // Menekan tombol masuk dan memicu frame
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    //  Memverifikasi apakah proses login berfungsi dengan benar
    expect(find.text('Login Gagal'), findsNothing);
    expect(find.text('Belum punya akun?'), findsOneWidget);

    //  Menekan tombol "Daftar" untuk navigasi ke layar registrasi
    await tester.tap(find.text('Daftar'));
    await tester.pumpAndSettle();

    // Memverifikasi apakah navigasi ke layar registrasi berhasil
    expect(find.text('Register Screen'), findsOneWidget);
  });
}
