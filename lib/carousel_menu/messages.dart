import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextStyle whiteText = TextStyle(
      color: Colors.white,
    );
    final TextStyle greyTExt = TextStyle(
      color: Colors.grey.shade400,
    );
    return Scaffold(
        backgroundColor: Colors.black,
        body: Theme(
          data: Theme.of(context).copyWith(
            brightness: Brightness.dark,
            primaryColor: Colors.purple,
          ),
          child: DefaultTextStyle(
            style: TextStyle(
              color: Colors.white,
            ),
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(32),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/bike-riding-5557589_1920.png'),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                            color: Colors.white,
                            width: 2.0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'oleggg',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              'Kras',
                              style: TextStyle(
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  ListTile(
                    title: Text(
                      "Languages",
                    ),
                    subtitle: Text(
                      "English US",
                      style: greyTExt,
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.grey.shade400,
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text(
                      "Profile Settings",
                    ),
                    subtitle: Text(
                      "Jane Doe",
                      style: greyTExt,
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.grey.shade400,
                    ),
                    onTap: () {},
                  ),
                  SwitchListTile(
                    title: Text(
                      "Email Notifications",
                    ),
                    subtitle: Text(
                      "On",
                      style: greyTExt,
                    ),
                    value: true,
                    onChanged: (val) {},
                  ),
                  SwitchListTile(
                    title: Text(
                      "Push Notifications",
                    ),
                    subtitle: Text(
                      "Off",
                      style: greyTExt,
                    ),
                    value: false,
                    onChanged: (val) {},
                  ),
                  ListTile(
                    title: Text(
                      "Logout",
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
