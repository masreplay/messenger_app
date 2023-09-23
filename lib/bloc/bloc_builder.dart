import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messenger_app/di/di.dart';

class BlocProviderAndBuilder<B extends Cubit<S>, S> extends StatelessWidget {
  const BlocProviderAndBuilder({
    super.key,
    required this.builder,
  });
  final BlocWidgetBuilder<S> builder;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<B>(),
      child: BlocBuilder<B, S>(
        buildWhen: (previous, current) => previous != current,
        builder: builder,
      ),
    );
  }
}
