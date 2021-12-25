// ignore_for_file: unused_local_variable

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:singanote/background/background.dart';
import 'package:singanote/blocs/auth_bloc.dart';
import 'package:singanote/menu_bar/NavBar.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => AuthBloc(),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.orange,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const background(),
      ),
    );
  }
}

class NoteItem {
  final String imageNote;
  final String oc;
  final String showImages;
  final String keynote;
  final String sounote;

  const NoteItem({
    required this.imageNote,
    required this.oc,
    required this.showImages,
    required this.keynote,
    required this.sounote,
  });
}

class Singa extends StatefulWidget {
  const Singa({Key? key}) : super(key: key);

  @override
  _SingaState createState() => _SingaState();
}

class _SingaState extends State<Singa> {
  NoteItem? _selectedNoteItem; // Allow Null
  List<NoteItem> items = [
    const NoteItem(
      imageNote: 'assets/images/key_g/Key_G.png',
      oc: ' ',
      showImages: 'assets/images/key_g/Key_G.png',
      keynote: 'C',
      sounote: 'assets/sounds/g3.wav ',
    ),
    const NoteItem(
      imageNote: 'assets/images/key_g/G_3.jpg',
      oc: 'G3',
      showImages: 'assets/images/key_g/G_3.jpg',
      keynote: 'G',
      sounote: 'assets/sounds/g3.wav',
    ),
    const NoteItem(
      imageNote: 'assets/images/key_g/A_3.jpg',
      oc: ' ',
      showImages: 'assets/images/key_g/A_3.jpg',
      keynote: 'A',
      sounote: 'assets/sounds/a3.wav',
    ),
    const NoteItem(
      imageNote: 'assets/images/key_g/B_3.jpg',
      oc: ' ',
      showImages: 'assets/images/key_g/B_3.jpg',
      keynote: 'B',
      sounote: 'assets/sounds/b3.wav',
    ),
    const NoteItem(
      imageNote: 'assets/images/key_g/C_4.jpg',
      oc: 'C4',
      showImages: 'assets/images/key_g/C_4.jpg',
      keynote: 'C',
      sounote: 'assets/sounds/c4.wav',
    ),
    const NoteItem(
      imageNote: 'assets/images/key_g/D_4.jpg',
      oc: ' ',
      showImages: 'assets/images/key_g/D_4.jpg',
      keynote: 'D',
      sounote: 'assets/sounds/d4.wav',
    ),
    const NoteItem(
      imageNote: 'assets/images/key_g/E_4.jpg',
      oc: ' ',
      showImages: 'assets/images/key_g/E_4.jpg',
      keynote: 'E',
      sounote: 'assets/sounds/e4.wav',
    ),
    const NoteItem(
      imageNote: 'assets/images/key_g/F_4.jpg',
      oc: ' ',
      showImages: 'assets/images/key_g/F_4.jpg',
      keynote: 'F',
      sounote: 'assets/sounds/f4.wav',
    ),
    const NoteItem(
      imageNote: 'assets/images/key_g/G_4.jpg',
      oc: ' ',
      showImages: 'assets/images/key_g/G_4.jpg',
      keynote: 'G',
      sounote: 'assets/sounds/g4.wav',
    ),
    const NoteItem(
      imageNote: 'assets/images/key_g/A_4.jpg',
      oc: ' ',
      showImages: 'assets/images/key_g/A_4.jpg',
      keynote: 'A',
      sounote: 'assets/sounds/a4.wav',
    ),
    const NoteItem(
      imageNote: 'assets/images/key_g/B_4.jpg',
      oc: ' ',
      showImages: 'assets/images/key_g/B_4.jpg',
      keynote: 'B',
      sounote: 'assets/sounds/b4.wav',
    ),
    const NoteItem(
      imageNote: 'assets/images/key_g/C_5.jpg',
      oc: 'C5',
      showImages: 'assets/images/key_g/C_5.jpg',
      keynote: 'C',
      sounote: 'assets/sounds/c5.wav',
    ),
    const NoteItem(
      imageNote: 'assets/images/key_g/D_5.jpg',
      oc: ' ',
      showImages: 'assets/images/key_g/D_5.jpg',
      keynote: 'D',
      sounote: 'assets/sounds/d5.wav',
    ),
    const NoteItem(
      imageNote: 'assets/images/key_g/E_5.jpg',
      oc: ' ',
      showImages: 'assets/images/key_g/E_5.jpg',
      keynote: 'E',
      sounote: 'assets/sounds/e5.wav',
    ),
    const NoteItem(
      imageNote: 'assets/images/key_g/F_5.jpg',
      oc: ' ',
      showImages: 'assets/images/key_g/F_5.jpg',
      keynote: 'F',
      sounote: 'assets/sounds/f5.wav',
    ),
    const NoteItem(
      imageNote: 'assets/images/key_g/G_5.jpg',
      oc: ' ',
      showImages: 'assets/images/key_g/G_5.jpg',
      keynote: 'G',
      sounote: 'assets/sounds/g5.wav',
    ),
    const NoteItem(
      imageNote: 'assets/images/key_g/A_5.jpg',
      oc: ' ',
      showImages: 'assets/images/key_g/A_5.jpg',
      keynote: 'A',
      sounote: 'assets/sounds/a5.wav',
    ),
    const NoteItem(
      imageNote: 'assets/images/key_g/B_5.jpg',
      oc: ' ',
      showImages: 'assets/images/key_g/B_5.jpg',
      keynote: 'B',
      sounote: 'assets/sounds/b5.wav',
    ),
  ];

  final assetsAudioPlayer = AssetsAudioPlayer();

  @override
  void initState() {
    super.initState();
    // getMicrophonePermssion
  }

  Widget buildNote({
    required NoteItem item,
  }) =>
      Container(
        width: 125,
        color: Colors.orange,
        child: Column(
          children: [
            Container(height: 4),
            Text(
              item.oc,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            Expanded(
              child: Material(
                child: Ink.image(
                  image: AssetImage(item.imageNote),
                  fit: BoxFit.cover,
                  child: InkWell(
                    onTap: () async {
                      setState(() {
                        _selectedNoteItem = item;
                        assetsAudioPlayer.open(
                          Audio(item.sounote),
                          pitch: 1,
                        );
                      });
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: const NvaBar(),
        appBar: AppBar(
          title: Text(
            _selectedNoteItem?.keynote ?? '',
          ),
          backgroundColor: Colors.brown[900],
        ),
        backgroundColor: Colors.grey[900],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Spacer(),
            SizedBox(
              height: 200,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _selectedNoteItem != null
                        ? Image.asset(
                            _selectedNoteItem!.showImages,
                            height: 100,
                          )
                        : Container(),
                    const VerticalDivider(
                      color: Colors.white,
                      thickness: 2,
                      width: 20,
                    ),
                    _selectedNoteItem != null
                        ? Text(
                            _selectedNoteItem!.keynote.isEmpty
                                ? '-'
                                : _selectedNoteItem!.keynote,
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 150),
                          )
                        : const Text('-'),
                  ],
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (context, index) => buildNote(
                  item: items[index],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
