import 'package:flutter/material.dart';
import 'package:widget_extension_demo/extensions/widget_exetension.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget Extension Example"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "This is a demo picture",
              ).padding(const EdgeInsets.symmetric(vertical: 20)),
              Image.network(
                "https://picsum.photos/500/300",
                fit: BoxFit.cover,
              ).roundedBorder(const BorderRadius.all(Radius.circular(20)))
            ],
          ).padding(const EdgeInsets.symmetric(horizontal: 20)),

          //Repeatative code can be reduced by using extension
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          "This is a demo picture",
                        )),
                    ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        child: Image.network(
                          "https://picsum.photos/500/300",
                          fit: BoxFit.cover,
                        )),
                  ])),
        ],
      ),
    );
  }
}
