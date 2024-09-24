import 'package:archanai/screens/archanai_detail.dart';
import 'package:archanai/screens/archanai_list.dart';
import 'package:flutter/material.dart';


class PageRoutes{
  static const String archanaiList = "/archanaiList";
  static const String archanaiDetail = "/archanaiDetail";

  defaultRoute() {
    return archanaiList;
  }
  Map<String, WidgetBuilder> routes() {
    return {
      archanaiList: (context) =>  const ArchanaiList(),
      archanaiDetail: (context) => const ArchanaiDetail(),
    };
  }
}
