import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController firstController = TextEditingController();
  final TextEditingController secondController = TextEditingController();
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        color: const Color.fromRGBO(250, 222, 20, 50),
        child: Column(
          children: [
            const SizedBox(
              height:10
              ),
            TextField(
              controller: firstController,
              decoration: const InputDecoration(border: OutlineInputBorder(),
              hintText: 'First Number'
              ),keyboardType: TextInputType.number
            ),
             TextField(
              controller: secondController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: 'Second Number'),
                keyboardType: TextInputType.number,
             ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  double a = double.parse(firstController.text);
                  double b = double.parse(secondController.text);
                 
                 setState(() {
                   result = a + b;
                 });

              // Code adds a and b
             },
             child: const Text('Add'),
             ),
              ElevatedButton(onPressed: (){
                double a = double.parse(firstController.text);
                  double b = double.parse(secondController.text);
                 
                 setState(() {
                   result = a - b;
                 });

              // Code subtracts a from b
             },
             child: const Text('Subtract'),
             ),
              ElevatedButton(onPressed: (){
                double a = double.parse(firstController.text);
                  double b = double.parse(secondController.text);
                 
                 setState(() {
                   result = a * b;
                 });

              // Code multiplies a and b
             },
             child: const Text('Multiply'),
             ),
              ElevatedButton(onPressed: (){
                double a = double.parse(firstController.text);
                  double b = double.parse(secondController.text);
                 
                 setState(() {
                   result = a / b;
                 });

              // Code divides a by b
             },
             child: const Text('Divide'),
             ),
              ],
             ),
             const SizedBox(
              height:10
              ),
             Text('Result: $result', style: const 
             TextStyle(
              fontSize: 22,
               fontWeight: FontWeight.bold
               ),
             )
          ],
        ),
      ),
    );
  }
}