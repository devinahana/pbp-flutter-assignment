import 'package:flutter/material.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/model/budget.dart';
import 'package:counter_7/drawer.dart';

class MyBudget extends StatefulWidget {
  var myBudget = DataBudget.data;
  MyBudget({super.key});

  @override
  State<MyBudget> createState() => _MyBudgetState();
}

class _MyBudgetState extends State<MyBudget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Budget"),
      ),
      drawer: MyDrawer(),
      body: Column(
        children: [
          if (widget.myBudget == null || widget.myBudget.length == 0)
            const Center(
              child: Text("Data Kosong"),
            )
          else
            Expanded(
              child: ListView.builder(
                itemCount: widget.myBudget.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                        title: Text(widget.myBudget[index].judul),
                        subtitle: Text(widget.myBudget[index].nominal.toString()), 
                        trailing: Column(
                          children: [
                            Text(widget.myBudget[index].jenis),
                            Text(widget.myBudget[index].tanggal),
                          ],
                        )),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}