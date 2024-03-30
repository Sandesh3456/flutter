
import 'dart:html';

import 'package:hamroshop/api/orderApi.dart';
import 'package:hamroshop/api/reviewAPI.dart';
import 'package:hamroshop/models/product.dart';
import 'package:hamroshop/models/review.dart';
import 'package:hamroshop/models/userModel.dart';
import 'package:hamroshop/response/reviewResponse.dart';
import 'package:objectbox/objectbox.dart';

class ReviewRepository {
  Future<bool> addReview(String id,int rating,String comment) async {
    return await ReviewApi().addReview(id,rating,comment);
    }

  Future<ReviewResponse?> getReviews(String? id) async {
    return await ReviewApi().getReviews(id);
    }
   
  
  }

