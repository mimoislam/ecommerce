import 'package:app/constant.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    final textScale =width/mockupWidth;
    return Column(
      children: [
        SizedBox(height:35 /mockupHeight*height,),
        Container(
          decoration:  BoxDecoration(
              color: colorWhite,
              borderRadius: BorderRadius.circular((10 /mockupWidth*width))
          ),
          child: Column(
            children: [
              SizedBox(
                height: 59/mockupWidth*width,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 16.0/mockupWidth*width,vertical:8/mockupHeight*height ),
                      child: Icon(Icons.mail_outline,size: 19/mockupHeight*height,),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(top:5/mockupHeight*height),
                        height:59 /mockupHeight*height,
                        child: TextField(
                          style: textFieldTyped,
                          decoration: InputDecoration(

                              label: Text("EMAIL",style:textFieldTitleLowOpacity,textScaleFactor: textScale,),
                              contentPadding: EdgeInsets.only(left: 3/mockupWidth*width),
                              border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 59/mockupWidth*width,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 16.0/mockupWidth*width,vertical:8/mockupHeight*height ),
                      child: Icon(Icons.person_outline,size: 19/mockupHeight*height,),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(top:5/mockupHeight*height),
                        height:59 /mockupHeight*height,
                        child: TextField(
                          style: textFieldTyped,
                          decoration: InputDecoration(

                              label: Text("USERNAME",style:textFieldTitleLowOpacity,textScaleFactor: textScale,),
                              contentPadding: EdgeInsets.only(left: 3/mockupWidth*width),
                              border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 59/mockupWidth*width,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 16.0/mockupWidth*width,vertical:8/mockupHeight*height ),
                      child: Icon(Icons.lock_outline,size: 19/mockupHeight*height,),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(top:5/mockupHeight*height),
                        height:59 /mockupHeight*height,
                        child: TextField(
                          style: textFieldTyped,
                          obscureText: true,
                          decoration: InputDecoration(

                              label: Text("PASSWORD",style:textFieldTitleLowOpacity,textScaleFactor: textScale,),
                              contentPadding: EdgeInsets.only(left: 3/mockupWidth*width),
                              border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
        SizedBox(height:5 /mockupWidth*width,),
        Container(
          margin: EdgeInsets.only(right: 20/mockupWidth*width),
          padding: EdgeInsets.symmetric(horizontal:10/mockupWidth*width,vertical: 3/mockupHeight*height ),
          width: width,
          height: 46 /mockupWidth*width,
          decoration: BoxDecoration(
              color: colorRed,
              borderRadius: BorderRadius.circular(23/mockupWidth*width)
          ),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 18/mockupWidth*width,),
              Text("SIGN UP",style: redButtonText,textScaleFactor: textScale,),
              Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(23/mockupWidth*width),
                      color: colorWhite
                  ),
                  child: Center(child: Icon(Icons.arrow_forward_ios,size: 15/mockupHeight*height,color: colorRed,)))
            ],
          ),
        )
      ],
    );
  }
}
