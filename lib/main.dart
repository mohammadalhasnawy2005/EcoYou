import 'package:ecoyou/bindings/intialbindings.dart';
import 'package:ecoyou/core/localization/changelocal.dart';
import 'package:ecoyou/core/services/services.dart';
import 'package:ecoyou/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: controller.appTheme,
      // routes: routes,  هذاالقديم مال دفلت مال فلتر حدثته للكيت اكس
      initialBinding: InitialBindings(),
      getPages: routes,
    );
  }
}
