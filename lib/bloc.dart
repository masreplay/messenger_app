import 'dart:async';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messenger_app/bloc/async_state.dart';

mixin AsyncStateCubitMixin<Data> on Cubit<AsyncStateDefault<Data>> {
  Future<void> handle(FutureOr<Data> Function() data) async {
    debugPrint("loading: $Data");
    emit(AsyncStateDefault<Data>.loading());
    try {
      debugPrint("data: $Data");
      final result = await data();
      emit(AsyncStateDefault<Data>.data(result));
    } catch (e, stackTrace) {
      log(toString(), error: e, stackTrace: stackTrace);
      emit(AsyncStateDefault<Data>.error(e, stackTrace));
    }
  }
}
