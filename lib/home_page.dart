import 'package:flutter/material.dart';

import 'lear_fluter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () => {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return const LearnFlutter();
          }))
        },
        child: const Text('We are here to stay'),
      ),
    );
  }
}
