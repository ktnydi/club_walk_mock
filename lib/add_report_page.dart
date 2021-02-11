import 'package:flutter/material.dart';

class AddReport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Report'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Material(
                    elevation: 1,
                    borderRadius: BorderRadius.circular(24),
                    clipBehavior: Clip.antiAlias,
                    child: Container(
                      width: 48,
                      height: 48,
                      child: Image.network(
                        'https://avatars.githubusercontent.com/u/36891892?s=460&u=37a046d0285781e133c0d4958536fe042a969b85&v=4',
                        width: 48,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Flexible(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextFormField(
                          scrollPadding: EdgeInsets.zero,
                          autofocus: true,
                          maxLines: null,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.zero,
                            hintText: 'Let\'s share your running report.',
                            isDense: true,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Material(
                                elevation: 1,
                                borderRadius: BorderRadius.circular(8),
                                clipBehavior: Clip.antiAlias,
                                child: AspectRatio(
                                  aspectRatio: 5 / 3,
                                  child: Image.network(
                                    'https://images.unsplash.com/flagged/photo-1556746834-cbb4a38ee593?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1052&q=80',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                  child: Icon(Icons.close),
                                  style: ElevatedButton.styleFrom(
                                    shape: CircleBorder(),
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    minimumSize: Size(32, 32),
                                    primary: Colors.black54,
                                    padding: EdgeInsets.zero,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SafeArea(
            child: Container(
              height: 50,
              padding: EdgeInsets.only(right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton.icon(
                    icon: Icon(Icons.photo_outlined),
                    label: Text('Select photo'),
                    style: TextButton.styleFrom(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                    ),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text('Post'),
                    style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      minimumSize: Size.zero,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
