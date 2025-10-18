import 'package:flutter/material.dart';


class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});
  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}



class _CounterWidgetState extends State<CounterWidget> {
  // ignore: non_constant_identifier_names
  int Counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stateful Widget Example'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: 
            [Text('Counter Value: ',style: TextStyle(fontSize: 20)),
            SizedBox(height: 10,),
            Text('$Counter',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold)),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                setState(() {
                  Counter += 1000000;
                });
              }, 
                child: Text('+ Incremnet')),
              ElevatedButton(onPressed: (){
                setState(() {
                  Counter --;
                });
              }, 
                child: Text('- Decrement')),
              ElevatedButton(onPressed: (){
                setState(() {
                  Counter = 0;
                });
              }, 
                child: Text('Reset'))
            ],
          )
          ],
        ),
      ),
    );
    
  }
}