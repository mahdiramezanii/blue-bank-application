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
                      Padding(padding: EdgeInsets.only(top: 50)),
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
        body: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 30)),
            Container(
              width: 370,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadiusDirectional.circular(20)),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "برگشت پول",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w800),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "قبض",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w800),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "اینترنت",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w800),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "شارژ",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w800),
                      )
                    ],
                  ),
                ],
              ),

            ),
            SizedBox(height: 15,),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27),
              child: Row(
               mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "پرداخت خودکار",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w800),
                      )
                    ],
                  ),
                  SizedBox(width: 5,),
                  Column(
                    children: [
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "وام",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w800),
                      )
                    ],
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
