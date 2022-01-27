import 'dart:convert';
import 'package:get/get.dart';
import 'package:test_users/src/Modules/Users/model/user_model.dart';
import 'package:http/http.dart' as http;

class UserProfileController extends GetxController {
  final isLoading = false.obs;
  final userProfileList = <UserProfile>[].obs;
  final users = const UserProfile().obs;

  Future<List<UserProfile>> onFetchUsersProfile() async {
    isLoading(true);
    String url = 'https://reqres.in/api/users?page=2';
    try {
      await http.get(Uri.parse(url), headers: {
        "Accept": "application/json",
        "Content-Type": "application/json",
      }).then((response) {
        if (response.statusCode == 200) {
          var responseJson = json.decode(response.body)["data"];
          userProfileList.clear();
          responseJson.map((json) {
            users.value = UserProfile.fromJson(json);
            userProfileList.add( users.value);
          }).toString();
          print(responseJson[0]['hany']);
        } else if (response.statusCode == 400) {
          print('code not fuond===========');
        } else {}
      });
    } catch (e) {
      print(e);
    } finally {
      isLoading(false);
    }
    return userProfileList;
  }
  @override
  void onInit() {
    onFetchUsersProfile();

    super.onInit();
  }
}
