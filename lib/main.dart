import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Import url_launcher package
import 'package:portfolio_2/sidebar.dart';
import 'package:url_launcher/url_launcher_string.dart'; // Import the sidebar file

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 10.0),
                  CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.15,
                    backgroundColor: Colors.red,
                    backgroundImage: AssetImage('images/profile.jpg'),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Dheeraj Sahu',
                    style: TextStyle(
                      fontSize: 40,
                      fontFamily: 'Pacifico',
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'FLUTTER DEVELOPER',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'SourceSans3',
                      color: Colors.teal.shade100,
                      letterSpacing: 1.5,
                    ),
                  ),
                  Divider(
                    color: Colors.teal.shade100,
                    thickness: 2.0,
                    indent: 20.0,
                    endIndent: 20.0,
                  ),
                  Card(
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'About Me',
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.05,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 30.0),
                          Text(
                            'Final year student proficient in Java and Flutter development, enthusiastic about learning and innovation. Experienced Flutter developer known for delivering high-quality mobile applications. Quick learner with strong problem-solving skills and a passion for technology. Seeking opportunities to apply expertise in Java and Flutter to contribute to meaningful projects. Dedicated team player committed to meeting project goals and deadlines. Eager to collaborate with like-minded professionals and drive project success.',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Ojuju',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 30.0),
                          Text(
                            'Main Skills',
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.05,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                'images/java.png',
                                width: MediaQuery.of(context).size.width * 0.1,
                                height: MediaQuery.of(context).size.width * 0.1,
                              ),
                              Image.asset(
                                'images/flutter.png',
                                width: MediaQuery.of(context).size.width * 0.1,
                                height: MediaQuery.of(context).size.width * 0.1,
                              ),
                              Image.asset(
                                'images/mysql.png',
                                width: MediaQuery.of(context).size.width * 0.1,
                                height: MediaQuery.of(context).size.width * 0.1,
                              ),
                            ],
                          ),
                          SizedBox(height: 30),
                          Text(
                            'Visit me',
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.05,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 20.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  _launchURL(
                                      'https://www.linkedin.com/in/dheeraj-sahu-149302210/'); // Replace with your LinkedIn profile URL
                                },
                                child: Image.asset(
                                  'images/linkedin.png',
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                  height:
                                      MediaQuery.of(context).size.width * 0.1,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  _launchURL(
                                      'https://github.com/Dheeraj0688'); // Replace with your GitHub profile URL
                                },
                                child: Image.asset(
                                  'images/github.png',
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                  height:
                                      MediaQuery.of(context).size.width * 0.1,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  _launchURL(
                                      'https://www.instagram.com/its__dheeraj__here/'); // Replace with your Instagram profile URL
                                },
                                child: Image.asset(
                                  'images/instagram.png',
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                  height:
                                      MediaQuery.of(context).size.width * 0.1,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () {
                  _scaffoldKey.currentState!.openDrawer();
                },
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: IconButton(
                icon: const Icon(
                  Icons.download,
                  color: Colors.white,
                ),
                onPressed: () {
                  // Add download functionality here
                },
              ),
            ),
          ],
        ),
      ),
      drawer: const NavBar(), // Use the sidebar widget here
    );
  }

  void _launchURL(String url) async {
    if (await canLaunchUrlString(url) == true) {
      await launchUrl(url as Uri);
    } else {
      throw 'Could not launch $url';
    }
  }
}
