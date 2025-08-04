import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tickets UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const TicketScreen(),
    );
  }
}

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "Tickets",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.add_circle_outline),
          ),
        ],
      ),

      body: Column(
        children: [
          // Search + Filter
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.grey[400]),
                      prefixIcon: const Icon(Icons.search),
                      filled: true,
                      fillColor: Colors.grey[900],
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Icon(LucideIcons.menu, color: Colors.white),
                const SizedBox(width: 10),
                Icon(Icons.sort, color: Colors.white),
              ],
            ),
          ),

          // Tickets List
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 4),
              children: const [
                TicketTile(
                  ticketId: '725',
                  title: 'Elevator Communication Error',
                  location: 'Chillicothe Carpet',
                  priority: 'Urgent',
                  status: 'Open',
                  time: '19 hours ago',
                  assignees: ['A', 'B'],
                  icon: Icons.settings,
                ),
                TicketTile(
                  ticketId: '4603',
                  title: 'Routine Lightbulb Changes - Near Exit',
                  location: 'Clean and Go',
                  priority: 'Low',
                  status: 'Open',
                  time: '19 hours ago',
                  assignees: ['C'],
                  icon: Icons.lightbulb,
                  assignmentStatus: 'Not Assigned',
                ),
                TicketTile(
                  ticketId: '544',
                  title: 'Spots on the floor',
                  location: 'Buckeye State Bank',
                  priority: 'Medium',
                  status: 'Open',
                  time: '19 hours ago',
                  assignees: ['D', 'E'],
                  icon: Icons.warning_amber,
                ),
                TicketTile(
                  ticketId: '75451',
                  title: 'Ant Traps Set - Building Perimeter',
                  location: 'Petland',
                  priority: 'High',
                  status: 'Open',
                  time: '19 hours ago',
                  assignees: ['A', 'F'],
                  icon: Icons.bug_report,
                ),
                TicketTile(
                  ticketId: '802',
                  title: 'Chewing Gum on Wall',
                  location: 'Petland',
                  priority: 'Low',
                  status: 'Closed',
                  time: '19 hours ago',
                  assignees: [],
                  icon: Icons.cleaning_services,
                ),
              ],
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
  backgroundColor: Colors.black,
  selectedItemColor: Colors.white,
  unselectedItemColor: Colors.grey,
  currentIndex: 0,
  onTap: (index) {}, // handle navigation here
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
          Icon(Icons.question_answer_rounded),
          Positioned(
            right: -2,
            top: -2,
            child: NotificationBadge(count: 4), // 🛑 badge here
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

class TicketTile extends StatelessWidget {
  final String ticketId;
  final String title;
  final String location;
  final String priority;
  final String status;
  final String time;
  final List<String> assignees;
  final IconData icon;
  final String? assignmentStatus;

  const TicketTile({
    super.key,
    required this.ticketId,
    required this.title,
    required this.location,
    required this.priority,
    required this.status,
    required this.time,
    required this.assignees,
    required this.icon,
    this.assignmentStatus,
  });

  Color getPriorityColor(String priority) {
    switch (priority.toLowerCase()) {
      case 'urgent':
        return const Color(0xFFB8251A);
      case 'high':
        return const Color(0xFFB26D19);
      case 'medium':
        return const Color(0xFF1C3344);
      case 'low':
        return const Color(0xFF1A331A);
      default:
        return Colors.grey[700]!;
    }
  }

  Color getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'open':
        return const Color(0xFF5A1F1C);
      case 'closed':
        return const Color(0xFF2C2C2C);
      default:
        return Colors.grey[700]!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900],
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Row
            Row(
              children: [
                Icon(icon, size: 20, color: Colors.white),
                const SizedBox(width: 8),
                Text(
                  ticketId,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
                const Spacer(),
                if (assignmentStatus != null)
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      assignmentStatus!,
                      style: const TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  ),
                const SizedBox(width: 6),
                Chip(
                  label: Text(priority),
                  backgroundColor: getPriorityColor(priority),
                  labelStyle: const TextStyle(color: Colors.white, fontSize: 12),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                ),
                const SizedBox(width: 6),
                Chip(
                  label: Text(status),
                  backgroundColor: getStatusColor(status),
                  labelStyle: const TextStyle(color: Colors.white, fontSize: 12),
                  shape: const StadiumBorder(),
                ),
              ],
            ),

            const SizedBox(height: 6),
            Text(
              title,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 4),
            Text(
              location,
              style: const TextStyle(fontSize: 13, color: Colors.grey),
            ),
            const SizedBox(height: 12),

            // Bottom Row
            Row(
              children: [
                Text(time, style: const TextStyle(fontSize: 12, color: Colors.grey)),
                const Spacer(),
                Row(
                  children: assignees.map((e) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.white,
                        child: Text(
                          e,
                          style: const TextStyle(fontSize: 12, color: Colors.black),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ],
        ),
      ),
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

