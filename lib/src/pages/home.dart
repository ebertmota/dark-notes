import 'package:flutter/material.dart';
import 'package:dark_notes/src/use_cases/use_cases.dart';

import '../errors/errors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String email = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0.0,
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Align(
          alignment: Alignment.topLeft,
          child: SafeArea(
              child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                      ),
                      const Text('Welcome to Dark Notes',
                          style: TextStyle(fontSize: 24)),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                      ),
                      const Text('A simple and secure tool to save your notes',
                          style: TextStyle(fontSize: 16)),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                      ),
                      TextFormField(
                          onChanged: (text) {
                            email = text;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "Enter your email address...",
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            errorBorder: InputBorder.none,
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 20),
                            fillColor:
                                Theme.of(context).colorScheme.primaryContainer,
                            filled: true,
                            enabled: true,
                          )),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 40,
                        child: TextButton(
                          onPressed: () async {
                            try {
                              final user = await loadUserByEmail(email);
                              print(user.email);
                            } on UserError catch (error) {
                              if (error == UserError.notFound) {
                                await createUser(
                                    CreateUserParams(email: email));
                              }
                            }
                          },
                          style: TextButton.styleFrom(
                            shape: (RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            )),
                            backgroundColor:
                                Theme.of(context).colorScheme.primary,
                          ),
                          child: const Text('Confirm',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              )),
                        ),
                      ),
                    ],
                  )))),
    );
  }
}
