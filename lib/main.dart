import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:json_exam/provider/provider.dart';

void main() {
  runApp( json());
}
class json extends StatelessWidget {
  const json({super.key});

  @override
  Widget build(BuildContext context) {
    DataProviderJson provider = Provider.of<Dataprovider>(context,listen: true);
    DataProviderJson providerF = Provider.of<Dataprovider>(context,listen: false);
    log('-------------------- ${provider.dataList.length}');
    return Scaffold(
      appBar: AppBar(
        title: Text('json parsing'),
      ),
      body: ListView.builder(
        itemCount: provider.userlist.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(
            provider.userList[index].name!,
          ),
          subtitle: Text(provider.userList[index].address!.geo!.lng!),



        ),
      ),
    );
  }
}
