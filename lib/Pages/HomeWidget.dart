
import 'package:SkeletonApp/Controllers/HomeController.dart';
import 'package:SkeletonApp/Models/Drawer.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class HomeWidget extends StatefulWidget{
  HomeWidget({Key key}) : super(key: key);


  @override
  _HomeWidgetState createState() => _HomeWidgetState();

}

class _HomeWidgetState extends StateMVC<HomeWidget> {

HomeController _con;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
    body:
      //Create HomePage....
      Center(child: Text("Home")),
    );
    throw UnimplementedError();
  }
}
