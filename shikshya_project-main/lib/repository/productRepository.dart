
import 'package:hamroshop/api/productApi.dart';
import 'package:hamroshop/api/userAPI.dart';
import 'package:hamroshop/models/product.dart';
import 'package:hamroshop/models/userModel.dart';
import 'package:hamroshop/response/productResponse.dart';

class ProductRepository {
  Future<ProductResponse?> getProfile(String? search) async {
    return await ProductAPI().getproduct(search);
  }
}
