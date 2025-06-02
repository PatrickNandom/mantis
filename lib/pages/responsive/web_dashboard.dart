import 'package:flutter/material.dart';
import 'package:mantis/widgets/footer.dart';
import 'package:mantis/widgets/sidebar.dart';
import 'package:mantis/widgets/start_card.dart';
import 'package:mantis/widgets/topbar.dart';

class WebDashBoard extends StatelessWidget {
  const WebDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Row(
        children: [
          // Sidebar
          Sidebar(),

          // Main content area
          Expanded(
            child: Column(
              children: [
                // Top bar
                Topbar(),

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

      bottomNavigationBar: Footer(),
    );
  }

  // Sidebar menu item
}
