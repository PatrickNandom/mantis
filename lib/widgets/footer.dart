import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          'Copyright © SohClick Technology Ltd',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),

        Row(
          children: [
            InkWell(
              onTap: () {},
              child: Text(
                'Home',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(width: 10),

            InkWell(
              onTap: () {},
              child: Text(
                'Privacy Policy',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(width: 10),
            InkWell(
              onTap: () {},
              child: Text(
                'Contact us',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
