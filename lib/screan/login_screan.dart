import "package:blue_bank_application/screan/home_srean.dart";
import "package:flutter/material.dart";

class LoginScrean extends StatefulWidget {
  @override
  State<LoginScrean> createState() => _LoginScreanState();
}

class _LoginScreanState extends State<LoginScrean> {
  var _selectedInput = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      
        resizeToAvoidBottomInset: false,
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
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Center(
                child: Image.asset("assets/images/blu.png"),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(230, 230, 230, 1),
                  borderRadius: BorderRadius.circular(15),
                  border: _selectedInput == true
                      ? Border.all(width: 1, color: Colors.blue)
                      : Border.all(width: 1, color: Colors.transparent)),
              child: Column(
                children: [
                  TextField(
                    onTap: () {
                      setState(() {
                        _selectedInput = true;
                      });
                    },
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: "نام کاربری خود را وارد کنید",
                      hintStyle: TextStyle(color: Colors.black, fontSize: 18),
                      enabledBorder:
                          UnderlineInputBorder(borderSide: BorderSide.none),
                      contentPadding: EdgeInsets.symmetric(horizontal: 22),
                      focusedBorder:
                          UnderlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                  Divider(endIndent: 30, indent: 30),
                  TextField(
                    onTap: () {
                      setState(() {
                        _selectedInput = true;
                      });
                    },
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: "رمز عبور خود را وارد کنید",
                      hintStyle: TextStyle(color: Colors.black, fontSize: 18),
                      enabledBorder:
                          UnderlineInputBorder(borderSide: BorderSide.none),
                      contentPadding: EdgeInsets.symmetric(horizontal: 22),
                      focusedBorder:
                          UnderlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  maximumSize: Size(380, 100),
                  minimumSize: Size(10, 60)),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return HomeScrean();
                }));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "ورود با اثر انگشت",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.fingerprint,
                    color: Colors.white,
                    size: 30,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "نیاز به کمک دارم",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                  fontWeight: FontWeight.w900),
            ),
            Spacer(),
            Text(
              "Version 2.0.1",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
