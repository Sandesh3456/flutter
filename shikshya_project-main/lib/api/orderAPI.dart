import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:hamroshop/api/httpservices.dart';
import 'package:hamroshop/response/orderResponse.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../util/urls.dart';

class OrderAPI {
  Future<OrderResponse> getOrderHistory() async {
    OrderResponse? orderResponse;
    try {
      var url = baseUrl + getOrderHistoryUrl;
      var dio = HttpServices().getDioInstance();
      SharedPreferences preferences;
      preferences = await SharedPreferences.getInstance();
      var token = preferences.getString('token');
      var response = await dio.get(url,
          options: Options(
              headers: {HttpHeaders.authorizationHeader: "Bearer $token"}));
      if (response.statusCode == 200) {
        orderResponse = OrderResponse.fromJson(response.data);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return orderResponse!;
  }

  Future createOrderHistory({
    ProductName,
    ProductImage,
    ProductPrice,
    PaymentType,
    Address,
  }) async {
    print(ProductName);
    try {
      var url = baseUrl + createOrder;
      var dio = HttpServices().getDioInstance();
      SharedPreferences preferences;
      preferences = await SharedPreferences.getInstance();
      var email = preferences.getString('email');
      var response = await dio.post(url, data: {
        "ProductName": ProductName,
        "ProductImage": ProductImage,
        "ProductPrice": ProductPrice,
        "PaymentType": PaymentType,
        "Address": Address,
        "Email": email,
      });
      print(response.statusCode);
      if (response.statusCode == 201) {
        return true;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return true;
  }
}
