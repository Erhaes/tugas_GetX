import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/data_controller.dart';

class DataView extends StatelessWidget {
  final DataController dataController = Get.put(DataController());

  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Data item'),
      ),
      body: Obx((){
          return ListView.builder(
            itemCount: dataController.items.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(dataController.items[index]),
              );
            },
          );
        }
      ),
    );
  }
}