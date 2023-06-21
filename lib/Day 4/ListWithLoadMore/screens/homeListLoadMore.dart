import 'package:flutter/material.dart';
import 'package:loadmore/loadmore.dart';

class homeListLoadMore extends StatefulWidget {
  const homeListLoadMore({super.key});

  @override
  State<homeListLoadMore> createState() => _homeListLoadMoreState();
}

class _homeListLoadMoreState extends State<homeListLoadMore> {
  Future<void> _refresh() async {
    await Future.delayed(const Duration(seconds: 0, milliseconds: 100));
    list.clear();
    load();
  }

  void load() {
    setState(() {
      list.addAll(List.generate(5, (v) => v));
    });
  }

  Future<bool> _loadMore() async {
    await Future.delayed(Duration(seconds: 0, milliseconds: 100));
    load();
    return true;
  }

  int get count => list.length;

  List<int> list = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List LoadMore Screen"),
      ),
      body: Container(
        child: RefreshIndicator(
          onRefresh: _refresh,
          child: LoadMore(
            isFinish: count >= 1000,
            onLoadMore: _loadMore,
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  child: Text(list[index].toString()),
                  height: 40.0,
                  alignment: Alignment.center,
                );
              },
              itemCount: count,
            ),
          ),
        ),
      ),
    );
  }
}
