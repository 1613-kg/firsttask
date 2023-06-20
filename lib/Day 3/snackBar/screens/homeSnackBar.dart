import 'package:flutter/material.dart';

class homeSnackBar extends StatelessWidget {
  const homeSnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar Screen"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              final snackBar = SnackBar(
                content: Text("This is a snackbar message"),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {},
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: Text("Show Snackbar")),
      ),
    );
  }
}
