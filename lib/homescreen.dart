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
            title: Text(
              "WhatsApp",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            centerTitle: false,
            bottom: TabBar(tabs: [
              Tab(child: Icon(Icons.camera_alt)),
              Tab(child: Text('Chats')),
              Tab(child: Text('Status')),
              Tab(child: Text('Calls'))
            ]),
            actions: [
              Icon(
                Icons.search,
                size: 30,
              ),
              SizedBox(
                width: 7,
              ),
              PopupMenuButton(
                  icon: Icon(Icons.more_vert_outlined),
                  itemBuilder: (
                    context,
                  ) =>
                      [
                        PopupMenuItem(value: 1, child: Text('New group')),
                        PopupMenuItem(value: 2, child: Text('New broadcast')),
                        PopupMenuItem(value: 3, child: Text('Linked devices')),
                        PopupMenuItem(value: 4, child: Text('Shared messages')),
                        PopupMenuItem(value: 5, child: Text('Settings')),
                        PopupMenuItem(value: 6, child: Text('Logout')),
                      ]),
              SizedBox(
                width: 7,
              ),
            ],
          ),
          body: TabBarView(children: [
            Text('Camera'),
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('Rashmika Mandanna'),
                      subtitle: Text('Animal 1000cr kamayega'),
                      leading: CircleAvatar(
                        backgroundColor: Colors.black,
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRnPXqCfCFJLObTBivhy6_UcbX-52GzgqWfidKQNw-o9IBtIDML'),
                      ),
                      trailing: Text('6:20 pm'),
                    );
                  }),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('Rashmika Mandanna'),
                      subtitle: Text('27m ago'),
                      leading: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.green, width: 2),
                        ),
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          backgroundImage: NetworkImage(
                              'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRnPXqCfCFJLObTBivhy6_UcbX-52GzgqWfidKQNw-o9IBtIDML'),
                        ),
                      ),
                    );
                  }),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('Rashmika Mandanna'),
                      subtitle: Row(
                        children: [
                          Icon(
                            Icons.arrow_upward_sharp,
                            color: Colors.teal,
                          ),
                          Text('25 August, 2:50 pm'),
                        ],
                      ),
                      leading: CircleAvatar(
                        backgroundColor: Colors.black,
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRnPXqCfCFJLObTBivhy6_UcbX-52GzgqWfidKQNw-o9IBtIDML'),
                      ),
                      trailing: Icon(
                        index % 3 == 0 ? Icons.call : Icons.video_call,
                      ),
                    );
                  }),
            ),
          ])),
    );
  }
}
