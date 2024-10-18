import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map> locales = [
    {'name': 'English', 'locale': const Locale('en', 'US')},
    {'name': 'Urdu', 'locale': const Locale('en', 'PK')},
  ];

  bool isChange = false;

  showLocaleDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Choose Your Language"),
        content: Container(
          width: double.maxFinite,
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => InkWell(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(locales[index]['name']),
              ),
              onTap: () => updateLocal(
                locales[index]['locale'],
                context,
              ),
            ),
            separatorBuilder: (context, index) => const Divider(
              color: Colors.black,
            ),
            itemCount: 2,
          ),
        ),
      ),
    );
  }

  updateLocal(Locale locale, BuildContext context) {
    Navigator.of(context).pop();
    Get.updateLocale(locale);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'appbar'.tr,
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color.fromARGB(255, 11, 94, 162),
          actions: [
            IconButton(
              onPressed: () => showLocaleDialog(context),
              icon: const Icon(
                Icons.language,
                color: Colors.white,
              ),
            )
            // ElevatedButton(
            //   onPressed: () => showLocaleDialog(context),
            //   child: Text('button'.tr),
            // )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  isChange = !isChange;
                });
              },
              child: Text(
                'title'.tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: isChange
                      ? Color.fromARGB(255, 11, 94, 162)
                      : Colors.black,
                  fontSize: 35,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Image.asset("assets/images/image.jpeg"),
          ],
        ),
      ),
    );
  }
}
