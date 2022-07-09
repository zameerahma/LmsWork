import 'package:flutter/material.dart';

class Drop extends StatefulWidget {
  const Drop({Key? key}) : super(key: key);

  @override
  State<Drop> createState() => _DropState();
}

class _DropState extends State<Drop> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = new TextEditingController();
    var items = [
      'Working a lot harder',
      'Being a lot smarter',
      'Being a self-starter',
      'Placed in charge of trading charter'
    ];
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            new Padding(
              padding: const EdgeInsets.all(24.0),
              child: new Row(
                children: <Widget>[
                  new Expanded(child: new TextField(controller: _controller)),
                  new PopupMenuButton<String>(
                    icon: const Icon(Icons.arrow_drop_down),
                    onSelected: (String value) {
                      _controller.text = value;
                    },
                    itemBuilder: (BuildContext context) {
                      return items.map<PopupMenuItem<String>>((String value) {
                        return new PopupMenuItem(
                            child: new Text(value), value: value);
                      }).toList();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
