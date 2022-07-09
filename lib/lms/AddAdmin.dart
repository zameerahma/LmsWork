import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/responsive.dart';

class AddAdmin extends StatelessWidget {
  const AddAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final TextEditingController _controller = new TextEditingController();
    var items = [
      'Non-Management',
      'AM & Equivalent',
      'SM & Equivalent',
      'Manger & Equivalent',
      'GM/Head & Equivalent',
      'EVP/Head & Equivalent',
      'CXOs',
    ];
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: isMobile(context)
                    ? EdgeInsets.only(left: 300)
                    : EdgeInsets.only(left: 960),
                child: Image.asset(
                  'assets/download.png',
                  width: 200,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Add Admin',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 36,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              FormField(
                title: 'Employee ID',
              ),
              SizedBox(
                height: 20,
              ),
              FormField(
                title: 'First Name',
              ),
              SizedBox(
                height: 20,
              ),
              FormField(
                title: 'Last Name',
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 360,
                child: Row(
                  children: <Widget>[
                    new Expanded(
                        child: new TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        suffixIcon: PopupMenuButton<String>(
                            onSelected: (String value) {
                              _controller.text = value;
                            },
                            itemBuilder: (BuildContext context) {
                              return items
                                  .map<PopupMenuItem<String>>((String value) {
                                return new PopupMenuItem(
                                    child: new Text(value), value: value);
                              }).toList();
                            },
                            child: const Icon(Icons.arrow_drop_down)),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2.0, color: Colors.black87),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2.0, color: Colors.black87),
                        ),
                        labelText: 'Designation',
                      ),
                    )),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              FormField(
                title: 'Email',
              ),
              SizedBox(
                height: 40,
              ),
              TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                      minimumSize: Size(360, 45),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2),
                      )),
                  child: Text(
                    'save'.toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class FormField extends StatelessWidget {
  const FormField({
    required this.title,
    Key? key,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2.0, color: Colors.black87),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2.0, color: Colors.black87),
          ),
          labelText: title,
        ),
      ),
    );
  }
}
