import 'package:firsttask/Day%2015/Api%20Calling/model/personModel.dart';
import 'package:firsttask/Day%2015/Api%20Calling/services/firebaseFetch.dart';
import 'package:flutter/material.dart';

class uploadDataBottomSheet extends StatefulWidget {
  Person data;
  uploadDataBottomSheet(this.data);
  @override
  State<uploadDataBottomSheet> createState() => _uploadDataBottomSheetState();
}

class _uploadDataBottomSheetState extends State<uploadDataBottomSheet> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _categoryController = TextEditingController();
  TextEditingController _contactController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _nameController.text = widget.data.name;
    _emailController.text = widget.data.email;
    _categoryController.text = widget.data.category;
    _contactController.text = widget.data.contact;
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Card(
        //elevation: 5,
        child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  onChanged: (val) {
                    _nameController.text = val;
                  },
                  controller: _nameController,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      hintText: "Enter Name",
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 2))),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  onChanged: (val) {
                    _emailController.text = val;
                  },
                  controller: _emailController,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      hintText: "Enter email",
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 2))),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  onChanged: (val) {
                    _categoryController.text = val;
                  },
                  controller: _categoryController,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      hintText: "Enter category",
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 2))),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  onChanged: (val) {
                    _contactController.text = val;
                  },
                  controller: _contactController,
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "Enter contact",
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 2))),
                ),
                SizedBox(
                  height: 25,
                ),
                (widget.data.id == null)
                    ? ElevatedButton(
                        onPressed: () {
                          setState(() {
                            FirebaseFetch().postData(Person(
                                email: _emailController.text,
                                category: _categoryController.text,
                                contact: _contactController.text,
                                name: _nameController.text));
                          });
                          Navigator.pop(context);
                        },
                        child: Text("Upload"))
                    : ElevatedButton(
                        onPressed: () {
                          setState(() {
                            FirebaseFetch().updateData(Person(
                                id: widget.data.id,
                                email: _emailController.text,
                                category: _categoryController.text,
                                contact: _contactController.text,
                                name: _nameController.text));
                          });
                          Navigator.pop(context);
                        },
                        child: Text("Update")),
              ],
            )),
      ),
    );
  }
}
