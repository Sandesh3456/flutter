
import 'package:hamroshop/api/profileApi.dart';
import 'package:hamroshop/api/userAPI.dart';
import 'package:hamroshop/models/profiles.dart';
import 'package:hamroshop/models/userModel.dart';
import 'package:hamroshop/response/profileResponse.dart';

class ProfileRepository {
  Future<ProfileResponse?> getProfile() async {
    return await ProfileAPI().getprofile();
  }
  Future<bool> loginUser(User user) async {
    return await UserAPI().loginUser(user);
  }
  
  Future<bool> changePassword(String? oldPassword, String? newPassword, String? passwordConfirm) async {
    return await UserAPI().changePassword(oldPassword, newPassword, passwordConfirm);
  }
  Future<bool> updateProfile(String? name, String? email,) async {
    return await UserAPI().updateProfile(name,email );
  }
}
