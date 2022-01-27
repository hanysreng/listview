import 'package:flutter/material.dart';

class RequiredDocumentsScreen extends StatelessWidget {
  const RequiredDocumentsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rewured Doc'),
      ),
      body: Column(children: [
        const Text('RequiredDocumentsScreen'),
         Container(
           color: Colors.transparent,
           child: const Text('hi'),
           )
      ],),
    );
  }
}