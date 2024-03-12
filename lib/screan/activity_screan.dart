import "package:flutter/material.dart";

class ActivityScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: ((context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(15),
                child: Container(
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                ),
              ),
              expandedHeight: 315,
              pinned: true,
              floating: true,
              snap: false,
              elevation: 2.0,
              backgroundColor: Colors.blue,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 50),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 13,
                          ),
                          Icon(
                            Icons.help,
                            size: 30,
                            color: Colors.white,
                          )
                        ],
                      ),
                      SizedBox(
                        width: 170,
                        child: Image(
                          image: AssetImage("assets/images/qrcode.png"),
                        ),
                      ),
                      Text(
                        "QR انتقال و دریافت با کد",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                      Icon(
                        Icons.keyboard_double_arrow_down_outlined,
                        size: 40,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: HeaderPressistent(),
            )
          ];
        }),
        body: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              sliver: SliverToBoxAdapter(
                child: Stack(
                  children: [
                    StackContent().elementAt(0),
                    StackContent().elementAt(1),

                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 23, vertical: 5),
              sliver: SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Icon(
                            Icons.work_history,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "برگشت پول",
                          textAlign: TextAlign.end,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Icon(
                            Icons.receipt_long,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "قبض",
                          textAlign: TextAlign.end,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Icon(
                            Icons.network_check,
                            color: Colors.white,
                            size: 50,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "اینترنت",
                          textAlign: TextAlign.end,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Icon(
                            Icons.charging_station_sharp,
                            color: Colors.white,
                            size: 50,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "شارژ",
                          textAlign: TextAlign.end,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 5),
              sliver: SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Spacer(),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Icon(
                            Icons.auto_awesome,
                            color: Colors.white,
                            size: 50,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "پرداخت خودکار",
                          textAlign: TextAlign.end,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    // SizedBox(width: 5,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.green[900],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Icon(
                            Icons.paid,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "وام",
                          textAlign: TextAlign.end,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
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
    );
  }

  List<Widget> StackContent() {
    return [
      Container(
        width: 370,
        height: 110,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadiusDirectional.circular(20),
        ),
      ),
      Container(
        width: 370,
        height: 100,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 141, 17, 8),
          borderRadius: BorderRadiusDirectional.circular(20),
        ),
      ),
    ];
  }
}

class HeaderPressistent extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return Container(
      color: Colors.white,
      height: 10,
      child: Icon(
        Icons.horizontal_rule,
        size: 50,
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 10;

  @override
  // TODO: implement minExtent
  double get minExtent => 10;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return false;
  }
}
