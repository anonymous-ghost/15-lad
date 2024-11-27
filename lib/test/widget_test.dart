import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/main.dart'; // Замініть на правильний шлях до вашого файлу

void main() {
  testWidgets('Test function calculation', (WidgetTester tester) async {
    // Створення та ініціалізація віджету
    await tester.pumpWidget(MyApp());

    // Тест на обчислення y
    final homePageState = tester.state(find.byType(HomePage)) as _HomePageState;

    // Перевірка для x = 1
    expect(homePageState.calculateY(1), 7.0);

    // Перевірка для x = 2
    expect(homePageState.calculateY(2), 6.0);
  });

  testWidgets('Test header text', (WidgetTester tester) async {
    // Створення та ініціалізація віджету
    await tester.pumpWidget(MyApp());

    // Перевірка наявності тексту у заголовку
    expect(find.text('KH-32: Antonyuk Oleksandr\'s last Flutter App'), findsOneWidget);
  });

  testWidgets('Test FloatingActionButton icon', (WidgetTester tester) async {
    // Створення та ініціалізація віджету
    await tester.pumpWidget(MyApp());

    // Перевірка початкової іконки
    expect(find.byIcon(Icons.person), findsOneWidget);

    // Тап по кнопці для зміни іконки
    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump();

    // Перевірка зміни іконки на Icons.mouse
    expect(find.byIcon(Icons.mouse), findsOneWidget);
  });

  testWidgets('Test counter step', (WidgetTester tester) async {
    // Створення та ініціалізація віджету
    await tester.pumpWidget(MyApp());

    // Перевірка початкового значення лічильника
    expect(find.text('Current value of y for x = 1:'), findsOneWidget);

    // Тап по кнопці для зміни лічильника
    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump();

    // Перевірка зміни лічильника на 2
    expect(find.text('Current value of y for x = 2:'), findsOneWidget);
  });
}
