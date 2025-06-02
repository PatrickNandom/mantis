import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(right: BorderSide(width: 1, color: Colors.grey)),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset('assets/logo.png', height: 40, width: 40),
                    SizedBox(width: 8),
                    Text(
                      'Mantis',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                Text('Dashboard'),
              ],
            ),
          ),
          _buildMenuItem(Icons.access_time, 'Default', () {}),

          ListTile(
            title: Text('Farm Management', style: TextStyle(fontSize: 18)),
          ),
          _buildMenuItem(Icons.people, 'Customers', () {}),
          _buildMenuItem(Icons.attach_money, 'Income', () {}),
          _buildMenuItem(Icons.language_sharp, 'Expenses', () {}),
          ListTile(title: Text('Reports', style: TextStyle(fontSize: 18))),
          _buildMenuItem(Icons.settings, 'Sales Expenses', () {}),
          ListTile(title: Text('Uploads', style: TextStyle(fontSize: 18))),
          _buildMenuItem(Icons.settings, 'Upload Expenses', () {}),
          _buildMenuItem(Icons.settings, 'Upload Income', () {}),
        ],
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String title, Function()? tap) {
    return ListTile(
      leading: Icon(icon, size: 18),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      onTap: tap,
    );
  }
}
