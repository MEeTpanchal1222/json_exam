
import 'dart:developer';


import 'package:flutter/material.dart';
import 'package:json_exam/provider/provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => Dataprovider(),)
        ],
        child: const json(),)

  );
}
class json extends StatelessWidget {
  const json({super.key});

  @override
  Widget build(BuildContext context) {
    Dataprovider provider = Provider.of<Dataprovider>(context,listen: true);
    Dataprovider providerF = Provider.of<Dataprovider>(context,listen: false);
    log('-------------------- ${provider.datalist.length}');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('json parsing'),
        ),
        body: ListView.builder(
          itemCount: provider.userlist.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(
              provider.userlist[index].posts as String,
            ),
            subtitle: Text('${provider.userlist[index].limit}'),



          ),
        ),
      ),
    );
  }
}
