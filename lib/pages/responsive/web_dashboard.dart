import 'package:flutter/material.dart';
import 'package:mantis/widgets/start_card.dart';

class WebDashBoard extends StatelessWidget {
  const WebDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Row(
        children: [
          // Sidebar
          Container(
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
                _buildMenuItem(Icons.access_time, 'Default'),

                ListTile(
                  title: Text(
                    'Farm Management',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                _buildMenuItem(Icons.people, 'Customers'),
                _buildMenuItem(Icons.attach_money, 'Income'),
                _buildMenuItem(Icons.language_sharp, 'Expenses'),
                ListTile(
                  title: Text('Reports', style: TextStyle(fontSize: 18)),
                ),
                _buildMenuItem(Icons.settings, 'Sales Expenses'),
                ListTile(
                  title: Text('Uploads', style: TextStyle(fontSize: 18)),
                ),
                _buildMenuItem(Icons.settings, 'Upload Expenses'),
                _buildMenuItem(Icons.settings, 'Upload Income'),
              ],
            ),
          ),

          // Main content area
          Expanded(
            child: Column(
              children: [
                // Top bar
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      bottom: BorderSide(width: 1, color: Colors.grey),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/appbar_left_icon.png'),
                          SizedBox(width: 12),
                          SizedBox(
                            height: 30,
                            width: 200,
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 5,
                                  horizontal: 5,
                                ),
                                hintText: 'Ctrl + K',
                                prefixIcon: Icon(
                                  Icons.search,
                                  size: 20,
                                  color: Colors.grey,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset('assets/github_icon.png'),
                          SizedBox(width: 10),
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Icon(
                                Icons.notifications_outlined,
                                size: 28,
                                color: Colors.black,
                              ),
                              Positioned(
                                right: -2,
                                top: -8,
                                child: Container(
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                  ),

                                  child: Center(
                                    child: Text(
                                      '3',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 182, 218, 247),
                              shape: BoxShape.circle,
                            ),

                            child: Center(child: Icon(Icons.person, size: 20)),
                          ),

                          SizedBox(width: 10),
                          Text(
                            'John Doe',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                    ],
                  ),
                ),

                // Main content
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Stats Cards
                          SizedBox(
                            width: double.infinity,
                            child: Wrap(
                              alignment: WrapAlignment.spaceBetween,
                              spacing: 30,
                              runSpacing: 30,
                              children: [
                                StatCard(
                                  title: 'Total Amount',
                                  value: '₦442,236',
                                  change: '59.3%',
                                  color: Colors.blue,
                                  smCnColor: Color(0xFFCBE6FB),
                                  remarkText: '₦35,000',
                                ),
                                StatCard(
                                  title: 'Total Customers',
                                  value: '₦78,250',
                                  change: '70.5%',
                                  color: Colors.blue,
                                  smCnColor: Color(0xFFCBE6FB),
                                  remarkText: '8,900',
                                ),
                                StatCard(
                                  title: 'Total KG',
                                  value: '₦18,800',
                                  change: '-27.4%',
                                  color: Colors.orange,
                                  smCnColor: Color(0xFFF3EDE6),
                                  remarkText: '1,943',
                                ),
                                StatCard(
                                  title: 'Total Sales',
                                  value: '₦35,078',
                                  change: '-27.4%',
                                  color: Colors.orange,
                                  smCnColor: Color(0xFFF3EDE6),
                                  remarkText: '20,395',
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 24),

                          Text(
                            'Recent Sales',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(height: 8),

                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 4,
                                  spreadRadius: 1,
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                // Header row
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 8,
                                  ),
                                  child: Row(
                                    children: const [
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          'Customer',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          'Kit No',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          'No of KG',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          'Price per KG',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          'Total Amount',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          'Date',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Divider(),
                                SizedBox(
                                  height: 400,
                                  child: ListView.separated(
                                    itemCount: 12,
                                    separatorBuilder: (_, _) => const Divider(),
                                    itemBuilder: (context, index) {
                                      return Row(
                                        children: const [
                                          Expanded(
                                            flex: 2,
                                            child: Text('Hassan'),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Text('K-001'),
                                          ),
                                          Expanded(flex: 1, child: Text('5')),
                                          Expanded(
                                            flex: 2,
                                            child: Text('₦6,000.00'),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Text('₦30,000.00'),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Text('Apr 22, 2025'),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      bottomNavigationBar: Row(
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
      ),
    );
  }

  // Sidebar menu item
  Widget _buildMenuItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, size: 18),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      onTap: () {},
    );
  }
}
