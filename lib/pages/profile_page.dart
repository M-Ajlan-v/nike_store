import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final List<Map<String, dynamic>> menuItems = [
    {"title": "Settings", "icon": Icons.settings},
    {"title": "Orders", "icon": Icons.shopping_bag},
    {"title": "Logout", "icon": Icons.logout},
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[300],
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.grey[300],
          centerTitle: true,
            title:Text("profile")

        ),
        body:Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: CircleAvatar(
                    radius: 70,
                    backgroundColor: Colors.deepPurple,
                    child: CircleAvatar(
                      radius: 63,
                      backgroundImage: AssetImage('lib/images/profile.png'),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("John Doe",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    Text("johndue@gmail.com",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey
                      ),
                    ),
                  ],
                )
              ],
            ),
            Divider(
              thickness: 3,
              color: Colors.black,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ListView.builder(
                  itemCount: menuItems.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      tileColor: Colors.black87,
                      leading: Icon(menuItems[index]["icon"], color: Colors.white,),
                      title: Text(menuItems[index]["title"], style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
                      trailing: Icon(Icons.arrow_forward_ios, color: Colors.white,),
                    ),
                  ),
                ),
              ),
            )
          ],
        )

    );
  }
}
