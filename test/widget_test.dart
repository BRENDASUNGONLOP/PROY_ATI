import 'package:flutter_test/flutter_test.dart';

import 'package:proy_ati/app.dart';

void main() {
  testWidgets('La app inicia en la vista de estudiante', (WidgetTester tester) async {
    await tester.pumpWidget(const ATILocalApp());

    expect(find.text('ATI | Agente Tutor Inteligente'), findsOneWidget);
    expect(find.text('Rol: Estudiante'), findsOneWidget);
    expect(find.text('Mi progreso'), findsOneWidget);
  });
}
