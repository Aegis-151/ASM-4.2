import 'package:flutter/material.dart';

// Song Entry
class SongEntry extends StatelessWidget {
  const SongEntry({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Song Entry",
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              style: const TextStyle(fontWeight: FontWeight.bold),
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                  labelText: "Song Title",
                  prefixIcon: Icon(Icons.music_note),
                  border: UnderlineInputBorder()),
              onChanged: (String value) {},
              validator: (value) {
                return value!.isEmpty ? "Please enter the Song title" : null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              style: const TextStyle(fontWeight: FontWeight.bold),
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  labelText: "Release Year", border: UnderlineInputBorder()),
              onChanged: (String value) {},
              validator: (value) {
                return value!.isEmpty ? "Please enter the Year" : null;
              },
            ),
          ),
        ],
      ),
    );
  }
}
