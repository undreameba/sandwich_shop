import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Sandwich Shop App',
        home: Scaffold(
            appBar: AppBar(title: const Text('Sandwich Counter')),
            body: Row(children: [
              Container(
                color: Colors.blue,
                alignment: Alignment.center,
                padding: EdgeInsets.all(20),
                width: 400,
                height: 300,
                child: OrderItemDisplay(5, 'Reuben'),
              ),
              Container(
                color: Colors.blue,
                alignment: Alignment.center,
                padding: EdgeInsets.all(20),
                width: 400,
                height: 300,
                child: OrderItemDisplay(5, 'Reuben'),
              ),
              Container(
                color: Colors.blue,
                alignment: Alignment.center,
                padding: EdgeInsets.all(20),
                width: 400,
                height: 300,
                child: OrderItemDisplay(5, 'Reuben'),
              )
            ])));
  }
}

class OrderItemDisplay extends StatelessWidget {
  final String itemType;
  final int quantity;

  const OrderItemDisplay(this.quantity, this.itemType, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text('$quantity $itemType sandwich(es): ${'🥪' * quantity}');
  }
}
