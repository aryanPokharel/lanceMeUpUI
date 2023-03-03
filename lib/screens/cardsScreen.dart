import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  @override
  _CardScreenState createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        title: Row(
          children: [
            Image.asset(
              'your_logo.png',
              height: 30,
            ),
            const SizedBox(width: 8),
            const Text(
              'Lancemeup',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(width: 8),
            const Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.shopping_bag,
                            color: _currentIndex == 0
                                ? Colors.green
                                : Colors.black,
                          ),
                          const SizedBox(height: 2),
                          Text(
                            'Project Tools',
                            style: TextStyle(
                              color: _currentIndex == 0
                                  ? Colors.green
                                  : Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              Icon(
                                Icons.message,
                                color: _currentIndex == 1
                                    ? Colors.green
                                    : Colors.black,
                              ),
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
                          const SizedBox(height: 2),
                          Text(
                            'Chat',
                            style: TextStyle(
                              color: _currentIndex == 1
                                  ? Colors.green
                                  : Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.folder,
                            color: _currentIndex == 2
                                ? Colors.green
                                : Colors.black,
                          ),
                          const SizedBox(height: 2),
                          Text(
                            'Drive',
                            style: TextStyle(
                              color: _currentIndex == 2
                                  ? Colors.green
                                  : Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildCard(
              title: 'Revamp Project',
              icon: Icons.language,
              subtitle1: 'Template : Kanban',
              subtitle2: 'Status : On hold',
              subtitle3: 'Last Updated : 2m ago',
              peopleCount: 5,
            ),
            _buildCard(
              title: 'Revamp Project',
              icon: Icons.language,
              subtitle1: 'Template : Scrum',
              subtitle2: 'Status : Active',
              subtitle3: 'Last Updated : 10m ago',
              peopleCount: 5,
            ),
            _buildCard(
              title: 'Revamp Project',
              icon: Icons.language,
              subtitle1: 'Template : Bug Report',
              subtitle2: 'Status : Completed',
              subtitle3: 'Last Updated : 1h ago',
              peopleCount: 5,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard({
    required String title,
    required IconData icon,
    bool dots = false,
    required String subtitle1,
    required String subtitle2,
    required String subtitle3,
    List<IconData> icons = const [],
    required int peopleCount,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(icon),
                  const SizedBox(width: 8),
                  Text(title),
                  const SizedBox(width: 8),
                  if (dots) const Icon(Icons.more_vert),
                ],
              ),
              IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(height: 16),
          Column(
            children: [
              Text(subtitle1),
              Text(subtitle2),
              Text(subtitle3),
            ],
          ),
          const SizedBox(height: 16),
          Stack(
            children: [
              LinearProgressIndicator(
                value: 1,
                backgroundColor: Colors.grey[300],
                color: Colors.green,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (IconData icon in icons)
                    Icon(
                      icon,
                      color: Colors.white,
                    ),
                  const SizedBox(width: 16),
                  const Text(
                    '40%',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Text('${(0.4 * 100).toInt()}%'),
              const Spacer(),
              Row(
                children: List.generate(
                  peopleCount,
                  (index) => CircleAvatar(
                    backgroundColor: Colors.grey[300],
                    child: const Icon(Icons.person),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
