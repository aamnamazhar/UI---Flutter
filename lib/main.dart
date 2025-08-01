import 'package:flutter/material.dart';
import 'screens/tickets.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RESOLVEDX',
      theme: ThemeData.dark(),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.mode_night),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text('RESOLVEDX'),
        actions: [Icon(Icons.notifications)],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //section 1
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      print("Card Clicked");
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey[900],
                      padding: EdgeInsets.all(25),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.qr_code, color: Colors.white, size: 30),
                        SizedBox(height: 8),
                        Text('Scan QR', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                 TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TicketScreen()),
                      );
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey[900],
                      padding: EdgeInsets.all(25),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.confirmation_num, color: Colors.white, size: 30),
                        SizedBox(height: 8),
                        Text('Tickets', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      print("Card Clicked");
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey[900],
                      padding: EdgeInsets.all(25),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.apartment, color: Colors.white, size: 30),
                        SizedBox(height: 8),
                        Text('Properties', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      print("Card Clicked");
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey[900],
                      padding: EdgeInsets.all(25),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.analytics_outlined, color: Colors.white, size: 30),
                        SizedBox(height: 8),
                        Text('Analytics', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      print("Card Clicked");
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey[900],
                      padding: EdgeInsets.all(25),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.calendar_month_sharp, color: Colors.white, size: 30),
                        SizedBox(height: 8),
                        Text('Calendar', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      print("Card Clicked");
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey[900],
                      padding: EdgeInsets.all(25),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.fact_check_outlined, color: Colors.white, size: 30),
                        SizedBox(height: 8),
                        Text('Inspections', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 30),

              //section 2
              Container(
                margin: EdgeInsets.symmetric(vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  leading: Icon(Icons.assignment, color: Colors.white),
                  title: Text('Audit', style: TextStyle(color: Colors.white)),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  leading: Icon(Icons.maps_home_work_sharp, color: Colors.white),
                  title: Text('Loop Vendors', style: TextStyle(color: Colors.white)),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  leading: Icon(Icons.safety_check, color: Colors.white),
                  title: Text('Safety Forms', style: TextStyle(color: Colors.white)),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  leading: Icon(Icons.warning_amber_rounded, color: Colors.white),
                  title: Text('Incident Reports', style: TextStyle(color: Colors.white)),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  leading: Icon(Icons.assignment, color: Colors.white),
                  title: Text('Surveys', style: TextStyle(color: Colors.white)),
                ),
              ),
               Container(
                margin: EdgeInsets.symmetric(vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  leading: Icon(Icons.link_sharp, color: Colors.white),
                  title: Text('Linked', style: TextStyle(color: Colors.white)),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  leading: Icon(Icons.receipt_long, color: Colors.white),
                  title: Text('Logs', style: TextStyle(color: Colors.white)),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  leading: Icon(Icons.directions_walk, color: Colors.white),
                  title: Text('Property Walk', style: TextStyle(color: Colors.white)),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  leading: Icon(Icons.insert_drive_file, color: Colors.white),
                  title: Text('Documents', style: TextStyle(color: Colors.white)),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  leading: Icon(Icons.lightbulb, color: Colors.white),
                  title: Text('Knowledge Center', style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black54,
        selectedItemColor: Colors.white70,
        unselectedItemColor: Colors.white38,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'message'),
          BottomNavigationBarItem(icon: Icon(Icons.person_2), label: 'person'),
        ],
      ),
    );
  }
}

