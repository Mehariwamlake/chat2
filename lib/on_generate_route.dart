
import 'package:chat2/global/const/page_const.dart';
import 'package:chat2/user/presentation/pages/credential/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnGenerateRoute{


  static Route<dynamic> route(RouteSettings settings){

    final args = settings.arguments;


    switch(settings.name){
      case PageConst.loginPage :{
        return materialPageBuilder(widget: LoginPage());
      }
      
      default:
        return materialPageBuilder(widget: ErrorPage());
    }

  }




}

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("error"),
      ),
      body: Center(
        child: Text("error"),
      ),
    );
  }
}



MaterialPageRoute materialPageBuilder({required Widget widget}){
  return MaterialPageRoute(builder: (_) =>widget);
}