import 'package:flutter/material.dart';

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
                    "One",
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
                ListTile(title: const Text("Two"), onTap: () {}),
                ListTile(title: const Text("Three"), onTap: () {}),
                ListTile(title: const Text("Four"), onTap: () {}),
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

// Add Band
class AddBand extends StatelessWidget {
  const AddBand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Add Band",
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
      body: Center(
          child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              style: const TextStyle(fontWeight: FontWeight.bold),
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                  labelText: "Band name",
                  prefixIcon: Icon(Icons.person),
                  border: UnderlineInputBorder()),
              onChanged: (String value) {},
              validator: (value) {
                return value!.isEmpty ? "Please enter the band name" : null;
              },
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            children: [
              const Text(
                "Members:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              ListTile(
                title: const Text("+ Add member",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                    textAlign: TextAlign.center),
                onTap: () {},
              ),
            ],
          ),
          Column(children: [
            const Text(
              "Music Genres:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            ListTile(
              title: const Text("+ Add genre",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                  textAlign: TextAlign.center),
              onTap: () {},
            ),
          ])
        ],
      )),
    );
  }
}

// Band Details
class BandDetails extends StatelessWidget {
  const BandDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Band Details",
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
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                style: const TextStyle(fontWeight: FontWeight.bold),
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                    labelText: "Band name",
                    prefixIcon: Icon(Icons.person),
                    border: UnderlineInputBorder()),
                onChanged: (String value) {},
                validator: (value) {
                  return value!.isEmpty ? "Please enter the band name" : null;
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                const Text(
                  "Members:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Column(
                  children: [
                    ListTile(
                      tileColor: Colors.black,
                      textColor: Colors.red,
                      title: const Text(
                        "Member 1",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const BandMemberEntry(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                ListTile(
                  title: const Text("+ Add member",
                      style: TextStyle(
                        color: Colors.red,
                      ),
                      textAlign: TextAlign.center),
                  onTap: () {},
                ),
              ],
            ),
            Column(children: [
              const Text(
                "Music Genres:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Column(
                children: [
                  ListTile(
                    tileColor: Colors.black,
                    textColor: Colors.red,
                    title: const Text(
                      "Genre 1",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const GenreEntry(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              ListTile(
                title: const Text("+ Add genre",
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

// Band Entry
class BandEntry extends StatelessWidget {
  const BandEntry({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Band Details",
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
          TextFormField(
            style: const TextStyle(fontWeight: FontWeight.bold),
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
                labelText: "Member name",
                prefixIcon: Icon(Icons.person),
                border: UnderlineInputBorder()),
            onChanged: (String value) {},
            validator: (value) {
              return value!.isEmpty ? "Please enter the " : null;
            },
          ),
        ],
      ),
    );
  }
}

// Member Entry
List<String> list = <String>['Drums', 'Lead', 'Bass', 'Vocals'];

class BandMemberEntry extends StatefulWidget {
  const BandMemberEntry({super.key});

  @override
  State<BandMemberEntry> createState() => _BandMemberEntryState();
}

class _BandMemberEntryState extends State<BandMemberEntry> {
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Member Entry",
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
                  labelText: "Member name",
                  prefixIcon: Icon(Icons.person),
                  border: UnderlineInputBorder()),
              onChanged: (String value) {},
              validator: (value) {
                return value!.isEmpty ? "Please enter the band name" : null;
              },
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: DropdownMenu<String>(
              width: 350,
              label: const Text("Instrument"),
              textStyle: const TextStyle(fontWeight: FontWeight.bold),
              initialSelection: list.first,
              onSelected: (String? value) {
                // This is called when the user selects an item.
                setState(() {
                  dropdownValue = value!;
                });
              },
              dropdownMenuEntries:
                  list.map<DropdownMenuEntry<String>>((String value) {
                return DropdownMenuEntry<String>(
                  value: value,
                  label: value,
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

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
