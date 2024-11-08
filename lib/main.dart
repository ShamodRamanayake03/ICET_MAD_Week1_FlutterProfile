import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Professional Profile',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Professional Profile"),
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.blueGrey[50],
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        'https://shamodramanayake03.github.io/Portfolio/images/profile.jpg'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Shamod Ramanayake",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Aspiring Software Engineer",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.blueGrey,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "To reach that beautiful dream",
                    style: TextStyle(
                      color: Colors.blueGrey[400],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // About Section
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.blueGrey[50],
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About Me",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Since I was young, I have been fascinated with computers. The colorful world behind the internet captivated me, and I knew that's where I wanted to be.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blueGrey[700],
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Currently, my main focus is on honing my skills in designing and developing web applications while expanding my knowledge in software development.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blueGrey[700],
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "When I'm not at the computer, I enjoy reading, watching movies, playing games, or spending time with my family and two dogs.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blueGrey[700],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Experience Section
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.blueGrey[50],
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Experience",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  ExperienceTile(
                      title: "ICM Program at ICET Institute",
                      date: "2023-Present",
                      description:
                      "Enrolled in the ICM program at the ICET institute to rebuild fundamentals. Learning DBMS, programming fundamentals, HTML, CSS, and JavaScript."),
                  ExperienceTile(
                      title: "BSc(Hons) in Software Engineering at University of Bedfordshire",
                      date: "2021-2022",
                      description:
                      "Gained experience in teamwork, time management, professional documentation, and client communication. Developed a small mobile application independently."),
                  ExperienceTile(
                      title: "Higher Diploma at SLIIT",
                      date: "2018-2021",
                      description:
                      "Learned HTML, CSS, algorithms, C, C++, C#, JavaScript, and Android Studio. Practiced creating desktop and mobile applications."),
                  ExperienceTile(
                      title: "Sri Lanka GCE Advanced Level",
                      date: "2013-2015",
                      description:
                      "Studied IT, focusing on HTML, CSS, algorithms, and programming in Python."),
                  ExperienceTile(
                      title: "Sri Lanka GCE Ordinary Level",
                      date: "2012",
                      description:
                      "Learned visual basic, HTML, CSS, algorithms, and problem-solving at school."),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Projects Section
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.blueGrey[50],
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Projects",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  ProjectTile(
                    title: "Project Defence System",
                    description:
                    "A project to practice OOP concepts like encapsulation, inheritance, polymorphism, and abstraction using Java.",
                    link: "https://github.com/ShamodRamanayake03/DefenceSystemOOP",
                  ),
                  ProjectTile(
                    title: "Project Portfolio",
                    description:
                    "A portfolio website to practice HTML, CSS, JavaScript, and Bootstrap.",
                    link: "https://github.com/ShamodRamanayake03/Portfolio",
                  ),
                  ProjectTile(
                    title: "Project Defence System with APIs",
                    description:
                    "Used HTML, CSS, JS, Bootstrap, and REST Countries API to practice using APIs.",
                    link:
                    "https://github.com/ShamodRamanayake03/07-07-2024-deployCountries",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Custom widget for Experience section
class ExperienceTile extends StatelessWidget {
  final String title;
  final String date;
  final String description;

  ExperienceTile({required this.title, required this.date, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$title ($date)",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(description),
        ],
      ),
    );
  }
}

// Custom widget for Project section
class ProjectTile extends StatelessWidget {
  final String title;
  final String description;
  final String link;

  ProjectTile({required this.title, required this.description, required this.link});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(description),
          SizedBox(height: 5),
          InkWell(
            child: Text(
              link,
              style: TextStyle(color: Colors.blue),
            ),
            onTap: () {
              // Placeholder action to open link (e.g., use url_launcher package)
            },
          ),
        ],
      ),
    );
  }
}
