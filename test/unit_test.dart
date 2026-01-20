import 'package:flutter_clean_architecture_app/domain/login_viewmodel.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  final vm = LoginViewModel();
  test('Valid Login input', (){
    final result = vm.isValid('test@gmail.com', "123456");
    expect(result, true);
  });
  test('invalid email input', (){
    final result = vm.isValid("test.gmail.com", "123456");
    expect(result, false);
  });
  test('Invalid password input', (){
    final result = vm.isValid("test@gmail.com", '12345');
    expect(result, false);
  });
}