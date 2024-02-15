import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/textfield.dart';

import 'HeaderCurvedContainer.dart';

class profilePage extends StatelessWidget {
  const profilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor:Color.fromRGBO(29, 93, 37,1),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
            child: Stack(alignment: Alignment.center, children: [
              CustomPaint(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                ),
                painter: HeaderCurvedContainer(),
              ),
              Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Profile",
                    style: TextStyle(
                      fontSize: 35,
                      letterSpacing: 1.5,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 5),
                      shape: BoxShape.circle,
                      color: Colors.white,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/pro.jpg'),
                      ),
                    ),
                  ),
                ],
              ),
              // Padding(
              //   padding: EdgeInsets.only(bottom: 100, left: 150),
              //   child: CircleAvatar(
              //     backgroundColor: Colors.black54,
              //     child: IconButton(
              //       icon: Icon(
              //         Icons.edit,
              //         color: Colors.white,
              //       ),
              //       onPressed: () {},
              //     ),
              //   ),
              // )
            ]),
          ),
          Container(
            height: 415,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                textfield(
                  hintText: 'Username',
                ),
                textfield(
                  hintText: 'Email',
                ),
                textfield(
                  hintText: 'Password',
                ),
                textfield(
                  hintText: 'phone number',
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Container(
                        height: 55,
                      
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Color.fromRGBO(29, 93, 37,1)),
                          ),
                          child: const Center(
                            child: Text(
                              "Update",
                              style: TextStyle(
                                fontSize: 23,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),SizedBox(width: 5,),
                    Expanded(
                      child: Container(
                        height: 55,
                       // width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Color.fromRGBO(29, 93, 37,1)),
                          ),
                          child: const Center(
                            child: Text(
                              "LOG OUT",
                              style: TextStyle(
                                fontSize: 23,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ]));
  }
}
