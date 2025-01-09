import 'package:flutter/material.dart';

class DriverReport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          _buildSummaryCard(
            title: 'Top Driver',
            value: 'John Doe',
            description: 'Eco-Score: 92%',
            color: Colors.orange,
            icon: Icons.person,
          ),
          SizedBox(height: 16),
          _buildSummaryCard(
            title: 'Total Incentives',
            value: '₹5,200',
            description: 'Earned by drivers',
            color: Colors.purple,
            icon: Icons.star,
          ),
          SizedBox(height: 16),
          _buildDriverLeaderboard(),
        ],
      ),
    );
  }

  Widget _buildSummaryCard({
    required String title,
    required String value,
    required String description,
    required Color color,
    required IconData icon,
  }) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: color,
              child: Icon(icon, color: Colors.white),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    value,
                    style: TextStyle(fontSize: 20, color: color, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    description,
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDriverLeaderboard() {
    final List<Map<String, String>> drivers = [
      {
        'name': 'John Doe',
        'profileImage': 'assets/images/driver1.png',
        'score': 'Eco-Score: 92%',
        'vehicleType': 'Electric Car',
        'vehicleNo': 'TN 01 AB 1234',
      },
      {
        'name': 'Jane Smith',
        'profileImage': 'assets/images/driver2.png',
        'score': 'Eco-Score: 89%',
        'vehicleType': 'Hybrid Car',
        'vehicleNo': 'KA 05 CD 2345',
      },
      {
        'name': 'Michael Lee',
        'profileImage': 'assets/images/driver3.png',
        'score': 'Eco-Score: 85%',
        'vehicleType': 'Electric Bike',
        'vehicleNo': 'MH 12 EF 3456',
      },
      {
        'name': 'Alice Johnson',
        'profileImage': 'assets/images/driver4.png',
        'score': 'Eco-Score: 83%',
        'vehicleType': 'Gasoline Car',
        'vehicleNo': 'DL 08 GH 4567',
      },
      {
        'name': 'Chris Brown',
        'profileImage': 'assets/images/driver5.png',
        'score': 'Eco-Score: 80%',
        'vehicleType': 'Electric Car',
        'vehicleNo': 'UP 14 IJ 5678',
      },
    ];

    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Driver Leaderboard",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            for (var driver in drivers)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start, // Align the content to the start
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(driver['profileImage']!),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Row for driver name and "View Profile" button
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                driver['name']!,
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              TextButton(
                                onPressed: () {
                                  // Action for "View Profile" button
                                },
                                child: Text(
                                  "Profile",
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 4),
                          // Eco-Score, Vehicle Type, and Vehicle No. as rows
                          Text(
                            driver['score']!,
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Vehicle: ${driver['vehicleType']!}",
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Vehicle No: ${driver['vehicleNo']!}",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
