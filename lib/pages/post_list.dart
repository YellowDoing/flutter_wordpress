import 'dart:html';

import 'package:flutter/widgets.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class PostListPage extends StatefulWidget {
  //文章目录
  final String _catalog;

  PostListPage(this._catalog);

  @override
  _PostListState createState() => _PostListState();
}

class _PostListState extends State<PostListPage> {
  final RefreshController _refreshController =
  RefreshController(initialRefresh: true);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SmartRefresher(
          controller: _refreshController,
        onRefresh: () async => _getData(true),
        onLoading:  () async => _getData(false),
          child: ListView.builder(
              itemBuilder: _listItem),
        )
    );
  }

  /// 获取文章列表  true 下拉刷新 false 上拉加载更多
  void _getData(refreshOrLoadMore){
    // monitor network fetch



    // if failed,use refreshFailed()
  }

  //文章列表项
  Widget _listItem(BuildContext buildContext, int position) {



    return Container(

    );
  }
}
