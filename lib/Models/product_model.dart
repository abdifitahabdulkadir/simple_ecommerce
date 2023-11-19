// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:simple_ecommerce/Models/user_model.dart';

class ProductModel {
  final String id;
  final String name;
  final String specification;
  final String description;
  final List<Color> color;
  final double ratingValue;
  final double price;
  final bool isFavored;
  final String imageUrl;
  final ProductCategory category;
  final List<Review> review;
  ProductModel({
    required this.id,
    required this.name,
    required this.specification,
    required this.description,
    required this.color,
    required this.ratingValue,
    required this.price,
    required this.isFavored,
    required this.imageUrl,
    required this.category,
    required this.review,
  });

  ProductModel copyWith({
    String? id,
    String? name,
    String? specification,
    String? description,
    List<Color>? color,
    double? ratingValue,
    double? price,
    bool? isFavored,
    String? imageUrl,
    ProductCategory? category,
    List<Review>? review,
  }) {
    return ProductModel(
      id: id ?? this.id,
      name: name ?? this.name,
      specification: specification ?? this.specification,
      description: description ?? this.description,
      color: color ?? this.color,
      ratingValue: ratingValue ?? this.ratingValue,
      price: price ?? this.price,
      isFavored: isFavored ?? this.isFavored,
      imageUrl: imageUrl ?? this.imageUrl,
      category: category ?? this.category,
      review: review ?? this.review,
    );
  }
}

enum ProductCategory {
  electeronics,
  clothes,
  homefurniture,
}

class Review {
  final String id;
  final String value;
  final UserModel user;

  Review({required this.user, required this.id, required this.value});

  Review copyWith({
    String? id,
    String? value,
    UserModel? user,
  }) {
    return Review(
      user: user ?? this.user,
      id: id ?? this.id,
      value: value ?? this.value,
    );
  }
}
