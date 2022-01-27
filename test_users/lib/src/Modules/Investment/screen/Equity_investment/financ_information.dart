import 'package:flutter/material.dart';
import 'package:beamer/beamer.dart';

class FinancInformationScreen extends StatelessWidget {
    const FinancInformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            IconButton(
              icon: const Icon(Icons.add),
              iconSize: 30,
               color: Colors.black,
              onPressed: () {},
            ),
          ],
           backgroundColor: Colors.grey[50],
          elevation: 1,
          leading: IconButton(
            icon: const Icon(Icons.cancel),
            iconSize: 28,
            color: Colors.black,
            onPressed: ()=> context.beamToNamed('/'),
            
          ),
          title: const Text(
            'Debt Investment',
            style: TextStyle(fontSize: 20, color: Colors.black),
          )),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Personal Information',style: TextStyle(fontSize: 16),),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  
                    children: [
                    
                      TextFormField(
          decoration: InputDecoration(
          labelText: 'Full Name*',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          prefixIcon: const Icon(
           Icons.people,
            color: Colors.red,
          ),
          ),
        ),
          TextFormField(
      
          decoration: InputDecoration(
          labelText: 'Date of Birth*',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          prefixIcon: const Icon(
           Icons.people,
            color: Colors.red,
            
          ),
          ),
        ),
                  ],),
////end Textformfield============

            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue[900]),
                // padding: MaterialStateProperty.all(const EdgeInsets.all(14)),
              ),
              child: const Text(
                "Next",
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () => context.beamToNamed('/company_information'),
            )
          ],
        ),
      ),
    );
  }
}
