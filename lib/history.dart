import 'package:flutter/material.dart';

import 'base.dart';
class ShowHistory extends StatefulWidget {
  const ShowHistory({super.key});

  @override
  State<ShowHistory> createState() => _ShowHistoryState();
}

class _ShowHistoryState extends State<ShowHistory> {
  List<String> list1 = [];
  Future<void> fetchExpenses() async {
    final dbHelper = DatabaseHelper();
    final expenses = await dbHelper.getExpenses();

    for (var expense in expenses) {
      list1.add('ID: ${expense['id']}, Category: ${expense['category']}, Remark: ${expense['remark']}, Amount: ${expense['amount']}');
      // print(
      //     'ID: ${expense['id']}, Category: ${expense['category']}, Remark: ${expense['remark']}, Amount: ${expense['amount']}');
    }
    setState(() {
    });
  }
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchExpenses();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView.builder(
          itemCount: list1.length,
          itemBuilder: (c,i){
        return ListTile(
          title: Text(list1[i],style:TextStyle(color: Colors.black38)),
          // subtitle: Text("data"),

        );
      }),
    );
  }
}
