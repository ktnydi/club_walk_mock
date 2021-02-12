import 'package:flutter/material.dart';

class AddReply extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            16,
            16,
            16,
            16 + MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 40,
                height: 8,
                decoration: BoxDecoration(
                  color: Theme.of(context).disabledColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              SizedBox(height: 16),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Reply to report',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    autofocus: true,
                    maxLines: 7,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter comment...',
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    child: Text('Send'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 44),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
