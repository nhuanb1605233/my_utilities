import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_utilities/common/constants/contants.dart';
import 'package:my_utilities/common/helpers/my_behavior.dart';
import 'package:my_utilities/widgets/widgets.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
           alignment: Alignment.bottomCenter,
            children: [
              ClipPath(
                clipper:MyClipper(),
                child: Container(
                    padding: EdgeInsets.only(top: 100,left: 24,right: 24),
                    height: 350,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Colors.blue,
                              Colors.pinkAccent
                            ]
                        )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hello",style: TextStyleContants.contentStyle1,),
                            SizedBox(height: 12,),
                            Text("Trần Phú Nhuận",style: TextStyleContants.contentStyle2)
                          ],
                        ),
                        Spacer(),
                        Container(
                          height: 70,
                          width: 70,
                          child:  CircleAvatar(
                            backgroundImage: AssetImage("assets/images/avatar.jpg"),
                          ),
                        )
                      ],
                    )
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24),
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [BoxShadow(color: Color(0xFFF3F5FF).withOpacity(1), spreadRadius: 1, blurRadius: 1, offset: Offset(0, 3))],
                ),
                child: ScrollConfiguration(
                  behavior: MyBehavior(),
                  child: ListView.builder(
                      itemCount: 3,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        return ItemMenuHomeTop();
                      }
                  ),
                ),
              ),
            ],
          ),
          Text("Nhuan")
        ],
      ),
    );
  }
}
