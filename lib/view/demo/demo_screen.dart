import 'package:flutter/material.dart';
import 'package:project_1/controller/provider/demo2_provider.dart';
import 'package:project_1/controller/provider/demo_provider.dart';
import 'package:provider/provider.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    // print(count);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // context.read<DemoProvider>().  
          Provider.of<DemoProvider>(context, listen: false).addCount();
          Provider.of<Demo2Provider>(context, listen: false).addCount();
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(title: const Text("Demo Screen")),
      body: Center(
        child: Consumer2<DemoProvider, Demo2Provider>(
          builder: (context, prod, prod2, _) {
            return Text(
              "${prod.count}/${prod2.counter}",
              style: TextStyle(fontSize: 200),
            );
          },
        ),
      ),
    );
  }
}
