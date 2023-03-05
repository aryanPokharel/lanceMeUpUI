import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage("https://picsum.photos/200/300"),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Jane Copper",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "janecopper@gmail.com",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              height: 10,
              thickness: 2,
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              title: const Text("Set status"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Account"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Activity"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Connections"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              height: 10,
              thickness: 2,
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              title: const Text("Notifications"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Appearance"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              height: 10,
              thickness: 2,
              indent: 20,
              endIndent: 20,
            ),
            const Text(
              "More",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: const Text("Privacy Policy"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Terms and Conditions"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Help and Support"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            ListTile(
              title: const Text("FAQs"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              height: 10,
              thickness: 2,
              indent: 20,
              endIndent: 20,
            ),
            const Text(
              "Account",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.logout),
                    color: Colors.red,
                    onPressed: () {},
                  ),
                  const Text(
                    "Logout",
                    style: TextStyle(color: Colors.red),
                  )
                ],
              ),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: SizedBox(
                      height: 50,
                      child: Column(
                        children: const [
                          Text(
                            "Are you sure?",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            'Are you sure you want to log out?',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    action: SnackBarAction(
                      label: 'Logout',
                      onPressed: () {},
                    ),
                    backgroundColor: Colors.white,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  logout() {}
}
