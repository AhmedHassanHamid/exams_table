import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_table_task/constants/end_points.dart';
import 'package:student_table_task/data/network/responses/table_response.dart';
import 'package:student_table_task/data/remote/dio_helper.dart';

part 'global_state.dart';

class GlobalCubit extends Cubit<GlobalState> {
  GlobalCubit() : super(GlobalInitial());

  static GlobalCubit get(context) => BlocProvider.of(context);

  TableResponse? tableResponse;

  Future getTableData()async{
    emit(GlobalLodingState());
    await DioHelper.postData(
    url: getExamTable,
    body: {
      'apiToken': 'aJggGRLcY35Gj1GCxz2aP1FiSgWhzvjZhtPGdqF0WtI40tulXJ3fmr3yfdUllQm2es6Uz'
    },
     ).then((value) {
      print('done');
      tableResponse = TableResponse.fromJson(value.data);
      emit(GlobalSuccessState());
      print(tableResponse!.exams![3].grade!.name);
      //print(value.data.toString());
     }).catchError((error){
      emit(GlobalErrorState());
      print(error.toString());
     });
  }
}
