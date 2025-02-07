import 'package:app/screens/job_screen.dart';
import 'package:flutter/material.dart';


class RecentJobCard extends StatelessWidget {
  final BuildContext context;
  final String company;
  final String position;
  final String salary;
  final String time;

  const RecentJobCard({
    required this.context,
    required this.company,
    required this.position,
    required this.salary,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const JobDetailScreen()),
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            const CircleAvatar(
              radius: 30,
              child: FlutterLogo(),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    company,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    position,
                    style: const TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Text(
                  salary,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  time,
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
