import 'package:flutter/material.dart';

import 'package:app/widgets/job_card.dart';
import 'package:app/widgets/recent_job_card.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section
            _buildHeaderSection(),
            // Recommendation Section
            _buildRecommendationSection(),
            // Recent Job List
            _buildRecentJobList(context),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildHeaderSection() {
    return Container(
      padding: const EdgeInsets.all(20),
      color: const Color(0xFF4169E1),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Hello',
              style: TextStyle(color: Colors.white, fontSize: 16)),
          SizedBox(height: 8),
          Text('Leslie Alexander',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 16),
          TextField(
            decoration: InputDecoration(
              hintText: 'Search job, company, etc..',
              border: InputBorder.none,
              icon: Icon(Icons.search, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecommendationSection() {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Recomendation',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                JobCard(
                  company: 'Pinterest, Inc.',
                  location: 'California, USA',
                  position: 'Motion Designer',
                  salary: '\$7K/Month',
                  logo: 'P',
                  logoColor: Colors.red,
                ),
                SizedBox(width: 16),
                JobCard(
                  company: 'Facebook',
                  location: 'California, USA',
                  position: 'UI Designer',
                  salary: '\$7K/Month',
                  logo: 'f',
                  logoColor: Colors.blue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecentJobList(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Recent Job List',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          RecentJobCard(
            context: context,
            company: 'Google',
            position: 'Product Designer',
            salary: '\$5K/Month',
            time: '12 Minute Ago',
          ),
        ],
      ),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return  BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.analytics), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ''),
      ],
    );
  }
}
