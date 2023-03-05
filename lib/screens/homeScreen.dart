import 'package:flutter/material.dart';
import 'package:lancemeup/screens/cardsScreen.dart';
import 'package:lancemeup/screens/carouselScreen.dart';
import 'package:lancemeup/screens/mailScreen.dart';
import 'package:lancemeup/screens/profileScreen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildCurrentScreen(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Stack(
              children: [
                const Icon(Icons.email),
                Positioned(
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      '3',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            label: 'Email',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildCurrentScreen() {
    switch (_currentIndex) {
      case 0:
        return Center(child: CardScreen());
      case 1:
        return const Center(
          child: MyCarousel(
            items: [
              {
                'imageUrl': 'https://source.unsplash.com/random',
                'description':
                    '1 Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
              },
              {
                'imageUrl': 'https://picsum.photos/200/300',
                'description':
                    '2 Vestibulum vel quam vel dolor ultrices hendrerit.'
              },
              {
                'imageUrl': 'https://source.unsplash.com/random/dog',
                'description':
                    '3 Aliquam vitae semper tortor. Integer eget venenatis magna.'
              },
            ],
          ),
        );
      case 2:
        return Center(child: MailPage());
      case 3:
        return const Center(child: Text('Notification Screen'));
      case 4:
        return const Center(child: ProfilePage());
      default:
        return const SizedBox.shrink();
    }
  }
}
