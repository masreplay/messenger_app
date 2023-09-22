import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messenger_app/bloc/async_state.dart';

mixin AsyncStateCubitMixin<Data> on Cubit<AsyncStateDefault<Data>> {
  Future<void> handle(FutureOr<Data> Function() data) async {
    emit(AsyncStateDefault<Data>.loading());
    try {
      final result = await data();
      emit(AsyncStateDefault<Data>.data(result));
    } catch (e, stackTrace) {
      log(toString(), error: e, stackTrace: stackTrace);
      emit(AsyncStateDefault<Data>.error(e, stackTrace));
    }
  }
}
