import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  Widget build(BuildContext context) {
    return Container(
      height: 700,
      child: transactions.isEmpty
          ? Column(
              children: <Widget>[
                Text("No transactions yet!!!"),
                SizedBox(height: 30,),
                Container(
                  height: 300,
                child: Image.asset('assets/images/waiting.png')
                ),
              ],
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return Card(
                    child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "\$${transactions[index].amount.toStringAsFixed(2)}",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      padding: EdgeInsets.all(10),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          transactions[index].title,
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          DateFormat.yMMMd().format(transactions[index].date),
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        )
                      ],
                    )
                  ],
                ));
              },
              itemCount: transactions.length,
            ),
    );
  }
}
