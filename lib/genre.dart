import 'package:flutter/material.dart';
import 'song.dart';

// Genre Entry
class GenreEntry extends StatelessWidget {
  const GenreEntry({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Genre Entry",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
            },
            shape:
                const CircleBorder(side: BorderSide(color: Colors.transparent)),
            child: const Text(
              "Save",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              alignment: Alignment.topCenter,
              child: const Image(
                image: AssetImage('assets/genres.png'),
                height: 150,
                width: 150,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Column(children: [
              const Text(
                "Songs:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Column(
                children: [
                  ListTile(
                    tileColor: Colors.black,
                    textColor: Colors.red,
                    title: const Text(
                      "Song 1",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SongEntry(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              ListTile(
                title: const Text("+ Add song",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                    textAlign: TextAlign.center),
                onTap: () {},
              ),
            ])
          ],
        ),
      ),
    );
  }
}
