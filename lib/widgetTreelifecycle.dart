
import 'package:flutter/material.dart';
import 'package:widget_tree_lifecycle/stateless_widget.dart';


class widgetTreelifecycle extends StatefulWidget{
  const widgetTreelifecycle({super.key});


  @override
  State<widgetTreelifecycle> createState(){
    print("Print 2:from create state");
    return _widgetTreelifecycleState();
  }

}

class _widgetTreelifecycleState extends State<widgetTreelifecycle>{

  String log="";

  @override// for the subscription type of work initState is called
  void initState(){
    super.initState();
    //code be written down
    print("Print 3:initState");
  }

  @override
  void didChangeDependencies(){
    super.didChangeDependencies();
    //not fix can write code anywhere at above or below
    print("Print 4:didChangeDependencies");
  }

  @override
  void didUpdateWidget(covariant widgetTreelifecycle oldWidget) {
    super.didUpdateWidget(oldWidget);
    //code will be written at down below super
    print("Print 5:didUpdateWidget");
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    print("Print :Deactivated");
    super.deactivate();
  }

  @override
  void dispose(){
    //code will be written at up
    print("Print 6:Dispose");
    super.dispose();
  }


    @override
  Widget build(BuildContext context){
      return Scaffold(
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    log="Print from setState of Build Function";
                  });
                print(log);
                },
                  child:Icon(Icons.add_circle),
              ),
              SizedBox(height: 25.0,),
              Container(
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context)=>Flutter()));
                  },
                  child: Text("go to next page to see working of dispose functon"),
                ),
              )
            ],
          ),
        ),

      );
    }

}

