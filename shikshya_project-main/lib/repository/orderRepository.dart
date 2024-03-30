
import 'package:hamroshop/api/orderApi.dart';
import 'package:hamroshop/api/userAPI.dart';
import 'package:hamroshop/models/product.dart';
import 'package:hamroshop/models/userModel.dart';
import 'package:hamroshop/response/orderResponse.dart';

class ProductRepository {
  Future<OrderResponse?> getOrderHistory() async {
    return await OrderAPI().getOrderHistory();
  }
}
