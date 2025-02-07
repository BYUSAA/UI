import 'package:flutter/material.dart';

class JobDetailScreen extends StatelessWidget {
  const JobDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Image.network(
                  'https://placeholder.com/800x200',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 40,
                  left: 16,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                const Positioned(
                  bottom: -40,
                  left: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    child: FlutterLogo(size: 40),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            const Center(
              child: Text(
                'Product Designer',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const Center(
              child: Text(
                'California, USA',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(height: 24),
            DefaultTabController(
              length: 4,
              child: Column(
                children: [
                  const TabBar(
                    labelColor: Colors.black,
                    tabs: [
                      Tab(text: 'Description'),
                      Tab(text: 'Company'),
                      Tab(text: 'Aplicant'),
                      Tab(text: 'Salary'),
                    ],
                  ),
                  SizedBox(
                    height: 400,
                    child: TabBarView(
                      children: [
                        _buildDescriptionTab(),
                        const Center(child: Text('Company Info')),
                        const Center(child: Text('Applicant Info')),
                        const Center(child: Text('Salary Info')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            const IconButton(
              icon: Icon(Icons.chat_bubble_outline),
              onPressed: null,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF4169E1),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text(
                  'Apply Now',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDescriptionTab() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Job Responsibilities', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          _buildResponsibilityItem('Deliver a well-crafted design that follows standard for consistency in quality and experience.'),
          _buildResponsibilityItem('Design creative solutions that deliver not only value customer but also solve business objectives.'),
          _buildResponsibilityItem('You are also required to contribute to the design and critics, conceptual discussion, and also maintaining consistency of design system.'),
          const SizedBox(height: 24),
          const Text('Skills Needed', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          const Wrap(
            spacing: 8,
            children: [
              Chip(label: Text('Lead')),
              Chip(label: Text('UX Design')),
              Chip(label: Text('Problem Solving')),
              Chip(label: Text('Critical')),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildResponsibilityItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('• ', style: TextStyle(fontSize: 16)),
          Expanded(
            child: Text(text, style: const TextStyle(fontSize: 14)),
          ),
        ],
      ),
    );
  }
}
