import 'package:flutter/material.dart';

class PageFirstData {
  final bool like;
  final AssetImage image;
  final String name;
  final String desc;
  final double star;
  final int count;
  final String time;
  final String price;

  PageFirstData(
      this.like,
      this.image,
      this.name,
      this.desc,
      this.star,
      this.count,
      this.time,
      this.price,
      );
}

class PageSecondData {
  final AssetImage image;
  final String name;
  final String desc;
  final double star;
  final int count;
  final String time;
  final String price;

  PageSecondData(
      this.image,
      this.name,
      this.desc,
      this.star,
      this.count,
      this.time,
      this.price,
      );
}

class CateguryData {
  final String icon;
  final String name;
  CateguryData(this.icon, this.name);
}

var pageWidth;
var pageHeight;
const String ims = 'assets/images/';
