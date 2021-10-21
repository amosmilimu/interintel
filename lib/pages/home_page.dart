import 'package:flutter/material.dart';
import 'package:interintel/main.dart';
import 'package:interintel/pages/design_page.dart';
import 'package:interintel/utils/constants.dart';
import 'package:interintel/widget/button_widget.dart';
import 'package:interintel/widget/navigation_drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final name = "";
  final email = "";
  final phone = "";

  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawerWidget(),
        // endDrawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text(MyApp.title),
        ),
        body: Builder(
          builder: (context) => Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal:
            getOrientation(context)?8:32),
            child: Column(
              children: [
                const SizedBox(height: 16),
                TextField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Name'),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Email'),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: _phoneController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Phone Number'),
                ),
                const SizedBox(height: 16),
                ButtonWidget(
                  icon: Icons.keyboard_return,
                  text: 'Submit',
                  onClicked: () {
                    if(_validateInputs()) {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(getSnackBar(
                          "Details saved successfully", false));
                      Navigator.of(context)
                          .push(MaterialPageRoute(
                          builder: (context)=>DesignPage(name:_nameController.text,
                            email: _emailController.text,
                            phone: _phoneController.text,)));
                    } else {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(getSnackBar(
                          "Kindly provide all the fields", true));
                    }
                  },
                ),
              ],
            ),
          ),
        ),
  );

  bool _validateInputs() {
    return (_nameController.text.isNotEmpty &&
        _emailController.text.isNotEmpty &&
        _phoneController.text.isNotEmpty);
  }
}
