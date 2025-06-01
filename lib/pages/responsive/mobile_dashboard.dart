import 'package:flutter/material.dart';

class MobileDashboard extends StatefulWidget {
  const MobileDashboard({super.key});

  @override
  State<MobileDashboard> createState() => _MobileDashboardState();
}

class _MobileDashboardState extends State<MobileDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,

        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  height: 30,
                  width: 150,
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
                        borderSide: BorderSide(width: 1, color: Colors.grey),
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
              ],
            ),
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.zero,
            bottomRight: Radius.zero,
          ),
        ),
        child: Column(
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
              title: Text('Farm Management', style: TextStyle(fontSize: 18)),
            ),
            _buildMenuItem(Icons.people, 'Customers'),
            _buildMenuItem(Icons.attach_money, 'Income'),
            _buildMenuItem(Icons.language_sharp, 'Expenses'),
            ListTile(title: Text('Reports', style: TextStyle(fontSize: 18))),
            _buildMenuItem(Icons.settings, 'Sales Expenses'),
            ListTile(title: Text('Uploads', style: TextStyle(fontSize: 18))),
            _buildMenuItem(Icons.settings, 'Upload Expenses'),
            _buildMenuItem(Icons.settings, 'Upload Income'),
          ],
        ),
      ),

      body: // Main content
          Expanded(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 24),

                Text(
                  'Recent Sales',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Row(
                          children: const [
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Customer',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Kit No',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                'No of KG',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Price per KG',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Total Amount',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Date',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      SizedBox(
                        height: 800,
                        child: ListView.separated(
                          itemCount: 22,
                          separatorBuilder: (_, _) => const Divider(),
                          itemBuilder: (context, index) {
                            return Row(
                              children: const [
                                Expanded(flex: 2, child: Text('Hassan')),
                                Expanded(flex: 2, child: Text('K-001')),
                                Expanded(flex: 1, child: Text('5')),
                                Expanded(flex: 2, child: Text('₦6,000.00')),
                                Expanded(flex: 2, child: Text('₦30,000.00')),
                                Expanded(flex: 2, child: Text('Apr 22, 2025')),
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
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          alignment: WrapAlignment.spaceAround,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 10,
          runSpacing: 8,
          children: [
            Text(
              'Copyright © SohClick Technology Ltd',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Wrap(
              spacing: 10,
              children: [
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Home',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Privacy Policy',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
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
