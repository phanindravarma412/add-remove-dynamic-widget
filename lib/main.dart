import 'package:flutter/material.dart';

import 'input_rectangle_field.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<DynamicWidget> listDynamic = [];

  addDynamic() {
    print('add to list');
    if (listDynamic.length >= 5) {
      return;
    }
    listDynamic.add(DynamicWidget());
    setState(() {});
  }

  submitData() {
    listDynamic.forEach((widget) {
      print(widget.firstController.text);
      print(widget.secondController.text);
    });
  }

  removeWidget(listItemIndex) {
    listDynamic.removeAt(listItemIndex);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Phanindra Varma'),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              // IconButton(icon: Icon(Icons.add), onPressed:(){
              //   print('adding widget');
              //   addDynamic();
              // },

              Container(
                child: FlatButton(
                  child: Text('Add widget'),
                  onPressed: () {
                    print('adding widget to list');
                    addDynamic();
                  },
                ),
              ),
              Flexible(
                child: ListView.builder(
                    itemCount: listDynamic.length,
                    itemBuilder: (_, index) {
                      return Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: listDynamic[index],
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                print('remove widget');
                                removeWidget(index);
                              },
                              child: Container(
                                width: 10,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
                // listDynamic[index]
              ),
              Container(
                child: RaisedButton(
                    child: Text('Submit'),
                    onPressed: () {
                      submitData();
                      print('submitting data');
                    }),
              ),
            ],
          ),
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     print('Button was clicked');
        //     addDynamic();
        //   },
        //   child: Icon(Icons.add),
        // ),
      ),
    );
  }
}

// ignore: must_be_immutable
class DynamicWidget extends StatelessWidget {
  TextEditingController firstController = TextEditingController();
  TextEditingController secondController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputRectangleField(
          controller: firstController,
          placeholder: 'Enter first data',
        ),
        InputRectangleField(
          controller: secondController,
          placeholder: 'Enter second data',
        ),
      ],
    );
  }
}
