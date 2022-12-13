import 'package:flutter/material.dart';
import 'package:calma1/src/utils/theme/theme.dart';
import 'package:calma1/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
       theme : TAppTheme.lightTheme,
       darkTheme :TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home:  SplashScreen(),

    );
  }
}

/* class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(title: const Text("welcome"),
            leading: const Icon(Icons.ondemand_video)),
    floatingActionButton: FloatingActionButton(onPressed: () { },
    child: const Icon(Icons.
    add_shopping_cart_outlined)),

    body: Padding(
    padding: const EdgeInsets.all(20.0),
    child: ListView(
    children: [
   Text(
     "heading",
     style: Theme.of(context).textTheme.headline2,),
   Text(
     "sup-heading",
     style: Theme.of(context).textTheme.subtitle2,),
   Text(
     "brahraph",
     style: Theme.of(context).textTheme.bodyText1,),
    ElevatedButton(onPressed: () {} , child: const Text(" Elevated Botton"),),
    OutlinedButton(onPressed:() {} , child: const Text("  Outlined Botton"),),
    const Padding(padding: EdgeInsets.all(20.0),
    child: Image(image: AssetImage("assets/images/splash_images/splash_image.jpg")),
    ),
    ],
    ),
    ),
    );
    }
} */
