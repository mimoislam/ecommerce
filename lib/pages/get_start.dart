import 'package:app/constant.dart';
import 'package:app/pages/home.dart';
import 'package:app/proividers/app.dart';
import 'package:app/widget/loading.dart';
import 'package:app/widget/login_form.dart';
import 'package:app/widget/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class GetStarted extends StatefulWidget {
  static const  route="/getStarted";

  const GetStarted({Key? key}) : super(key: key);

  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  late PageController pageController;
 late int index;
  List<Widget> pages=[
    SignUpForm(),
    LoginForm(),

  ];
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    final scale =mockupWidth/width;
    final textScale =width/mockupWidth;
    final paddingTop=MediaQuery.of(context).padding.top;

    final app=Provider.of<AppProvider>(context);
    pageController=PageController(initialPage: index);

    return Scaffold(
        body: app.isLoading?Loading():Container(
          padding: EdgeInsets.only(left: 27/mockupWidth*width,top: (59+paddingTop)/mockupWidth*width),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30/mockupHeight*height,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                        onTap:(){
                          index=0;
                          setState(() {

                          });
                          pageController.animateToPage(0,
                              duration:const  Duration(milliseconds: 300), curve: Curves.ease);
                        },

                        child: Text("Sign Up",style: index==0?title:titleLowOpacity,textScaleFactor: textScale,)),
                    SizedBox(width:40 /mockupWidth*width,),
                    GestureDetector(
                        onTap: (){
                          index=1;
                          setState(() {

                          });

                          pageController.animateToPage(1,
                              duration:const  Duration(milliseconds: 300), curve: Curves.ease);


                        },
                        child: Text("Log in",style: index==1?title:titleLowOpacity,textScaleFactor: textScale,)),
                    SizedBox(width:40 /mockupWidth*width,),
                  //  Text("Forgot Password",style: titleLowOpacity,textScaleFactor: textScale,),
                  ],
                ),
              ),
              Expanded(
                child: PageView(
                  physics: NeverScrollableScrollPhysics(),
                  allowImplicitScrolling: false,

                  controller:pageController ,

                  onPageChanged: (value) {
                    index=value;
                    setState(() {});
                  },
                  children: pages,
                ),
              ),


            ],
          ),
        ),
     
    );
  }

  @override
  void initState() {
    index=0;

    super.initState();
  }
}
