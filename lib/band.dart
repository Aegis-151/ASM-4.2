import 'package:flutter/material.dart';
import 'member.dart';
import 'genre.dart';

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
