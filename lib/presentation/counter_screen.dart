import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/counter_view_model.dart';

class CounterScreen extends ConsumerWidget{
  const CounterScreen({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref){
    debugPrint("Widget rebuild");
    return Scaffold(
      body: Center(
        child: CounterText()   ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        spacing: 12,
        children: [
          FloatingActionButton(
            child: Icon(Icons.add),
              onPressed: () {
              ref.read(counterViewModelProvider.notifier).increment();
          }),
          FloatingActionButton(
              child: Icon(Icons.remove),
              onPressed: () {
                ref.read(counterViewModelProvider.notifier).decrement();
              })
        ],
      ),
    );
  }
}


class CounterText extends ConsumerWidget{
  const CounterText({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref){
    final count = ref.watch(counterViewModelProvider);
    return Text(
      '$count',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 33),
    );
  }
}