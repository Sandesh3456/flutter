import 'package:dio/dio.dart';
import 'package:hamroshop/response/profileResponse.dart';
import 'package:hamroshop/util/urls.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'httpservices.dart';

class ProfileAPI {
  Future<ProfileResponse?> getprofile() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    String? token = sharedPreferences.getString('token');

    Future.delayed(const Duration(seconds: 2), () {});
    ProfileResponse? profileResponse;
    try {
      var dio = HttpServices().getDioInstance();
      var url = baseUrl + getProfileUrl;
      Response response = await dio.get(url,
          options: Options(
            headers: {
              'Authorization': 'Bearer ' + token!,
            },
          ));

      print(response.data['user']);

      if (response.statusCode == 200) {
        print(response.data['user']);

        profileResponse = ProfileResponse.fromJson(response.data);
        print("no");
      }
    } catch (e) {
      throw Exception(e);
    }
    return profileResponse;
  }
}
