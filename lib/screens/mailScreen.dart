import 'package:flutter/material.dart';

class MailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search mail',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 15.0),
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'All Inbox',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (context, index) {
                  String mailTitle = 'Mail title';
                  String mailSubtitle =
                      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.';
                  String time = '10:00 AM';
                  bool isBold = false;
                  bool isStarred = false;
                  Widget trailingIcon;
                  switch (index) {
                    case 1:
                      mailTitle = 'Welcome to LMU mailer';
                      isBold = true;
                      break;
                    case 2:
                      mailTitle = 'Unread email & starred';
                      time = 'Dec 19';
                      isStarred = true;
                      break;
                    case 3:
                      mailTitle = 'Important Email';
                      time = 'Dec 18';
                      isBold = true;
                      trailingIcon =
                          const Icon(Icons.warning, color: Colors.blue);
                      break;
                    case 4:
                      mailTitle = 'Email with attachment';
                      time = '8:00 AM';
                      trailingIcon = ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.image, size: 18),
                        label: const Text('CoverPreview.jpg'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      );
                      break;
                    case 5:
                      mailTitle = 'Email with Zip Attachment';
                      time = '8:00 AM';
                      trailingIcon = ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.file_download, size: 18),
                        label: const Text('Image_file.zip'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      );
                      break;
                    case 0:
                    default:
                      break;
                  }
                  {
                    return ListTile(
                      leading: const CircleAvatar(
                        child: Icon(Icons.person),
                      ),
                      title: Text(
                        index == 1
                            ? 'Mail title'
                            : index == 3 || index == 4
                                ? 'Mail title'
                                : 'Mail title',
                        style: index == 1 || index == 3 || index == 4
                            ? const TextStyle(fontWeight: FontWeight.bold)
                            : null,
                      ),
                      subtitle: Text(
                        'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
                        style: index == 1
                            ? const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              )
                            : const TextStyle(fontSize: 17),
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '10:00 AM',
                            style: index == 3 || index == 4
                                ? const TextStyle(fontWeight: FontWeight.bold)
                                : null,
                          ),
                          Icon(
                            Icons.star,
                            color: index == 1 ? Colors.amber : null,
                          ),
                        ],
                      ),
                    );
                  }
                }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: const Icon(Icons.edit),
        label: const Text('Compose Email'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        backgroundColor: Colors.greenAccent,
        foregroundColor: Colors.black,
        elevation: 2,
        splashColor: Colors.blueAccent,
        hoverElevation: 4,
        focusElevation: 4,
        highlightElevation: 8,
      ),
    );
  }
}
