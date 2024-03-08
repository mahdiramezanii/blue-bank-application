import "package:flutter/material.dart";

class HomeScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.blue,
            automaticallyImplyLeading: false,
            expandedHeight: 170,
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.help,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.notifications_none_outlined,
                        color: Colors.white,
                      ),
                      Spacer(),
                      Text(
                        "خانه",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w900),
                      ),
                      Spacer(),
                      Icon(
                        Icons.notifications_none_outlined,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.notifications_none_outlined,
                        color: Colors.white,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
