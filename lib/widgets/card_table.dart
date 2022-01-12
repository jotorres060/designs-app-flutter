import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {

  const CardTable({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.view_column_outlined,
              title: 'General',
              color: Colors.blue,
            ),
            _SingleCard(
              icon: Icons.car_rental_outlined,
              title: 'Transport',
              color: Colors.purple,
            ),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.shopping_bag_outlined,
              title: 'Shopping',
              color: Colors.pinkAccent,
            ),
            _SingleCard(
              icon: Icons.payments_outlined,
              title: 'Bill',
              color: Colors.orange,
            ),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.movie_outlined,
              title: 'Entertainment',
              color: Colors.indigo,
            ),
            _SingleCard(
              icon: Icons.food_bank_outlined,
              title: 'Grocery',
              color: Colors.green,
            ),
          ]
        ),
      ],
    );
  }

}

class _SingleCard extends StatelessWidget {

  final IconData icon;
  final String title;
  final Color color;

  const _SingleCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _SingleCardBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            child: Icon(icon, color: Colors.white, size: 45),
            radius: 30,
          ),
          const SizedBox(height: 10),
          Text(title, style: TextStyle(color: color, fontSize: 18)),
        ],
      )
    );
  }

}

class _SingleCardBackground extends StatelessWidget {

  final Widget child;

  const _SingleCardBackground({
    Key? key,
    required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20)
            ),
            height: 180,
            child: child,
          ),
        ),
      ),
    );
  }

}
