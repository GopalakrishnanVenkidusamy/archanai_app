import 'dart:async';

import 'package:archanai/config/entpoint.dart';
import 'package:archanai/core/logger/index.dart';
import 'package:archanai/core/model/meta.dart';
import 'package:archanai/core/services/base_service.dart';
import 'package:archanai/model/archanai_detailes.dart';
import 'package:bloc/bloc.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';

part 'archanai_details_event.dart';
part 'archanai_details_state.dart';

class ArchanaiDetailsBloc extends Bloc<ArchanaiDetailsEvent, ArchanaiDetailsState> {
  ArchanaiDetailsBloc() : super(ArchanaiDetailsInitial()) {
    on<GetArchanaiDetails>(_getArchanaiDetails);
  }

  Future<void> _getArchanaiDetails(GetArchanaiDetails event, Emitter<ArchanaiDetailsState> emit) async {
    Meta meta = await BaseService().httpGet(EndPoints.archanai_detail);
    Logger.debug("GET success", meta.success);
    if(meta.success == true){
      Logger.debug("GET response", meta.data);
      ArchanaiDetails archanaiDetails = ArchanaiDetails.fromJson(meta.data);
      emit(ArchanaiDetail(archanaiDetails));
    }
  }
}
