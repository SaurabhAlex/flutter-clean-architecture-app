import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture_app/presentation/login_screen.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  
  testWidgets("Login Screen Widget Test", (tester) async{

    //load UI into test environment
    await tester.pumpWidget(MaterialApp(home: LoginScreen()));
    // verify two text fields are exists
    expect(find.byType(TextField), findsNWidgets(2));

    expect(find.text('Login'), findsOneWidget);

    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();
  });
}