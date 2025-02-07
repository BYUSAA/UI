import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  final String company;
  final String location;
  final String position;
  final String salary;
  final String logo;
  final Color logoColor;

  const JobCard({
    required this.company,
    required this.location,
    required this.position,
    required this.salary,
    required this.logo,
    required this.logoColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: logoColor,
                child: Text(
                  logo,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              const Icon(Icons.bookmark_border),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            company,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            location,
            style: TextStyle(color: Colors.grey[600], fontSize: 14),
          ),
          const SizedBox(height: 16),
          Text(
            position,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Row(
            children: const [
              Text('Senior'),
              SizedBox(width: 8),
              Text('•'),
              SizedBox(width: 8),
              Text('Fulltime'),
              SizedBox(width: 8),
              Text('•'),
              SizedBox(width: 8),
              Text('Remote'),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                salary,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const Icon(Icons.bookmark_border),
            ],
          ),
        ],
      ),
    );
  }
}
