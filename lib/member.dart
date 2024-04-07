import 'package:flutter/material.dart';

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
