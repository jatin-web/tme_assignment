import 'package:flutter/material.dart';
import 'package:tme_pune/constants.dart';
import 'package:tme_pune/view/components/dialogs/edit_details_dialog.dart';

class AccountsTab extends StatefulWidget {
  const AccountsTab({super.key});
  @override
  State<AccountsTab> createState() => _AccountsTabState();
}

class _AccountsTabState extends State<AccountsTab> {
  TextEditingController nameController =
      TextEditingController(text: "Jatin Saini");
  TextEditingController ageController = TextEditingController(text: "0");
  TextEditingController genderController = TextEditingController(text: "Male");
  TextEditingController emailController =
      TextEditingController(text: "jatin@gmail.com");
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: themeColor,
        body: SafeArea(
          child: Column(
            children: [
              TabBar(
                indicatorColor: buttonColor1,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: const [
                  Tab(child: Text('Profile ')),
                  Tab(child: Text('Settings')),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                          children: [
                            // ------------ Profile Photo -----------
                            Stack(
                              children: [
                                Container(
                                  width: 120,
                                  height: 120,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(color: Colors.black),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  right: 0,
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundColor: buttonColor1,
                                    child: const Icon(
                                      Icons.edit_outlined,
                                      size: 18,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(height: 20),

                            getUserInfoTile(
                              heading: "Name",
                              value: nameController.text,
                              onTap: () async {
                                await editPersonalDetails(
                                  "name",
                                  nameController,
                                );
                                setState(() {});
                              },
                            ),

                            getUserInfoTile(
                                heading: "Mobile", value: "+9145995940"),

                            getUserInfoTile(
                              heading: "Age",
                              value: ageController.text,
                              onTap: () async {
                                await editPersonalDetails("age", ageController);
                                setState(() {});
                              },
                            ),
                            getUserInfoTile(
                              heading: "Gender",
                              value: genderController.text,
                              onTap: () async {
                                await editPersonalDetails(
                                    "gender", genderController);
                                setState(() {});
                              },
                            ),
                            getUserInfoTile(
                              heading: "Email",
                              value: emailController.text,
                              onTap: () async {
                                await editPersonalDetails(
                                    "email", emailController);
                                setState(() {});
                              },
                            ),
                            getUserInfoTile(
                              heading: "Saved Addresses",
                              trailing: const Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                              ),
                            ),
                            getUserInfoTile(
                              heading: "Identity Verification",
                              trailing: const Text(
                                'Complete now >',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            color: fadedThemeColor,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Payment Settings'.toUpperCase(),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const ListTile(
                                    leading: Icon(Icons.payments_outlined),
                                    title: Text("Payment Methods"),
                                    trailing: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 15,
                                    ),
                                  ),
                                  const ListTile(
                                    leading: Icon(Icons.savings_outlined),
                                    title: Text("Daily Savings"),
                                    trailing: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text("Setup now"),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          size: 15,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const ListTile(
                                    leading: Icon(Icons.storage),
                                    title: Text("Round Off"),
                                    trailing: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text("Enabeled"),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          size: 15,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const ListTile(
                                    leading: Icon(Icons.calendar_month),
                                    title: Text("Savings Plan"),
                                    trailing: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text("Setup now"),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          size: 15,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            color: fadedThemeColor,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'App Settings'.toUpperCase(),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const ListTile(
                                    leading: Icon(
                                        Icons.notifications_active_outlined),
                                    title: Text("Notification Settings"),
                                    trailing: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 15,
                                    ),
                                  ),
                                  const ListTile(
                                    leading: Icon(Icons.translate_outlined),
                                    title: Text("Language"),
                                    trailing: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text("English"),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          size: 15,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            color: fadedThemeColor,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Privacy and permissions'.toUpperCase(),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const ListTile(
                                    leading: Icon(Icons.lock_outline),
                                    title: Text("Jar securty shield"),
                                    trailing: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text("off"),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          size: 15,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const ListTile(
                                    leading: Icon(Icons.book_outlined),
                                    title: Text("Terms and conditions"),
                                    trailing: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 15,
                                    ),
                                  ),
                                  const ListTile(
                                    leading: Icon(Icons.privacy_tip_outlined),
                                    title: Text("Privacy policy"),
                                    trailing: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getUserInfoTile({
    required String heading,
    Widget? trailing,
    String? value,
    void Function()? onTap,
  }) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  heading,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: lightPurpleColor),
                )),
                if (value != null)
                  Expanded(
                    child: Text(
                      value,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                if (trailing != null) trailing,
              ],
            ),
          ),
        ),
        Divider(
          color: Colors.grey.withOpacity(0.5),
          thickness: 1,
        ),
      ],
    );
  }

  Future<void> editPersonalDetails(
      String title, TextEditingController controller) async {
    await showDialog(
        context: context,
        builder: (context) => EditDetailsDialog(
              title: title,
              controller: controller,
            ));
  }
}
