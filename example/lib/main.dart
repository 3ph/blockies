import 'package:flutter/material.dart';

import 'package:blockies/blockies.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blockies Demo',
      home: const BlockiesPage(),
    );
  }
}

class BlockiesPage extends StatefulWidget {
  const BlockiesPage({Key? key}) : super(key: key);

  @override
  State<BlockiesPage> createState() => _BlockiesPageState();
}

class _BlockiesPageState extends State<BlockiesPage> {
  final _formKey = GlobalKey<FormState>();

  final seedTextController =
      TextEditingController(text: '0xe95C0ed548f63B181f6528B8e3c57a7c93C2E3Dc');
  final sizeTextController = TextEditingController(text: '10');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Blockies demo')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: seedTextController,
                  maxLength: 100,
                  validator: (value) {
                    if (value == null || value.isEmpty)
                      return 'Can\'t be empty';
                    return null;
                  },
                  decoration: InputDecoration(
                    label: Text('Seed'),
                    hintText:
                        'A string used to generate the randomized identicon',
                  ),
                  onChanged: (value) {},
                ),
                TextFormField(
                  controller: sizeTextController,
                  maxLength: 3,
                  validator: (value) {
                    if (value == null || value.isEmpty)
                      return 'Can\'t be empty';
                    if (int.tryParse(value) == null) return 'Has to be number';
                    return null;
                  },
                  decoration: InputDecoration(
                    label: Text('Size'),
                    hintText: 'The resulting blocky will be SIZExSIZE',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: ElevatedButton(
                      child: Text('Generate Blocky!'),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          setState(() {});
                        }
                      }),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 24),
                  width: MediaQuery.of(context).size.width / 2,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Blockies(
                      seed: seedTextController.text,
                      size: int.parse(sizeTextController.text),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
