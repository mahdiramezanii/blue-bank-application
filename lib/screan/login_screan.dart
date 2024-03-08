import "package:flutter/material.dart";

class LoginScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.help,
                  color: Color.fromARGB(255, 15, 107, 182),
                  size: 30,
                ),
              )
            ],
          ),
          Center(
            child: Image.asset("assets/images/blu.png"),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(230, 230, 230, 1),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    hintText: "...نام کاربری خود را وارد کنید",
                    enabledBorder:
                        UnderlineInputBorder(borderSide: BorderSide.none),
                    contentPadding: EdgeInsets.symmetric(horizontal: 22),
                    focusedBorder:
                        UnderlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
                Divider(endIndent: 30, indent: 30),
                TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    hintText: "...رمز عبور خود را وارد کنید",
                    enabledBorder:
                        UnderlineInputBorder(borderSide: BorderSide.none),
                    contentPadding: EdgeInsets.symmetric(horizontal: 22),
                    focusedBorder:
                        UnderlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
