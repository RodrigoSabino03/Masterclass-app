import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(16),
                ),
                height: 320,
                width: 380,
                padding: EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.person, size: 70),
                    Text('Rodrigo Sabino', style: TextStyle(fontSize: 24)),
                    Text(
                      "Duis rhoncus dui venenatis consequat porttitor. Etiam aliquet congue consequat. In posuere, nunc sit amet laoreet blandit, urna sapien.",
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      spacing: 20,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(FontAwesomeIcons.whatsapp),
                        FaIcon(FontAwesomeIcons.github),
                        FaIcon(FontAwesomeIcons.linkedin),
                        FaIcon(FontAwesomeIcons.instagram),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(
                    top: 10, bottom: 10),
                child: Text('Tecnologias Favoritas',
                    style: TextStyle(fontSize: 18)),
              ),
              Row(
                spacing: 16,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    width: 85,
                    height: 85,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 6,
                      children: [
                        FaIcon(FontAwesomeIcons.flutter),
                        Text('Flutter')
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    width: 85,
                    height: 85,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 6,
                      children: [
                        FaIcon(FontAwesomeIcons.react),
                        Text('React\nNative')
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    width: 85,
                    height: 85,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 6,
                      children: [FaIcon(FontAwesomeIcons.react), Text('React')],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    width: 85,
                    height: 85,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 6,
                      children: [FaIcon(FontAwesomeIcons.nodeJs), Text('Node')],
                    ),
                  )
                ],
              )
            ],
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(
                    top: 10, bottom: 10),
                child: Text('Habilidades e Competências',
                    style: TextStyle(fontSize: 18)),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(16),
                ),
                height: 180,
                width: 380,
                padding: EdgeInsets.all(16),
                child: Column(
                  spacing: 6,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Flutter/Dart",
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: LinearProgressIndicator(
                            value: 0.8,
                            backgroundColor: Colors.grey[300],
                            valueColor: AlwaysStoppedAnimation<Color>(
                                Colors.green.shade600),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Flutter/Dart",
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: LinearProgressIndicator(
                            value: 0.8,
                            backgroundColor: Colors.grey[300],
                            valueColor: AlwaysStoppedAnimation<Color>(
                                Colors.green.shade600),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Flutter/Dart",
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: LinearProgressIndicator(
                            value: 0.8,
                            backgroundColor: Colors.grey[300],
                            valueColor: AlwaysStoppedAnimation<Color>(
                                Colors.green.shade600),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Flutter/Dart",
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: LinearProgressIndicator(
                            value: 0.8,
                            backgroundColor: Colors.grey[300],
                            valueColor: AlwaysStoppedAnimation<Color>(
                                Colors.green.shade600),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Flutter/Dart",
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: LinearProgressIndicator(
                            value: 0.8,
                            backgroundColor: Colors.grey[300],
                            valueColor: AlwaysStoppedAnimation<Color>(
                                Colors.green.shade600),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: NavigationBar(
          selectedIndex: selectedIndex,
          onDestinationSelected: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          destinations: [
            NavigationDestination(
                icon: Icon(Icons.rocket_launch), label: 'Atividades'),
            NavigationDestination(
                icon: Icon(Icons.home), label: 'Repositorios'),
            NavigationDestination(
                icon: Icon(Icons.usb_rounded), label: 'Sobre o Dev'),
          ]),
    );
  }
}
