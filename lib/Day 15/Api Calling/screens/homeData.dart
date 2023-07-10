import 'package:firsttask/Day%2015/Api%20Calling/model/personModel.dart';
import 'package:firsttask/Day%2015/Api%20Calling/services/firebaseFetch.dart';
import 'package:flutter/material.dart';

import '../Widget/uploadDataBottomSheet.dart';

class homeData extends StatefulWidget {
  const homeData({super.key});

  @override
  State<homeData> createState() => _homeDataState();
}

class _homeDataState extends State<homeData> {
  List<Person> _personData = [];
  TextEditingController _emailSearch = TextEditingController();
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();

  void _addPersonData(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return GestureDetector(
          onTap: () {},
          child: uploadDataBottomSheet(
              Person(email: "", category: "", contact: "", name: "")),
          behavior: HitTestBehavior.opaque,
        );
      },
    );
  }

  void _updatePersonData(BuildContext context, Person data) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return GestureDetector(
          onTap: () {},
          child: uploadDataBottomSheet(data),
          behavior: HitTestBehavior.opaque,
        );
      },
    );
  }

  void _getData() async {
    Map<String, dynamic> data = await FirebaseFetch().getData();
    _personData = [];
    data.forEach((dataId, dataItem) {
      setState(() {
        _personData.add(Person(
            id: dataId,
            email: dataItem['email'],
            category: dataItem['category'],
            contact: dataItem['contact'],
            name: dataItem['name']));
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    _getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _addPersonData(context);
        },
        child: Text(
          "+",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: RefreshIndicator(
        key: _refreshIndicatorKey,
        color: Colors.white,
        backgroundColor: Colors.blue,
        strokeWidth: 4.0,
        onRefresh: () async {
          setState(() {
            _getData();
          });
          return Future<void>.delayed(const Duration(seconds: 2));
        },
        notificationPredicate: (ScrollNotification notification) {
          return notification.depth == 1;
        },
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.fromLTRB(10, 50, 10, 0),
            child: Column(
              children: [
                ListView.builder(
                    physics: AlwaysScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: _personData.length,
                    itemBuilder: (context, index) {
                      return ExpansionTile(
                        subtitle: Text(
                          "Expand to view more",
                          style: TextStyle(
                              fontWeight: FontWeight.w200,
                              color: Colors.white10.withOpacity(0.7),
                              fontSize: 12),
                        ),
                        title: Text(
                          _personData[index].name,
                          style: TextStyle(color: Colors.white),
                        ),
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("id-${_personData[index].id}"),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Email-${_personData[index].email}"),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Category-${_personData[index].category}"),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Contact-${_personData[index].contact}"),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    ElevatedButton(
                                        onPressed: () {
                                          _updatePersonData(
                                              context, _personData[index]);
                                        },
                                        child: Text(
                                          "Update",
                                          style: TextStyle(color: Colors.green),
                                        )),
                                    SizedBox(
                                      width: 140,
                                    ),
                                    ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            FirebaseFetch().deleteData(
                                                _personData[index].id);
                                          });
                                          _refreshIndicatorKey.currentState
                                              ?.show();
                                        },
                                        child: Text(
                                          "Delete",
                                          style: TextStyle(color: Colors.red),
                                        )),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
