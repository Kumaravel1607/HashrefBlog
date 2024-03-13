import 'package:flutter/material.dart';
import 'package:alphabet_scroll_view/alphabet_scroll_view.dart';

class AlphabeticalScrollerWidegt extends StatefulWidget {
  const AlphabeticalScrollerWidegt({Key? key}) : super(key: key);

  @override
  State<AlphabeticalScrollerWidegt> createState() =>
      _AlphabeticalScrollerWidegtState();
}

class _AlphabeticalScrollerWidegtState
    extends State<AlphabeticalScrollerWidegt> {
  List<String> list = [
    "Apple",
    "Banana",
    "Cherry",
    "Dog",
    "Elephant",
    "Frog",
    "Grape",
    "Hat",
    "Igloo",
    "Jump",
    "Kite",
    "Lemon",
    "Moon",
    "Nest",
    "Orange",
    "Penguin",
    "Quilt",
    "Rabbit",
    "Sun",
    "Tiger",
    "Umbrella",
    "Violin",
    "Water",
    "Xylophone",
    "Yellow",
    "Zebra",
    "Anchor",
    "Butterfly",
    "Carrot",
    "Drum",
    "Elephant",
    "Feather",
    "Guitar",
    "Hammer",
    "Ice",
    "Jelly",
    "Kangaroo",
    "Lighthouse",
    "Mountain",
    "Nut",
    "Ocean",
    "Pencil",
    "Quill",
    "Rainbow",
    "Sailboat",
    "Tree",
    "Unicorn",
    "Volcano",
    "Watermelon",
    "X-ray",
    "Yo-yo",
    "Zeppelin",
    "Airplane",
    "Ball",
    "Cloud",
    "Dolphin",
    "Easel",
    "Fire",
    "Globe",
    "Hamburger",
    "Ice Cream",
    "Jigsaw",
    "Key",
    "Lollipop",
    "Mushroom",
    "Notebook",
    "Owl",
    "Pizza",
    "Quiver",
    "Rose",
    "Star",
    "Turtle",
    "Ufo",
    "Vase",
    "Windmill",
    "Xbox",
    "Yarn",
    "Zipper",
    "Acorn",
    "Boat",
    "Cactus",
    "Diamond",
    "Ferris Wheel",
    "Giraffe",
    "Honey",
    "Island",
    "Jacket",
    "Kettle",
    "Lantern",
    "Map",
    "Nutmeg",
    "Oar",
    "Popcorn",
    "Quasar",
    "Ruler",
    "Shoes",
    "Telescope",
    "Umpire",
    "Valley"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alphabetical Scroller '),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: AlphabetScrollView(
              list: list.map((e) => AlphaModel(e)).toList(),
              // isAlphabetsFiltered: false,
              alignment: LetterAlignment.right,
              itemExtent: 50,
              unselectedTextStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black),
              selectedTextStyle: const TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),

              itemBuilder: (_, index, string) {
                return Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: ListTile(
                    title: Text(string),
                    leading: const Icon(Icons.person),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
