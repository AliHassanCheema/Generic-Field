
import 'package:flutter/material.dart';

import 'gen_field/gen_field_vm.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, this.data});
  final Model? data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Text('Username: ${data!.uName!}'),
              const Spacer(),
              Text('Password: ${data!.passWord!}')
            ],
          ),
        ),
      ),
    );
  }
}