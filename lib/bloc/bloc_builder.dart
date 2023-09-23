import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messenger_app/di/di.dart';

class BlocProviderAndBuilder<B extends Cubit<S>, S> extends StatelessWidget {
  const BlocProviderAndBuilder({
    super.key,
    this.factory,
    required this.builder,
  });

  final void Function(BuildContext context)? factory;
  final BlocWidgetBuilder<S> builder;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<B>(
      create: (context) => getIt.get<B>(),
      child: _RunOnce(
        callback: () => factory?.call(context),
        child: BlocBuilder<B, S>(
          buildWhen: (previous, current) => previous != current,
          builder: builder,
        ),
      ),
    );
  }
}

class _RunOnce extends StatefulWidget {
  const _RunOnce({
    required this.callback,
    required this.child,
  });

  final Widget child;
  final VoidCallback callback;

  @override
  State<_RunOnce> createState() => _RunOnceState();
}

class _RunOnceState extends State<_RunOnce> {
  @override
  void initState() {
    super.initState();
    widget.callback();
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
