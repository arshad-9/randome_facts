import 'package:flutter/material.dart';

import '../ApiCalls/GetRandomText.dart';
import '../Util.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var text ="Let's Start";
  var isLoading = false ;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(


        title: Text('Random Facts',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),
        ),),
      body: Center(

        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                  width: 350,
                  height: 300,
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(15))
                        ,side: BorderSide(color: Colors.deepOrange,width: 1)) ,
                      shadowColor:Colors.deepOrangeAccent,
                      elevation:10,color: Colors.grey.shade50,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10,right: 10),
                        child: Center(
                            child:
                            Padding(padding:EdgeInsets.all(10),
                                child: isLoading?CircularProgressIndicator():Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(text,
                                    style: TextStyle(color: Colors.black,fontSize: 20),),
                                    SizedBox.square(dimension: 10,),
                                    Align(
                                       alignment: Alignment.bottomRight,
                                        child: Image.asset(getRandomImage(),height: 40,width: 40,))]
                                ))),))),
              SizedBox.square(dimension: 20,),

              SizedBox(
                width: MediaQuery.of(context).size.width*0.6,
                child: ElevatedButton(onPressed: () async {
                  isLoading = true ;
                  setState(() {});
                  var response = await getRandomText();
                  text = response ?? 'Something is wrong';
                  isLoading = false;
                  setState(() {});


                },style: ElevatedButton.styleFrom(
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Colors.orange),
                    child: Text('Fetch',style:TextStyle(color: Colors.white,fontSize: 25,
                        fontWeight: FontWeight.bold))),
              )
            ],
          ),
        ),
      ),


    );
  }
}
