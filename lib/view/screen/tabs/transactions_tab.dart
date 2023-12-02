import 'package:flutter/material.dart';

class TransactionsTab extends StatefulWidget {
  const TransactionsTab({super.key});

  @override
  State<TransactionsTab> createState() => _TransactionsTabState();
}

class _TransactionsTabState extends State<TransactionsTab> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Transactions "),
    );
  }
}
