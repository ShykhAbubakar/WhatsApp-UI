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
        title: Text('WhatsApp', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.teal,
        bottom: TabBar(
          tabs: [
            Text('Chat', style: TextStyle(color: Colors.white),),
            Text('Status', style: TextStyle(color: Colors.white),),
            Text('Calls', style: TextStyle(color: Colors.white),),
          ],

        ),
      ),
    ),
    );
  }
}
