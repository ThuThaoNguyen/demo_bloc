import 'package:bloc_counter/counter_bloc.dart';
import 'package:bloc_counter/counter_event.dart';
import 'package:bloc_counter/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider<CounterBloc>(create: (context)=>CounterBloc(CounterState(volumn: 1)),child:MyApp(),) );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = BlocProvider.of(context);
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
     home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              BlocBuilder<CounterBloc,CounterState>(
                  builder: (context,counterState){
                    return Text(counterState.volumn.toString(), style: Theme.of(context).textTheme.headline4,
                    );
                  }
              ),
              ElevatedButton(onPressed: ()=>counterBloc.add(Decrement()), child: Text("Decrement")),
              ElevatedButton(onPressed: ()=>counterBloc.add(Increment()), child: Text("Increment"))
            ],
          ),
        ),

      )
    );
  }
}
