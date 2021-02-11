import 'package:club_walk_mock/edit_profile_page.dart';
import 'package:club_walk_mock/setting_page.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Setting(),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: SafeArea(
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Material(
                          elevation: 1,
                          shape: CircleBorder(),
                          clipBehavior: Clip.antiAlias,
                          child: Container(
                            width: 80,
                            height: 80,
                            child: Image.network(
                              'https://avatars.githubusercontent.com/u/36891892?s=460&u=37a046d0285781e133c0d4958536fe042a969b85&v=4',
                            ),
                          ),
                        ),
                        ElevatedButton(
                          child: Text('Edit Profile'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EditProfile(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Text(
                      'John Smith',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Hi, guys, I am John Smith. I enjoy walking every day. If you are interested in me, please follow me. Thank you!',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Text(
                          'Follow ',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        Text(
                          '12',
                          style: Theme.of(context).textTheme.subtitle1.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        SizedBox(width: 16),
                        Text(
                          'Follower ',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        Text(
                          '34',
                          style: Theme.of(context).textTheme.subtitle1.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Report',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        child: Text('Post'),
                        style: TextButton.styleFrom(
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          minimumSize: Size.zero,
                          padding: EdgeInsets.all(8),
                          backgroundColor: Theme.of(context)
                              .colorScheme
                              .secondary
                              .withOpacity(0.16),
                        ),
                        onPressed: () {},
                      ),
                      TextButton(
                        child: Text('Like'),
                        style: TextButton.styleFrom(
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          minimumSize: Size.zero,
                          padding: EdgeInsets.all(8),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 8),
              ListView.separated(
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) => SizedBox(height: 8),
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10,
                      ),
                      child: Row(
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Text(
                                    'John Smith',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                Text(
                                  'I have walked on main street for 2 hours. I want to became slim.',
                                ),
                                index % 4 == 0
                                    ? Padding(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Material(
                                          elevation: 1,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          clipBehavior: Clip.antiAlias,
                                          child: Container(
                                            width: double.infinity,
                                            height: 160,
                                            child: Image.network(
                                              'https://images.unsplash.com/flagged/photo-1556746834-cbb4a38ee593?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1052&q=80',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      )
                                    : SizedBox(),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.favorite_border,
                                      size: 16,
                                    ),
                                    SizedBox(width: 4),
                                    Text(
                                      '13',
                                      style:
                                          Theme.of(context).textTheme.subtitle2,
                                    ),
                                    SizedBox(width: 16),
                                    Text(
                                      'Reply',
                                    ),
                                    SizedBox(width: 4),
                                    Text(
                                      '4',
                                      style:
                                          Theme.of(context).textTheme.subtitle2,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
