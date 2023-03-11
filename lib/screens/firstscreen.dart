import 'package:flutter/material.dart';
import 'package:flutter_circle_color_picker/flutter_circle_color_picker.dart';
import 'dart:math';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
class FirstScreen extends StatefulWidget {
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  //const FirstScreen({Key? key}) : super(key: key);
Color color=Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title:
          Text("your Color generator",
          style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic,
          )),

    flexibleSpace: Container(
    decoration: const BoxDecoration(
    gradient: LinearGradient(
          colors:[
            Color(0xffb1fffc),
            Color(0xffff7ce7),
            Color(0xff320000),

          ]
        ),
            )
    )
        
      ),

      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
    children: [
      SizedBox(height: 20,),
          Text("pick your color easy",style: TextStyle(
          color: Colors.black,
        fontSize: 25,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold
      )),
          SizedBox(height: 150,),
          CircleColorPicker(
            onChanged: (color) => print(color),
            size:  Size(240, 240),
            strokeWidth: 4,
            thumbSize: 36,
            //controller: CircleColorPickerController(initialColor: Colors.red),
          ),
          SizedBox(height: 400,),
          ColorPicker(
    pickerColor: color,
    onColorChanged:(color)=>setState(()=>this.color=color),


    ),
          SizedBox(height: 100,),
    ],
    ),
        ),
      )
    );

  }

  /*Widget buildColorpicker()=>ColorPicker(
      pickerColor: color,
      onColorChanged:(color)=>setState(()=>this.color=color),


  );

  void pickColor(BuildContext context)=> showDialog(
      context: context,
      builder: (context)=>AlertDialog(
        title: Text("pick color"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            buildColorpicker(),
            TextButton(
              child: Text('select'),
              onPressed: ()=>Navigator.of(context).pop(),
            ),
          ],
        )
      )
  );*/
}

