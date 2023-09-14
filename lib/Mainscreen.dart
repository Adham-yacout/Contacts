

import 'package:contacts/widgets/contactitem.dart';
import 'package:contacts/widgets/customtextfield.dart';
import 'package:contacts/widgets/elevatedbtncustom.dart';
import 'package:flutter/material.dart';

class Mainscreen extends StatefulWidget {
  static const String routeName="home";


  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  int counter=0;
  Contactitem contact1=Contactitem();
  Contactitem contact2=Contactitem();
  Contactitem contact3=Contactitem();
  TextEditingController namecontrol=TextEditingController();
  TextEditingController phonecontrol=TextEditingController();
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.grey,
    appBar: AppBar(
      title: Text('Contacts Screen'),
      centerTitle: true,
    ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          physics:NeverScrollableScrollPhysics() ,
          child: Column(
            children: [
              Customtextfield(texthint: 'Enter your name here',
                  usedicon: Icons.drive_file_rename_outline,
              controller: namecontrol),
              Customtextfield(texthint: 'Enter your phone  number',
                usedicon: Icons.phone,
                controller:phonecontrol ,
              ),
             SizedBox(height: 20,),
              Row(

               children: [

                 Expanded(child: Elevatedbtncustom(label: 'Add',btncolor: Colors.red,
                 onpressed: additem,)),
                 SizedBox(width: 5,),
                 Expanded(child: Elevatedbtncustom(label: 'Delete',btncolor: Colors.blue,
                 onpressed: deleteitem,)),

               ],
             ),
             contact1,
              contact2,
              contact3,

            ],
          ),
        ),
      ),
    );
  }

  void additem(){
if(counter==0){
  counter++;
  contact1=Contactitem(name: namecontrol.text,phone: phonecontrol.text,isvisible: true,);
  setState(() {

  });
}
else if(counter==1)
  { counter++;
    contact2=Contactitem(name: namecontrol.text,phone: phonecontrol.text,isvisible: true,);
  setState(() {

  });
  }
else if(counter==2)
{
  counter++;
  contact3=Contactitem(name: namecontrol.text,phone: phonecontrol.text,isvisible: true,);
  setState(() {

  });
}
namecontrol.clear();
phonecontrol.clear();

  }

  void deleteitem(){
if(counter==1)
  {
    contact1=Contactitem(isvisible: false,);
    counter--;
    setState(() {

    });
  }
if(counter==2)
{
  contact2=Contactitem(isvisible: false,);
  counter--;
  setState(() {

  });
}
if(counter==3)
{
  contact3 =Contactitem(isvisible: false,);
  counter--;
  setState(() {

  });
}
  }
}
