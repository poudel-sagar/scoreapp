
//imports
import 'package:flutter/material.dart';
void main(){
  runApp(ScoreApp());

  
}
class ScoreApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Score App",
      home: ScoreHome(),
    );
  }

}

class ScoreHome extends StatefulWidget{
  @override
  _ScoreHomeState createState()=>_ScoreHomeState();
}  

class _ScoreHomeState extends State<ScoreHome>{
  int number=0;

void increaseNumber(){
  setState(() {
      number++;
    });
}
  //for increasing
void decreaseNumber(){
 setState(() {
    number--;
  });
}
void restartNumber(){
  setState(() {
      number=0;
    });
}


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Score Changer"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore_outlined ),
        onPressed: restartNumber,
      ),
      body: Column(
        children: [
          SizedBox(height: 5,),
          Center(child: Text("Score Is" ,style: TextStyle(color: Colors.green, fontSize: 25),)),
         Center(child: Text(number.toString() ,style: TextStyle(color: Colors.green, fontSize: 55),)),
         SizedBox(height: 10,),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
         ElevatedButton(child: Text('Increase',), onPressed: increaseNumber,),
         ElevatedButton(child: Text('Decrease'), onPressed: decreaseNumber,)
           ],
         )
         



        ],
        
      ),

    );
  }
}
