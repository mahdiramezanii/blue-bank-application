import "package:flutter/material.dart";

class HomeScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Colors.blue,
              automaticallyImplyLeading: false,
              expandedHeight: 350,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(20),
                child: Container(
                  height: 16,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15))),
                ),
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 13,
                        ),
                        Icon(
                          Icons.help,
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Icon(
                          Icons.notifications_none_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                        Spacer(),
                        Text(
                          "خانه",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w300),
                        ),
                        Spacer(),
                        Icon(
                          Icons.inbox,
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(
                          width: 13,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "ریال",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "18,024,662",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.expand_more,
                          size: 40,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "موجودی",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(197, 197, 197, 0.3),
                                      borderRadius:
                                          BorderRadius.circular(1000)),
                                  child: Icon(
                                    Icons.connected_tv,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "مدیریت مالی",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 22),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(197, 197, 197, 0.3),
                                      borderRadius:
                                          BorderRadius.circular(1000)),
                                  child: Icon(
                                    Icons.widgets_rounded,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "باکس",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 22),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.circular(1000)),
                                  child: Icon(
                                    Icons.add,
                                    size: 50,
                                    color: Colors.blue,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "شارژ حساب",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 22),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SliverPersistentHeader(
                pinned: true, floating: true, delegate: ActivitiRow())
          ];
        },
        body: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(childCount: 10,
                  (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 15),
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        color: Color.fromARGB(255, 146, 235, 149),
                        child: Row(
                          children: [
                            Text("ریال"),
                            Text(" 1,300,00"),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "دریافت از کارت",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 22),
                              ),
                              Text(
                                "جمعه، 18 اسفند 1402 18:32:21",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(197, 197, 197, 0.4),
                                borderRadius: BorderRadius.circular(100)),
                            child: Icon(
                              Icons.interests_rounded,
                              color: Colors.green,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}

class ActivitiRow extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Icon(
              Icons.horizontal_rule_rounded,
              size: 50,
              color: Colors.grey,
            ),
          ],
        ));
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 70;

  @override
  // TODO: implement minExtent
  double get minExtent => 70;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return false;
  }
}
