import 'package:flutter/material.dart';
import 'package:geographical/Model/Location_Model.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  Widget build(BuildContext context) {
    var locationModel = Provider.of<LocationModel?>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
            child: Text(
                "Latitude:${locationModel?.latitude},Longitude:${locationModel?.longitude}")),
      ),
    );
  }
}
