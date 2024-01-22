import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'WhatsApp',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.teal,
          bottom: const TabBar(
            tabs: [
              Tab(
                  child: Icon(
                Icons.camera_alt_sharp,
                color: Colors.white,
              )),
              Text(
                'Chat',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Status',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Calls',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          actions: [
            const Icon(
              Icons.search,
              color: Colors.white,
            ),
            const SizedBox(width: 20),
            const Icon(
              Icons.message,
              color: Colors.white,
            ),
            PopupMenuButton(
                iconColor: Colors.white,
                itemBuilder: (context) => [
                      const PopupMenuItem(
                        child: Text('New Group'),
                      ),
                      const PopupMenuItem(
                        child: Text('Setings'),
                      ),
                      const PopupMenuItem(
                        child: Text('Channel'),
                      ),
                    ]),
          ],
        ),
        body: TabBarView(
          children: [
           const  Text('Camera'),
            ListView.builder(
                itemCount: 1000,
                itemBuilder: (context, index) {
                  return const ListTile(
                    title: Text('John Steve'),
                    subtitle: Text('How are you doing?'),
                    trailing: Text('9:31 PM'),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/428364/pexels-photo-428364.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                    ),
                  );
                }),
            ListView.builder(
                itemCount: 1000,
                itemBuilder: (context, index) {
                  return  ListTile(
                    title: const Text('John Steve'),
                    subtitle: index/2==0?const Text('Just Now'):const Text('Today, 37 min ago'),
                    leading: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.greenAccent,
                          width: 4,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/428364/pexels-photo-428364.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                      ),
                    ),
                  );
                }),
            ListView.builder(
                itemCount: 1000,
                itemBuilder: (context, index) {
                  return  ListTile(
                    title: const Text('John Steve'),
                    subtitle: index/2==0?const Text('Missed Audio Call'):const Text('Missed Video call'),
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/428364/pexels-photo-428364.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                    ),
                    trailing: index/2==0?const Icon(Icons.phone): const Icon(Icons.video_call),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
