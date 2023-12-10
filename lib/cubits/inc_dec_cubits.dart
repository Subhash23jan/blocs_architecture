import 'package:blocs_architecture/blocs/counter_bloc.dart';
import 'package:blocs_architecture/blocs/counter_bloc_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit_counter.dart';
class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterCubit=BlocProvider.of<CounterCubit>(context);
    final counterBloc=BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: ()=>counterBloc.add(CounterBlocIncrement()), child:const Icon(Icons.add)),
            ElevatedButton(onPressed: ()=>counterBloc.add(CounterBlocDecrement()), child:const Icon(Icons.minimize))
          ],
        ),
      ),
    );
  }
}
