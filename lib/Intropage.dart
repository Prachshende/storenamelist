
import 'package:flutter/material.dart';
import 'package:flutterbasic/main.dart';



class Intropage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('College App'),
      ),
      body: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Welcome',style: TextStyle(fontSize: 40,
              fontWeight: FontWeight.bold),),
          Center(
            child: Container(
              height: 50,
              width: 200,
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(
                      color: Colors.orange,
                      width: 2,

                    )
                  ),
                  prefixText: "College Name",
                  prefixIcon: IconButton(
                      onPressed:(){},
                      icon: Icon(Icons.remove_red_eye, color:Colors.blue ,)

                  )

                ),
              ),
            ),
          ),
          Center(
            child: Container(
              height: 50,
              width: 200,
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                          color: Colors.purple,
                          width: 2
                      )
                  ),
                    prefixText: "Branch",
                    prefixIcon: IconButton(
                        onPressed:(){},
                        icon: Icon(Icons.remove_red_eye, color:Colors.blue ,)

                    )
                ),
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: (){

           Navigator.push(context, MaterialPageRoute(builder: (context){
             return MyHomePage();}),
           );
          }, child: Center(child: Container
            (
              child: Text('Next', style: TextStyle(color: Colors.black),)))
          ),
          ElevatedButton(onPressed: () async{
            DateTime? datePicked = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2024),
            );

            if(datePicked!=null){
              print('Data selected: ${datePicked.day}-${datePicked.month}-${datePicked.year}');
            }
          }
              , child: Text('show'))
        ],

      ),
    );
  }

}