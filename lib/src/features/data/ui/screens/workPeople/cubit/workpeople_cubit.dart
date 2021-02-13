import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pruebaibacrea/src/features/data/repository/workpeople_repository.dart';
import 'package:pruebaibacrea/src/features/models/workpeople.dart';

part 'workpeople_state.dart';

class WorkpeopleCubit extends Cubit<WorkpeopleState> {
  WorkpeopleCubit() : super(WorkpeopleInitial());
  final WorkPeopleRepository workPeopleRepository = WorkPeopleRepository();

  void getAllWorkpeople() async {
    // emit(WorkpeopleInitial());
    final result = await workPeopleRepository.getWorkPeople();
    emit(Getworkpeople(listWorkpeople: result));
  }
}
