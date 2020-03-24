import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: "Title"),
            controller: titleController,
          ),
          TextField(
            decoration: InputDecoration(labelText: "Amount"),
            controller: amountController,
          ),
          FlatButton(
            child: Text("Add transaction"),
            textColor: Colors.purple,
            onPressed: () {
              addTx(titleController.text, double.parse(amountController.text));
            },
          )
        ],
      ),
    );
  }
}