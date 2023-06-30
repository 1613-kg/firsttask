import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firsttask/Day%2011/Firebase%20Storage/services/database_services.dart';
import 'package:flutter/material.dart';

class inputFromUser extends StatefulWidget {
  inputFromUser({super.key});

  @override
  State<inputFromUser> createState() => _inputFromUserState();
}

class _inputFromUserState extends State<inputFromUser> {
  TextEditingController controller = TextEditingController();
  String text = "Empty Text";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Screen"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                controller: controller,
                decoration: InputDecoration(
                    hintText: "Write a message",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black))),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    DatabaseServices("1").savingUserData(controller.text);
                  },
                  child: Text("Upload")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () async {
                    QuerySnapshot snapshot =
                        await DatabaseServices("1").gettingUserData();
                    setState(() {
                      text = snapshot.docs[0]['message'];
                    });
                  },
                  child: Text("Get Data")),
              SizedBox(
                height: 10,
              ),
              Text(text),
            ],
          ),
        ),
      ),
    );
  }
}
