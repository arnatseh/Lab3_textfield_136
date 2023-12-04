import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("input 999999999"),
      ),
      body: Form(
        key: _formkey,
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Username"),
                usernameText(),
                const SizedBox(
                  height: 10,
                ),
                passwordText(),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton.icon(
                    onPressed: () {
                      debugPrint("arnat");
                      if(_formkey.currentState!.validate()){
                        debugPrint("successful");
                      }
                    },
                    icon: const Icon(Icons.login),
                    label: const Text("เข้าสู่ระบบ")),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextFormField usernameText() {
    return TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return "กรุณาใส่ชื่อ";
          }
          return null;
        },
        controller: nameController,
        // obscureText: true,
        // obscuringCharacter: "*",
        decoration: const InputDecoration(
          icon: Icon(Icons.person),
          labelText: "username",
          hintText: "ใส่ชื่อผู้ใช่",
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 255, 0, 0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 255, 0, 0)),
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 255, 0, 0)),
              borderRadius:  BorderRadius.all(Radius.circular(16))),
        ),
        keyboardType: TextInputType.visiblePassword,
        onChanged: (value) {
          setState(() {});
        });
  }

  TextFormField passwordText() {
    return TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return "password";
          }
          return null;
        },
        controller: passwordController,
        obscureText: true,
        obscuringCharacter: "*",
        decoration: const InputDecoration(
          icon: Icon(Icons.key),
          labelText: "password",
          hintText: "ใส่รหัสผ่าน",
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 255, 0, 0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 255, 0, 0)),
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 255, 0, 0)),
              borderRadius: BorderRadius.all(Radius.circular(16))),
        ),
        keyboardType: TextInputType.visiblePassword,
        onChanged: (value) {
          setState(() {});
        });
  }
}
