import 'package:flutter/material.dart';
import 'package:portfolio_2/achievements.dart';
import 'package:portfolio_2/education.dart';
import 'package:portfolio_2/projects.dart';
import 'package:portfolio_2/services.dart';
import 'package:portfolio_2/skills.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Dheeraj Sahu'),
            accountEmail: const Text('dheerajjaitpura@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'images/profile.jpg',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.teal,
            ),
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: const Text('Skills'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Skills()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.build),
            title: const Text('Projects'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Projects()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.description),
            title: const Text('Resume'),
            onTap: () {
              // Handle resume onTap
            },
          ),
          ListTile(
            leading: const Icon(Icons.school),
            title: const Text('Education'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Education()),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.work),
            title: const Text('Services'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Services()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.emoji_events),
            title: const Text('Achievements'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Achievements()),
              );
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Exit'),
            leading: const Icon(Icons.exit_to_app),
            onTap: () {
              // Handle exit onTap
            },
          ),
        ],
      ),
    );
  }
}
