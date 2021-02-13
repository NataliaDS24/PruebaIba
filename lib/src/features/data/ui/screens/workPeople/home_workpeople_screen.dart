import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pruebaibacrea/src/features/data/ui/screens/workPeople/cubit/workpeople_cubit.dart';
import 'package:pruebaibacrea/src/features/data/ui/screens/workPeople/list_workpeople.dart';

class HomeWorkPeople extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final workpeopleCubit = WorkpeopleCubit()..getAllWorkpeople();
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider.value(
        value: workpeopleCubit,
        child: ListWorkPeople(),
      ),
    );
  }
}
