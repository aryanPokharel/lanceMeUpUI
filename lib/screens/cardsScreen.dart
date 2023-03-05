import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  @override
  _CardScreenState createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  final int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                AppBar(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  elevation: 0,
                  automaticallyImplyLeading: false,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.home,
                            color: Colors.red,
                          ),
                          Text(
                            "LanceMeUp",
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.arrow_drop_down)
                        ],
                      ),
                      const Icon(Icons.search)
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton.icon(
                        onPressed: () {
                          // Handle button press
                        },
                        icon: const Icon(Icons.file_copy),
                        label: const Text('Project Tools'),
                        style: TextButton.styleFrom(
                          primary: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.cloud),
                        label: const Text('Chat'),
                        style: TextButton.styleFrom(
                          primary: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.drive_file_move),
                        label: const Text('Drive'),
                        style: TextButton.styleFrom(
                          primary: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.lock_clock),
                        label: const Text('Track'),
                        style: TextButton.styleFrom(
                          primary: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
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

  Widget _buildIcons({required String imageUrl}) {
    return CircleAvatar(
      backgroundImage: NetworkImage(imageUrl),
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
                  Icon(
                    icon,
                    color: Colors.green,
                  ),
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
            crossAxisAlignment: CrossAxisAlignment.start,
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
                value: .4,
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
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: List.generate(
              peopleCount,
              (index) => (index == 1)
                  ? _buildIcons(imageUrl: 'https://picsum.photos/200/300')
                  : ((index == 2)
                      ? _buildIcons(imageUrl: 'https://picsum.photos/200/400')
                      : ((index == 4)
                          ? _buildIcons(
                              imageUrl: 'https://picsum.photos/400/500')
                          : _buildIcons(
                              imageUrl: 'https://picsum.photos/400/400'))),
            ),
          ),
        ],
      ),
    );
  }
}
