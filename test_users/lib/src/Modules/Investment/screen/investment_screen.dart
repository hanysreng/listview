import 'package:flutter/material.dart';
import 'package:beamer/beamer.dart';
class InvestMentScreen extends StatelessWidget {
  const InvestMentScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            IconButton(
              icon: const Icon(Icons.add),
              iconSize: 30,
              onPressed: () {},
            ),
          ],
          backgroundColor: Colors.blue[900],
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            iconSize: 30,
            onPressed: () {},
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 60,
                height: 60,
                fit: BoxFit.contain,
              ),
              const SizedBox(
                width: 12,
              ),
              const Text(
                'Get Funding',
                style: TextStyle(fontSize: 20),
              )
            ],
          )
          ),
      body: Container(
        padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Column(
          children: [
            DefaultTabController(
                length: 2, // length of tabs
                initialIndex: 0,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        color: Colors.transparent,
                        child: TabBar(
                          labelColor: Colors.blue[900],
                          labelStyle: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                          unselectedLabelColor: Colors.black,
                          tabs: const [
                            Tab(text: 'Equity Investment'),
                            Tab(text: 'Debt Investment'),
                          ],
                        ),
                      ),
                      Container(
                          height: 400, //height of TabBarView
                          decoration: const BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: Colors.grey, width: 0.5))),
                          child: TabBarView(children: [
                            Container(
                              color: Colors.transparent,
                              child: const Center(
                                child: Text('Display Tab 1',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            Container(
                              color: Colors.transparent,
                              child: const Center(
                                child: Text('Display Tab 2',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ]))
                    ])),
            //end Tabs===============
           Container(
            // height: 50,
             width: double.infinity,
             color: Colors.transparent,
             child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue[900]),
                 // padding: MaterialStateProperty.all(const EdgeInsets.all(14)),
                  ),
              child: const Text(
                "Create New Application",
                style: TextStyle(fontSize: 20),
              ),
               onPressed: () =>context.beamToNamed('/financ_information'),
            ),
           )
          ],
        ),
      ),
    );
  }
}
