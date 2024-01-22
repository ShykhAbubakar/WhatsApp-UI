import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 4, child: Scaffold(
      appBar: AppBar(
        title: const Text('WhatsApp', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.teal,
        bottom: const TabBar(
          tabs: [
            Tab(child: Icon(Icons.camera_alt_sharp, color: Colors.white,)),
            Text('Chat', style: TextStyle(color: Colors.white),),
            Text('Status', style: TextStyle(color: Colors.white),),
            Text('Calls', style: TextStyle(color: Colors.white),),
          ],

        ),
        actions: [
         const  Icon(Icons.search, color: Colors.white,),
          PopupMenuButton(
            iconColor: Colors.white,
              itemBuilder: (context)=> [
               const  PopupMenuItem(
                    child:Text('New Group'),
                ),
                const PopupMenuItem(
                  child:Text('Setings'),
                ),
                const PopupMenuItem(
                  child:Text('Channel'),
                ),

              ]
          ),
        ],
      ),
      body: const TabBarView(
        children: [
          Text('Camera'),
          Text('Chat'),
          Text('Status'),
          Text('Calls'),

        ],
      ),
    ),
    );
  }
}
