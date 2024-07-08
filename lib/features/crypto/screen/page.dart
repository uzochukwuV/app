import 'dart:convert';

import 'package:apk/features/crypto/model/crypto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import "package:http/http.dart" as http;

class CryptoPage extends StatefulWidget {
  const CryptoPage({Key? key}) : super(key: key);

  @override
  State<CryptoPage> createState() => _CryptoPageState();
}

class _CryptoPageState extends State<CryptoPage> {
  Future<List<Crypto>> getCoins() async {
    print("Is Fetching");
    var uri = Uri.parse(
        "https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest");
    var request = await http.get(uri,
        headers: {"X-CMC_PRO_API_KEY": "1cf262c5-ceb1-4f78-820a-8dc03aaf7331"});
    print("Is Fetching2");
    if (request.statusCode == 200) {
      print("Is Fetching3");
      var response = jsonDecode(request.body);
      print("Is Fetching4");
      print(response);
      return response.data.map((value) => Crypto.fromJson(value));
    } else {
      print("Is Fetching Error");
      throw Exception("Error getting ");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      padding: EdgeInsets.only(top: 100.h),
      child: SingleChildScrollView(
          child: FutureBuilder(
        future: getCoins(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          }
          print(snapshot.data);
          return Column(
            children: [
              ListTile(
                leading: CircleAvatar(radius: 12),
                title: Text("Bitcoin"),
                subtitle: Text("BTC"),
                trailing: Column(
                  children: [Text("91,234,500"), Text("0.12%")],
                ),
              )
            ],
          );
        },
      )),
    );
  }
}

//flutterfire configure --project=whalepay-287d7