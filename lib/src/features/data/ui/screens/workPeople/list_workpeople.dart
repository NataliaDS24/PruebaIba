import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pruebaibacrea/src/features/data/ui/screens/workPeople/cubit/workpeople_cubit.dart';
import 'package:pruebaibacrea/src/features/data/ui/screens/workPeople/workpeople_widget.dart';

class ListWorkPeople extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WorkpeopleCubit, WorkpeopleState>(
      listener: (context, state) {},
      builder: (context, state) {
        final workpeopleCubit = BlocProvider.of<WorkpeopleCubit>(context);
        final _listWorkPeople = state.workpeopleList;
        return ListView.builder(
          itemCount: _listWorkPeople.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(_listWorkPeople[index].name),
              subtitle: Text(_listWorkPeople[index].position),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => WorkpeopleDetails(workpeople: _listWorkPeople[index],)));
              },
            );
          },
        );
      },
    );
  }
}
