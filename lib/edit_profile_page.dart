import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Center(
              child: Column(
                children: [
                  Material(
                    elevation: 1,
                    shape: CircleBorder(),
                    clipBehavior: Clip.antiAlias,
                    child: Container(
                      width: 120,
                      height: 120,
                      child: Image.network(
                        'https://avatars.githubusercontent.com/u/36891892?s=460&u=37a046d0285781e133c0d4958536fe042a969b85&v=4',
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    child: Text('Select Image'),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            SizedBox(height: 32),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    initialValue: 'John Smith',
                    validator: (value) {
                      if (value.trim().isEmpty) {
                        return 'Please enter Name.';
                      }

                      if (value.length <= 1) {
                        return 'Name is 2 count or more.';
                      }

                      if (value.length > 20) {
                        return 'Name is within 20 count.';
                      }

                      return null;
                    },
                    maxLength: 20,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'About',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    initialValue:
                        'I have began Clubwalk at Feb, 11 2021. Thank you.',
                    validator: (value) {
                      if (value.trim().isEmpty) {
                        return 'Please enter About.';
                      }

                      if (value.length <= 6) {
                        return 'About is 7 count or more.';
                      }

                      if (value.length > 120) {
                        return 'About is within 120 count.';
                      }

                      return null;
                    },
                    maxLines: 5,
                    maxLength: 140,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: ElevatedButton(
                      child: Text('Update'),
                      onPressed: () {
                        if (!_formKey.currentState.validate()) return;
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
