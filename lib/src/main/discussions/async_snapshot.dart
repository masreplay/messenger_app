import 'package:flutter/material.dart';

extension AsyncSnapshotX<T> on AsyncSnapshot<T> {
  R when<R>({
    required R Function(T? data) data,
    required R Function(Object? error, StackTrace stackTrace) error,
    required R Function() loading,
  }) {
    if (hasError) {
      return error(this.error, stackTrace!);
    } else if (hasData) {
      return data(this.data);
    } else {
      return loading();
    }
  }
}
