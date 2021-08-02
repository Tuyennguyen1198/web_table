import 'package:flutter/material.dart';
import 'package:flutter_app_web_ui_ux/constants/style.dart';
import 'package:flutter_app_web_ui_ux/helpers/reponsiveness.dart';
import 'package:flutter_app_web_ui_ux/widgets/custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key)=>
    AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context) ?
      Row(
        children: [
          Container(
            padding: EdgeInsets.only(left: 14.0),
            child: Image.asset("icons/logo.png",width: 28.0,),
          )
        ],
      ):IconButton(icon: Icon(Icons.menu), onPressed: (){
        key.currentState.openDrawer();
      }),
      elevation: 0.0,

      title: Row(
        children: [
          Visibility(child: CustomText(text: "Dash",color: lightGrey,size: 20.0,weight: FontWeight.bold,)),
          Expanded(child: Container()),
          IconButton(icon: Icon(Icons.settings), onPressed: (){
            
          },color: dark.withOpacity(.7),),
          Stack(
            children: [
              IconButton(icon: Icon(Icons.notifications),color: dark.withOpacity(.7), onPressed: (){}),
              Positioned(
                  top: 7.0,
                  right: 7.0,
                  child: Container(
                    width: 12.0, height: 12.0,
                    padding: EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      color: active,
                        borderRadius: BorderRadius.circular(30.0),
                        border: Border.all(color: light,width: 2.0)),
              ))
            ],
          ),
          Container(
            width: 1.0,
            height: 22.0,
            color: lightGrey,
          ),

          CustomText(text: "Santos Enoque",color: lightGrey,),
          
          SizedBox(
            width: 16.0,
          ),

          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Container(
              padding: EdgeInsets.all(2.0),
              margin: EdgeInsets.all(2.0),
              child: CircleAvatar(
                backgroundColor: light,
                child: Icon(Icons.person_outline, color: dark,),),
            ),
          )
        ],
      ),
      iconTheme: IconThemeData(color: dark),
      backgroundColor: Colors.transparent,
  );