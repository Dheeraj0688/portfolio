import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  // List of skills with their corresponding images
  final List<Map<String, dynamic>> skills = [
    {'name': 'Flutter', 'image': 'images/flutter.png'},
    {'name': 'Java', 'image': 'images/java.png'},
    {'name': 'MySQL', 'image': 'images/mysql.png'},
    {'name': 'Dart', 'image': 'images/dart.png'},
    {'name': 'Android', 'image': 'images/android.png'},
    {'name': 'IOS', 'image': 'images/ios.png'},
    {'name': 'Studio', 'image': 'images/androidstudio.png'},
    {'name': 'Firebase', 'image': 'images/firebase.png'},
    {'name': 'VS Code', 'image': 'images/vscode.png'},
    {'name': 'GiuHub', 'image': 'images/github.png'},
  ];

  Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'Skills',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GridView.builder(
        itemCount: skills.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Two skills in one row
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemBuilder: (context, index) {
          return SkillItem(
            skillName: skills[index]['name'],
            skillImage: skills[index]['image'],
          );
        },
      ),
    );
  }
}

class SkillItem extends StatelessWidget {
  final String skillName;
  final String skillImage;

  const SkillItem({
    super.key,
    required this.skillName,
    required this.skillImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              skillImage,
              width: 50.0,
              height: 50.0,
            ),
            const SizedBox(height: 10.0),
            Text(
              skillName,
              style: const TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
