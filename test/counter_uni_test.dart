import 'package:flutter_clean_architecture_app/domain/counter_view_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){

  late CounterViewModel counterViewModel;
  
  setUp((){
    counterViewModel = CounterViewModel();
  });

  test('Initial value should be zero', (){
    expect(counterViewModel.state, 0);
  });
  
  test('Increment should increase count', (){
    counterViewModel.increment();
    expect(counterViewModel.state, 1);
  });

  test("Decrement should decrease count", (){
    counterViewModel.decrement();
    expect(counterViewModel.state, -1);
  });

  test('multiple Operations', (){
    counterViewModel.increment();
    counterViewModel.increment();
    counterViewModel.decrement();

    expect(counterViewModel.state, 1);
  });
}