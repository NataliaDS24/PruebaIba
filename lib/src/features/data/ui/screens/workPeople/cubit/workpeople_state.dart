part of 'workpeople_cubit.dart';

@immutable
abstract class WorkpeopleState {
  final List workpeopleList;

  const WorkpeopleState({this.workpeopleList = const []});
  @override
  List<Object> get props => [];
}

class WorkpeopleInitial extends WorkpeopleState {}

class Getworkpeople extends WorkpeopleState {
  const Getworkpeople({final List listWorkpeople}): super(workpeopleList: listWorkpeople);
  @override
  List<Object> get props {
    return [workpeopleList];
  }

  @override
  String toString() => 'List workPeople { posts: ${workpeopleList.toString()}}';
}
