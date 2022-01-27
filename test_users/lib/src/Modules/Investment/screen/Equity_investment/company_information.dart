import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

class CompanyInformationScreen extends StatelessWidget {
  const CompanyInformationScreen({ Key? key }) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Company Infor'),
      ),
      body: Column(children: [
        const Text('CompanyInformationScreen'),
         Container(
             height: 50,
             width: double.infinity,
             color: Colors.transparent,
             child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue[900]),
                 // padding: MaterialStateProperty.all(const EdgeInsets.all(14)),
                  ),
              child: const Text(
                "Next",
                style: TextStyle(fontSize: 20),
              ),
               onPressed: () =>context.beamToNamed('/required_document'),
            ),
           )
      ],)
    );
  }
}