// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List transactions;

  TransactionList(this.transactions, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: transactions.isEmpty
          ? Column(
              children: <Widget>[
                Text(
                  'No transactions added yet.',
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 200,
                  child: Image.asset(
                    'assets/images/waiting.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return Card(
                  elevation: 3,
                  child: Row(
                    children: [
                      Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 25),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Theme.of(context).colorScheme.primary,
                                  width: 2)),
                          padding: EdgeInsets.all(10),
                          child: Text(
                            '\$${transactions[index].amount.toStringAsFixed(2)}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Theme.of(context).colorScheme.primary),
                          )),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            transactions[index].title.toString(),
                            style:
                                // TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                                Theme.of(context).textTheme.headline6,
                          ),
                          Text(
                            DateFormat.yMMMd()
                                .format(transactions[index].date as DateTime),
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
              itemCount: transactions.length,
            ),
    );
  }
}








//////////////// THIS IS THE PART WITH LISTVIEW CHILDREN METHOD. ////////////////


// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// class TransactionList extends StatelessWidget {
//   final List transactions;

//   TransactionList(this.transactions, {Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 400,
//       child: ListView(
//         children: transactions.map((tx) {
//           return Card(
//             elevation: 3,
//             child: Row(
//               children: [
//                 Container(
//                     margin: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         border: Border.all(color: Colors.purple, width: 2)),
//                     padding: EdgeInsets.all(10),
//                     child: Text(
//                       '\$${tx.amount}',
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 20,
//                           color: Colors.purple),
//                     )),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       tx.title.toString(),
//                       style:
//                           TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//                     ),
//                     Text(
//                       DateFormat.yMMMd().format(tx.date as DateTime),
//                       style: TextStyle(color: Colors.grey, fontSize: 12),
//                     )
//                   ],
//                 )
//               ],
//             ),
//           );
//         }).toList(),
//       ),
//     );
//   }
// }
