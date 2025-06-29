import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({super.key});

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  final formkey = GlobalKey<FormState>();
  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/register.png"), fit: BoxFit.cover),
      ),
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 35, top: 50),
                child: const Text(
                  "Create\nAccount",
                  style: TextStyle(fontSize: 33, color: Colors.white),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.28,
                      right: 35,
                      left: 35),
                  child: Form(
                    key: formkey,
                    child: Column(
                      children: [
                        TextFormField(
                            style: const TextStyle(fontSize: 30),
                            decoration: InputDecoration(
                                // fillColor: Colors.grey.shade200,
                                // filled: true,
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                        const BorderSide(color: Colors.black)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                        const BorderSide(color: Colors.white)),
                                hintText: "Name",
                                hintStyle: const TextStyle(color: Colors.white),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please Enter a Name";
                              }
                              return null;
                            }),
                        const SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(fontSize: 30),
                          decoration: InputDecoration(
                              // fillColor: Colors.grey.shade200,
                              // filled: true,
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      const BorderSide(color: Colors.black)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      const BorderSide(color: Colors.white)),
                              hintText: "Email",
                              hintStyle: const TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please Enter some Text";
                            }
                            if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                                .hasMatch(value)) {
                              return "Please enter a valid email address";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          obscureText: passToggle,
                          keyboardType: TextInputType.visiblePassword,
                          style: const TextStyle(fontSize: 30),
                          decoration: InputDecoration(
                              // fillColor: Colors.grey.shade200,
                              // filled: true,
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                  )),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.white,
                                  )),
                              hintText: "Password",
                              hintStyle: const TextStyle(color: Colors.white),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      passToggle = !passToggle;
                                    });
                                  },
                                  icon: Icon(passToggle
                                      ? Icons.visibility
                                      : Icons.visibility_off)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please Enter a Password";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Sign In",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 35,
                                  fontWeight: FontWeight.w700),
                            ),
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: const Color(0xff4c505b),
                              child: IconButton(
                                  onPressed: () {
                                    if (formkey.currentState!.validate()) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                            content:
                                                Text("Submit Successfully")),
                                      );
                                      Navigator.pushNamed(context, "login");
                                    }
                                  },
                                  icon: const Icon(Icons.arrow_forward,
                                      color: Colors.white)),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Sign Up",
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 28,
                                    color: Colors.white,
                                  ),
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
