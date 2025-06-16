import 'package:cubit_exp_391/list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListCubit extends Cubit<ListState>{

  ListCubit() : super(ListState(mList: []));

  ///events
  addMap(Map<String, dynamic> map){
    List<Map<String, dynamic>> currentStateValue = state.mList;
    currentStateValue.add(map);
    emit(ListState(mList: currentStateValue));
  }

  updateMap(Map<String, dynamic> updatedMap, int index){
    List<Map<String, dynamic>> currentStateValue = state.mList;
    currentStateValue[index] = updatedMap;
    emit(ListState(mList: currentStateValue));
  }

  deleteMap(int index){
    List<Map<String, dynamic>> currentStateValue = state.mList;
    currentStateValue.removeAt(index);
    emit(ListState(mList: currentStateValue));
  }

}