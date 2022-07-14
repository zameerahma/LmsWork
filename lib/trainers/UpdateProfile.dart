import 'package:flutter/material.dart';

class UpdateProfile extends StatelessWidget {
  const UpdateProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final TextEditingController _controller = new TextEditingController();
    final TextEditingController _controller1 = new TextEditingController();
    var items = [
      'KTR-1',
      'KTR-2',
      'KTR-3',
      'STR',
      'HYTR',
      'QTR',
      'MTR',
      'FTR',
      'CTR',
      'LTR-N',
      'LTR-S',
      'GTR',
      'SLTR',
      'ITR',
      'RTR',
      'HTR',
      'NTR-1',
      'NTR-2',
      'AJK',
    ];
    var fun = [
      'Business Operation',
      'Business Solution',
      'Technology',
      'Internal Audit',
      'Finance',
      'Customer Care',
      'Commercial',
      'Strategy & Transformation',
      'Information Technology',
      'Legal',
      'Regulatory',
    ];
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  height: 220,
                  width: double.infinity,
                  color: Colors.green,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 56,
                        child: ClipOval(child: Image.asset('assets/logo.jpg')),
                      ),
                      // CircleAvatar(
                      //   radius: 60,
                      //   backgroundColor: Colors.purple,
                      //   child: ClipRect(
                      //     child: Image.asset('assets/logo.jpg'),
                      //   ),
                      // ),
                      Text(
                        'Ali Pirzada',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Ali Pirzada',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  width: 360,
                  child: const TextField(
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2.0, color: Colors.black87)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black87, width: 2.0)),
                      labelText: 'Line Manager',
                      hintText: 'XYZ',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  width: 360,
                  child: const TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black87, width: 2.0)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black87, width: 2.0)),
                      labelText: 'Employ Id',
                      hintText: '123456',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                // Name field
                Container(
                  width: 360,
                  child: const TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black87, width: 2.0)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black87, width: 2.0)),
                        labelText: 'First Name',
                        hintText: 'Ali'),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                // Name field
                Container(
                  width: 360,
                  child: const TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black87, width: 2.0)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black87, width: 2.0)),
                        labelText: 'Last Name',
                        hintText: 'Ahmad'),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                // Name field
                Container(
                  width: 360,
                  child: const TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black87, width: 2.0)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black87, width: 2.0)),
                        labelText: 'Contact Number',
                        hintText: '9887565'),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                // Name field
                Container(
                  width: 360,
                  child: const TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black87, width: 2.0)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black87, width: 2.0)),
                        labelText: 'Email',
                        hintText: 'Ali@gmail.com'),
                  ),
                ),
                SizedBox(
                  height: 5,
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
                          labelText: 'REGIONS',
                        ),
                      )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: 360,
                  child: Row(
                    children: <Widget>[
                      new Expanded(
                          child: new TextField(
                        controller: _controller1,
                        decoration: InputDecoration(
                          suffixIcon: PopupMenuButton<String>(
                              onSelected: (String value) {
                                _controller1.text = value;
                              },
                              itemBuilder: (BuildContext context) {
                                return fun
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
                          labelText: 'Function',
                        ),
                      )),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 5,
                ),
                // Functions

                // Designation
                Container(
                  width: 360,
                  child: const TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black87, width: 2.0)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black87, width: 2.0)),
                      labelText: 'UPLOAD PICTURE',
                    ),
                  ),
                ),

                const SizedBox(
                  height: 5,
                ),
                // Contact Number
                Container(
                  width: 360,
                  child: const TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black87, width: 2.0)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black87, width: 2.0)),
                      labelText: 'city',
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
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
                      'Update'.toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    )),
              ],
            ),
          ),

          // Line Manager field
        ),
      ),
    );
  }
}
