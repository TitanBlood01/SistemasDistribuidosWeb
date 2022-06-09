import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:news/constants.dart';
import 'package:news/models/espacioParq_model.dart';

class ListaParqueosScreen extends StatefulWidget {

  @override
  _ListaParqueosState createState() => _ListaParqueosState();
}

class _ListaParqueosState extends State<ListaParqueosScreen> {
  
List Data;

Future<List> getData() async {
  var url = Uri.parse('http://192.168.0.20:3000/api/espaciosParq');
  var response = await http.get(url);
  if(response.statusCode == 200){
    final json = "[" + response.body + "]";
    print(json);
    List list = (jsonDecode(json) as List);
    return list;
  }
  
}

 @override
 void initState() {
   super.initState();
    this.getData();
 }

  @override
  Widget build(BuildContext context) {
    return 
        new FutureBuilder<List>(
            future: getData(),
            builder: (context, snapshot) {
              if (snapshot.hasError) print(snapshot.error);
              return snapshot.hasData
                  ? new DisParqList(
                      list: snapshot.data,
                    )
                  : new Center(
                      child: new CircularProgressIndicator(),
                    );
            },
    );
  }
}

class DisParqList extends StatelessWidget {
  
  final List list;
  const DisParqList({
    Key key,
    @required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: new ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: list == null ? 0 : list.length,
              itemBuilder: (context, i) {
                return new Container(
                  padding: EdgeInsets.all(kDefaultPadding),
                  child: /*new GestureDetector(
                    onTap: () => Navigator.of(context).push(
                          new MaterialPageRoute(
                              builder: (BuildContext context) => new Detail(
                                    list: list,
                                    index: i,
                                  )),
                        ),
                    child:*/ Padding(
                      padding: EdgeInsets.all(kDefaultPadding),
                      child: new Card(
                        child: new ListTile(
                          title: new Text(
                            list[i]['numero'].toString(),
                            style: TextStyle(fontSize: 25.0, color: Colors.orangeAccent),
                          ),
                         
                        ),
                      ),
                    ),
                  
                );
              },
           ),
    );
  }
}
