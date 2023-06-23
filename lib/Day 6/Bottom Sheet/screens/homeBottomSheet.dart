import 'package:flutter/material.dart';

class homeBottomSheet extends StatefulWidget {
  const homeBottomSheet({super.key});

  @override
  State<homeBottomSheet> createState() => _homeBottomSheetState();
}

class _homeBottomSheetState extends State<homeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Show Bottom Sheet'),
          onPressed: () {
            showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  height: 400,
                  color: Colors.blue,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('This is Bottom Sheet'),
                        ElevatedButton(
                          child: const Text('Close Bottom Sheet'),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
