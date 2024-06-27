import 'package:flutter/material.dart';

class CreateMealPage extends StatefulWidget {
  const CreateMealPage({super.key});

  @override
  State<CreateMealPage> createState() => _CreateMealPageState();
}

class _CreateMealPageState extends State<CreateMealPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => {Navigator.pop(context)},
        ),
      ),
      body: const Center(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
