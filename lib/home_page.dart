import 'package:club_walk_mock/analysis_page.dart';
import 'package:club_walk_mock/profile_page.dart';
import 'package:club_walk_mock/report_detail_page.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            elevation: 0,
            leading: IconButton(
              icon: Icon(Icons.person_outlined),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profile(),
                  ),
                );
              },
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.leaderboard_outlined),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Analysis(),
                    ),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.notifications_outlined),
                onPressed: () {},
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SafeArea(
                  top: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListView(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Text(
                              'Today',
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                          SingleChildScrollView(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Material(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width / 2 -
                                            40,
                                    padding: const EdgeInsets.all(16),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'STEP',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSecondary,
                                          ),
                                        ),
                                        SizedBox(height: 8),
                                        Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: '6071',
                                                style: TextStyle(
                                                  fontSize: 24,
                                                ),
                                              ),
                                              TextSpan(
                                                text: ' steps',
                                              ),
                                            ],
                                          ),
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSecondary,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 8),
                                Material(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width / 2 -
                                            40,
                                    padding: const EdgeInsets.all(16),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'DISTANCE',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSecondary,
                                          ),
                                        ),
                                        SizedBox(height: 8),
                                        Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: '2.3',
                                                style: TextStyle(
                                                  fontSize: 24,
                                                ),
                                              ),
                                              TextSpan(
                                                text: ' km',
                                              ),
                                            ],
                                          ),
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSecondary,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 8),
                                Material(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width / 2 -
                                            40,
                                    padding: const EdgeInsets.all(16),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'CONSUMPTION',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSecondary,
                                          ),
                                        ),
                                        SizedBox(height: 8),
                                        Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: '1043',
                                                style: TextStyle(
                                                  fontSize: 24,
                                                ),
                                              ),
                                              TextSpan(
                                                text: ' cal',
                                              ),
                                            ],
                                          ),
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSecondary,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Stopwatch',
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Use for measuring running or walking time.',
                              style: Theme.of(context).textTheme.caption,
                            ),
                            SizedBox(height: 8),
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Container(
                                padding: EdgeInsets.all(16),
                                width: double.infinity,
                                child: Column(
                                  children: [
                                    Text(
                                      '00:00:00',
                                      style: TextStyle(
                                        fontSize: 40,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            OutlinedButton(
                                              child: Icon(
                                                Icons.replay_outlined,
                                                size: 32,
                                              ),
                                              style: OutlinedButton.styleFrom(
                                                shape: CircleBorder(),
                                                padding: EdgeInsets.all(16),
                                              ),
                                              onPressed: () {},
                                            ),
                                            SizedBox(height: 4),
                                            Text(
                                              'Reset',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption,
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            OutlinedButton(
                                              child: Icon(
                                                Icons.play_arrow_outlined,
                                                size: 32,
                                              ),
                                              style: OutlinedButton.styleFrom(
                                                shape: CircleBorder(),
                                                padding: EdgeInsets.all(16),
                                              ),
                                              onPressed: () {},
                                            ),
                                            SizedBox(height: 4),
                                            Text(
                                              'Start',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption,
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            OutlinedButton(
                                              child: Icon(
                                                Icons.check,
                                                size: 32,
                                              ),
                                              style: OutlinedButton.styleFrom(
                                                shape: CircleBorder(),
                                                padding: EdgeInsets.all(16),
                                              ),
                                              onPressed: () {},
                                            ),
                                            SizedBox(height: 4),
                                            Text(
                                              'Done',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ListView(
                        padding: EdgeInsets.all(16),
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        children: [
                          Text(
                            'Report',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          ListView.separated(
                            padding: EdgeInsets.zero,
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder: (context, index) =>
                                SizedBox(height: 8),
                            itemBuilder: (context, index) {
                              return Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                clipBehavior: Clip.antiAlias,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ReportDetail(),
                                      ),
                                    );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 10,
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Material(
                                          elevation: 1,
                                          borderRadius:
                                              BorderRadius.circular(24),
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
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
                                                      padding: EdgeInsets.only(
                                                          top: 10),
                                                      child: Material(
                                                        elevation: 1,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        child: Container(
                                                          width:
                                                              double.infinity,
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
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .subtitle2,
                                                  ),
                                                  SizedBox(width: 16),
                                                  Text(
                                                    'Reply',
                                                  ),
                                                  SizedBox(width: 4),
                                                  Text(
                                                    '4',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .subtitle2,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                            itemCount: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
