import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  Widget openPopUp() {
    return PopupMenuButton(
      itemBuilder: (context) {
        return List.generate(
            3,
            (index) => const PopupMenuItem(
                  child: Text('Setting'),
                ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            // Widget for the search
            const Icon(Icons.search),
            // Widget for implementing the three-dot menu
            PopupMenuButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              itemBuilder: (context) {
                return [
                  // In this case, we need 5 popupmenuItems one for each option.
                  const PopupMenuItem(child: Text('New Group')),
                  const PopupMenuItem(child: Text('New Broadcast')),
                  const PopupMenuItem(child: Text('Linked Devices')),
                  const PopupMenuItem(child: Text('Starred Messages')),
                  const PopupMenuItem(child: Text('Settings')),
                ];
              },
            ),
          ],
          backgroundColor: const Color(0xff128C7E),
          title: const Text('WhatsApp'),
          bottom: const TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                  iconMargin: EdgeInsets.all(100),
                  child: Icon(
                    Icons.camera_alt_rounded,
                  )),
              Tab(
                child: Text('CHATS', style: TextStyle(color: Colors.white)),
              ),
              Tab(
                child: Text('STATUS', style: TextStyle(color: Colors.white)),
              ),
              Tab(
                child: Text('CALLS', style: TextStyle(color: Colors.white)),
              ),
            ],
            labelColor: Colors.white,
          ),
        ),

        // ! THE DESIGNED BODY
        body: const TabBarView(
          children: [
            Center(child: Text('This feature is coming soon')),
            ChatsTab(),
            Center(child: Text('Status feature is coming soon')),
            Center(child: Text('Call feature is coming soon')),
          ],
        ),
      ),
    );
  }
}

class ChatsTab extends StatelessWidget {
  const ChatsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: const [
            SingleChatWidget(
                chatTitle: "Partha Sarathi",
                chatMessage: 'I wish GoT had better ending',
                seenStatusColor: Colors.blue,
                imageUrl:
                    'https://static.toiimg.com/thumb/msid-85147219,width-1280,resizemode-4/85147219.jpg'),
            SingleChatWidget(
                chatTitle: "Tamil Arasan",
                chatMessage: 'I belong to my beloved, and my beloved is mine.',
                seenStatusColor: Colors.grey,
                imageUrl:
                    'https://igimages.gumlet.io/tamil/home/thalapathy68diwali272023m.jpg?w=376&dpr=2.6'),
            SingleChatWidget(
                chatTitle: "Deena",
                chatMessage: 'There is no remedy for love but to love more.',
                seenStatusColor: Colors.grey,
                imageUrl:
                    'https://static.vecteezy.com/system/resources/previews/021/950/361/non_2x/lion-illustration-ai-generated-free-photo.jpg'),
            SingleChatWidget(
                chatTitle: "Naveen",
                chatMessage: 'I can’t see anything I don’t like about you.',
                seenStatusColor: Colors.blue,
                imageUrl:
                    'https://e0.pxfuel.com/wallpapers/650/780/desktop-wallpaper-best-night-nature-scenery-gifs-background-beautiful-night-scenery.jpg'),
            SingleChatWidget(
                chatTitle: "Joshika",
                chatMessage: 'Dreaming of you keeps me asleep.',
                seenStatusColor: Colors.grey,
                imageUrl:
                    'https://i.pinimg.com/originals/dd/97/3a/dd973ac116a977c8dd5296b0da504b8c.jpg'),
            SingleChatWidget(
                chatTitle: "Sheryln",
                chatMessage: 'we have once enjoyed we can never lose.',
                seenStatusColor: Colors.blue,
                imageUrl:
                    'https://images.pexels.com/photos/36029/aroni-arsa-children-little.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
            SingleChatWidget(
                chatTitle: "Bethan Princy",
                chatMessage: 'Love is never boastful or conceited.',
                seenStatusColor: Colors.blue,
                imageUrl:
                    'https://5.imimg.com/data5/AX/OB/XJ/SELLER-26109517/child-photography-child-photo-shoot-child-photographer-child-photography-studio-in-rajkot-500x500.jpg'),
            SingleChatWidget(
                chatTitle: "Prithish",
                chatMessage: 'All’s fair in love and basketball.',
                seenStatusColor: Colors.blue,
                imageUrl:
                    'https://cms.tstdc.in/fetch?payload=78e3cfce-5f50-4c14-835c-3d5dbff85724.jpg'),
          ],
        ),
      ),
    );
  }
}

class SingleChatWidget extends StatelessWidget {
  final String? chatMessage;
  final String? chatTitle;
  final Color? seenStatusColor;
  final String? imageUrl;

  const SingleChatWidget({
    Key? key,
    this.chatMessage,
    this.chatTitle,
    this.seenStatusColor,
    this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(imageUrl!),
        ),
        Expanded(
          child: ListTile(
            title: Text('$chatTitle',
                style: const TextStyle(fontWeight: FontWeight.w600)),
            subtitle: Row(children: [
              Icon(
                seenStatusColor == Colors.blue ? Icons.done_all : Icons.done,
                size: 15,
                color: seenStatusColor,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 6.0),
                  child: Text(
                    '$chatMessage',
                    style: const TextStyle(overflow: TextOverflow.ellipsis),
                  ),
                ),
              ),
            ]),
            trailing: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Yesterday',
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
