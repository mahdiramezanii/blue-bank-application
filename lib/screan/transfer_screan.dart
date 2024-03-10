import "dart:ui";

import "package:flutter/material.dart";

class TransferScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverPadding(padding: EdgeInsets.only(top: 30)),
            SliverAppBar(
              automaticallyImplyLeading: false,
              shadowColor: Colors.transparent,
              elevation: 0.0,
              surfaceTintColor: Colors.white,
              backgroundColor: Colors.white,
              pinned: true,
              floating: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: Row(
                    children: [
                      Icon(
                        Icons.help,
                        color: Colors.blue,
                        size: 30,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.date_range,
                        color: Colors.blue,
                        size: 30,
                      ),
                      Spacer(),
                      Text(
                        "انتقال",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Icon(
                        Icons.qr_code,
                        color: Colors.blue,
                        size: 30,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.blue,
                        size: 35,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "مقصد های اخیر",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(bottom: 10, top: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "مهدی رمضانی سرخونی",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("6543542698776213")
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(image: AssetImage("assets/images/avatar.png"),fit: BoxFit.cover )
                          ),
                         
                        ),
                      ],
                    ),
                  );
                },
                childCount: 50,
              ),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: SizedBox(
          width: double.infinity,
          height: 80,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.6),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    )
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(

                    backgroundColor: Colors.blue, minimumSize: Size(160, 52)),
                    
                onPressed: () {},
                child: Text(
                  " انتقال جدید  + ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize:22
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
