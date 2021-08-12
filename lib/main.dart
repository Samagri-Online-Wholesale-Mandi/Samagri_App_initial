import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:home_page/pages/Commodity_page/tempHome.dart';
// import 'package:home_page/Models/Product.dart';

// import 'BottomNavigation.dart';
// import 'pages/Commodity_page/appBar.dart';
// import 'pages/Commodity_page/body.dart';
// import 'sideDrawer.dart';
import 'pages/login_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.grey[700],
  ));
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    )
  );
}

class InitializerWidget extends StatefulWidget {
  @override
  _InitializerWidgetState createState() => _InitializerWidgetState();
}

class _InitializerWidgetState extends State<InitializerWidget> {

  late FirebaseAuth _auth;
  late User _user;
  bool isLoading = true;


  @override
  void initState() {
    super.initState();
    _auth = FirebaseAuth.instance;
    _user = _auth.currentUser!;
    isLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    return isLoading ? Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    ) : _user == null ? LoginScreen() : TempHome();
  }
}
// class CommodityHomePage extends StatelessWidget{
//
//   @override
//   Widget build(BuildContext context) {
//     return AnnotatedRegion<SystemUiOverlayStyle>(
//       value:  SystemUiOverlayStyle.light,
//       child: Scaffold(
//         backgroundColor: Colors.grey[900],
//         appBar: appbar(),
//         drawer: sideDrawer(),
//         body: Body(),
//         bottomNavigationBar: BottomNavigation(),
//         )
//     );
//   }
// }
//



