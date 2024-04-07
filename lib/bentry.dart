import 'package:flutter/material.dart';

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
