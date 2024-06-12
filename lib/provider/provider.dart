import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import '../modal/modal.dart';

class Dataprovider extends ChangeNotifier{
  List datalist =[];
  List<datamodal> userlist =[];
  dataprovider(){
    print('_____________________________________________________________________');
    Tojson();
    print('_____________________________________________________________________');
  }
  Future<void> Tojson()async {
    String? json  = await rootBundle.loadString('lib/uitels/list.json');
    datalist =jsonDecode(json);
    userlist = datalist.map((e) => datamodal.fromJson(e),).toList();
    print(userlist);
    notifyListeners();

  }
}