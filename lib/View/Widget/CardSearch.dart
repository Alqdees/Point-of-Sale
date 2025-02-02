// ignore: must_be_immutable
import 'package:flutter/material.dart';

class CardSearch extends StatelessWidget {
  // const CardViewList({super.key});

  String name, sale;
  VoidCallback onPressed;
  CardSearch(
      {super.key,
      required this.name,
      required this.sale,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: Column(
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    sale,
                    style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 4,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: onPressed,
              icon: const Icon(
                Icons.add,
              ),
            ),
          )
        ],
      ),
    );
  }
}
