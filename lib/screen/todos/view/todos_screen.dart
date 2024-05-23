import 'package:flutter/material.dart';
import 'package:jason_practice/screen/todos/provider/todos_provider.dart';
import 'package:provider/provider.dart';

class TodosScreen extends StatefulWidget {
  const TodosScreen({super.key});

  @override
  State<TodosScreen> createState() => _TodosScreenState();
}

class _TodosScreenState extends State<TodosScreen> {
  TodosProvider? providerR;
  TodosProvider? providerW;

  @override
  void initState() {
    super.initState();

    context.read<TodosProvider>().getTodosData();
  }

  @override
  Widget build(BuildContext context) {
    providerW = context.watch<TodosProvider>();
    providerR = context.read<TodosProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todos Json"),
      ),
      body: ListView.builder(
        itemCount: providerW!.todosJsonList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("${providerW!.todosJsonList[index].title}"),
          );
        },
      ),
    );
  }
}
