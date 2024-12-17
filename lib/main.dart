import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const LoginPage(),
      getPages: [GetPage(name: "/home", page: () => const HomePage())],
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController loginC = Get.put(LoginController());
    var box = GetStorage();
    if (box.read("rememberMe") != null) {
      loginC.email = box.read("rememberMe")["email"];
      loginC.pass = box.read("rememberMe")["pass"];
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("State"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(14),
        children: [
          TextField(
            decoration: const InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(),
            ),
            controller: loginC.email,
            autocorrect: false,
            textInputAction: TextInputAction.next,
          ),
          const SizedBox(
            height: 10,
          ),
          Obx(
            () => TextField(
              decoration: InputDecoration(
                labelText: "Password",
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.remove_red_eye),
                  onPressed: () => loginC.isHidden.toggle(),
                ),
              ),
              controller: loginC.pass,
              obscureText: loginC.isHidden.value,
              autocorrect: false,
              textInputAction: TextInputAction.next,
            ),
          ),
          Obx(
            () => ListTile(
              leading: Checkbox(
                  value: loginC.rememberMe.value,
                  onChanged: (value) => loginC.rememberMe.value = value!),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                loginC.login();
              },
              child: const Text("Login"))
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class LoginController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  RxBool isHidden = true.obs;

  RxBool rememberMe = false.obs;

  void login() async {
    var box = GetStorage();
    if (email.text == "rafsan" && pass.text == "rafsan") {
      if (box.read("rememberMe") != null) {
        box.remove("rememberMe");
      }
      if (rememberMe.value) {
        box.write("rememberMe", {
          "email": email.text,
          "pass": pass.text,
        });
      }
      Get.offNamed("/home");
    } else {
      Get.snackbar("Error", "Invalid Email or Password",
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
