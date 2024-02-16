import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final ValueNotifier<int> counter=ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.lightBlue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ValueListenableBuilder(
                  valueListenable: counter,
                   builder: (context,value,_) {
                     return Text(value.toString(),style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),);
                    
                   }
                 ),
                 const SizedBox(height: 10,),
                ElevatedButton(onPressed: (){
              counter.value++;
               print(counter.value);
                },
                 child: const Text("ADD+",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),))
              ],
            ),
          ),
        ),
      ),
    );
  }
}