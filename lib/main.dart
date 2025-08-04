import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'screens/tickets.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
    backgroundColor: Colors.black,
    foregroundColor: Colors.white,
    leading: Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Icon(Icons.mode_night),
      ),
    title: Text('RESOLVEDX'),
    centerTitle: true,
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Icon(Icons.notifications, size: 28, color: Colors.white),
            Positioned(
              right: 0,
              top: -2,
              child: NotificationBadge(count: 3,),
            ),
          ],
        ),
      ),
    ],
 ),
      //body
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //section 1
            SizedBox(
              height: 260,
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  MenuCard(
                    icon: Icons.qr_code,
                    label: 'Scan QR Code',
                    onTap: () {},
                  ),
                  MenuCard(
                    icon: LucideIcons.ticket,
                    label: 'Tickets',
                    badgeCount: 16,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const TicketScreen()),
                    ),
                  ),
                  MenuCard(
                    icon: LucideIcons.building2,
                    label: 'Properties',
                    badgeCount: 3,
                    onTap: () {},
                  ),
                  MenuCard(
                    icon: LucideIcons.barChart3,
                    label: 'Analytics',
                    onTap: () {},
                  ),
                  MenuCard(
                    icon: LucideIcons.calendarDays,
                    label: 'Calendar',
                    badgeCount: 3,
                    onTap: () {},
                  ),
                  MenuCard(
                    icon: LucideIcons.clipboardCheck,
                    label: 'Inspections',
                    onTap: () {},
                  ),
                ],
              ),
            ),

              //section 2
              MenuTile(icons: LucideIcons.searchCheck, labels: 'Audit'),
              MenuTile(icons: LucideIcons.repeat, labels: 'Loop Vendors'),
              MenuTile(icons: LucideIcons.shieldCheck, labels: 'Safety Forms',badgeCount: 3),
              MenuTile(icons: LucideIcons.alertTriangle, labels: 'Incident Report'),
              MenuTile(icons: LucideIcons.fileText, labels: 'Surveys'),
              MenuTile(icons: LucideIcons.link, labels: 'Linked'),
              MenuTile(icons: LucideIcons.fileClock, labels: 'Logs'),
              MenuTile(icons: LucideIcons.footprints, labels: 'Property Walks'),
              MenuTile(icons: LucideIcons.file, labels: 'Documents'),
              MenuTile(icons: LucideIcons.bookOpenCheck, labels: 'Knowledge Center'),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        onTap: (index) {},
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
         ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search_sharp),
          label: '',
          ),
       BottomNavigationBarItem(
          icon: Stack(
            clipBehavior: Clip.none,
            children: [
              const Icon(Icons.question_answer_rounded, size: 24),
              Positioned(
                right: -4,
                top: -4,
                child: NotificationBadge(count: 4, size: 16),
              ),
            ],
          ),
          label: '',
        ),
       BottomNavigationBarItem(
        icon: Icon(Icons.account_circle_sharp),
        label: '',
        ),
      ],
    ),
    );
  }
}

//menu cards
class MenuCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final int? badgeCount;

  const MenuCard({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
    this.badgeCount,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFF1C1C1E),
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, color: Colors.white, size: 28),
                const SizedBox(height: 12),
                Text(
                  label,
                  style: const TextStyle(color: Colors.white, fontSize: 13),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          if (badgeCount != null && badgeCount! > 0)
            Positioned(
              top: 8,
              right: 8,
              child: NotificationBadge(count: badgeCount),
            ),
        ],
      ),
    );
  }
}

//menu tiles
class MenuTile extends StatelessWidget {
  final IconData icons;
  final String labels;
  final int? badgeCount;

  const MenuTile({
    super.key,
    required this.icons,
    required this.labels,
    this.badgeCount,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 6),
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListTile(
            leading: Icon(icons, color: Colors.white),
            title: Text(labels, style: const TextStyle(color: Colors.white)),
          ),
        ),
        if (badgeCount != null && badgeCount! > 0)
          Positioned(
            right: 12,
            top: 20,
            child: NotificationBadge(count: badgeCount),
          ),
      ],
    );
  }
}


class NotificationBadge extends StatelessWidget {
  final int? count;
  final double size;

  const NotificationBadge({
    super.key,
    this.count,
    this.size = 18,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      constraints: BoxConstraints(
        minWidth: size,
        minHeight: size,
      ),
      decoration: const BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          '$count',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

