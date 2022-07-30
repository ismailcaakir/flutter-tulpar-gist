import 'package:flutter/material.dart';
import '../../components/loader.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Stack(
          children: <Widget>[
            Column(
              children: [
                Expanded(
                  flex: 5,
                  child: Center(
                      child: FlutterLogo(
                    size: 30.w,
                  )),
                ),
                const Expanded(
                  flex: 3,
                  child: Loader(),
                ),
                const Expanded(
                  flex: 1,
                  child: Text('App is initializing...'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
