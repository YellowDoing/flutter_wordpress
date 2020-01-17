import 'package:flutter/material.dart';
import 'package:flutter_wordpress/enrty/catalog_entity.dart';
import 'package:flutter_wordpress/http.dart';

import 'api.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  final List<CatalogEntity>  _catalogs = new List();

  void _createPost() {

  }

  @override
  void initState() {
    _getCatalogs();
    super.initState();

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _createPost,
        tooltip: 'createPost',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  ///获取文章目录
  void _getCatalogs(){
      get(Catalogs,(data){
        setState(() {
          data['data'].forEach((e)=> _catalogs.add(CatalogEntity.fromJson(e)));
        });
      });
  }
}
