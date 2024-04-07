import 'package:flutter/material.dart';
import 'band.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bands',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Bands'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// Home page
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            alignment: Alignment.topCenter,
            child: const Image(
              image: AssetImage('assets/logo.png'),
              height: 150,
              width: 150,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  title: const Text(
                    "Band Entry 1",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const BandDetails(),
                      ),
                    );
                  },
                  tileColor: Colors.black,
                  textColor: Colors.red,
                ),
                ListTile(title: const Text("Band Entry 2"), onTap: () {}),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const AddBand(),
            ),
          );
        },
        tooltip: 'Add Band',
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}

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
