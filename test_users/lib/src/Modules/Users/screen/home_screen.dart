import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_users/src/Modules/Users/controller/user_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final userController = Get.put(UserProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Users Profile'),
        ),
        body: Obx(
          () => userController.isLoading.value
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Container(
                color: Colors.grey[200],
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: ListView.builder(
                      itemCount: userController.userProfileList.length,
                      itemBuilder: (BuildContext context, index) {
                        return Card(
                          elevation:5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),

                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  '${userController.userProfileList[index].avatar}'),
                            ),
                            title: Text(
                                '${userController.userProfileList[index].first_name} ${userController.userProfileList[index].last_name}'),
                            subtitle: Text(
                                '${userController.userProfileList[index].email}'),
                          ),
                        );
                      }),
                ),
              

        ));

  }
}
