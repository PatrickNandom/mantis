import 'package:flutter/material.dart';

class StatCard extends StatelessWidget {
  final String title;
  final String value;
  final String change;
  final Color color;
  final Color smCnColor;
  final String remarkText;
  final IconData? icon;

  const StatCard({
    super.key,
    required this.title,
    required this.value,
    required this.change,
    required this.color,
    required this.smCnColor,
    required this.remarkText,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 4, spreadRadius: 1),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(fontSize: 14, color: Colors.grey)),
          SizedBox(height: 8),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                value,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 8),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: smCnColor,
                  border: Border.all(width: 1, color: color),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Row(
                  children: [
                    Icon(icon ?? Icons.trending_up, color: color, size: 16),
                    SizedBox(width: 4),
                    Text(change, style: TextStyle(color: color, fontSize: 12)),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 8),

          RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: [
                TextSpan(text: 'You made an extra '),
                TextSpan(text: remarkText, style: TextStyle(color: color)),
                TextSpan(text: ' this year'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
