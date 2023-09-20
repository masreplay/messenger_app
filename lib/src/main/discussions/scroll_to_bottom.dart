import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ScrollToBottom extends StatefulWidget {
  final ScrollController scrollController;
  final Widget child;

  const ScrollToBottom({
    super.key,
    required this.scrollController,
    required this.child,
  });

  @override
  State<ScrollToBottom> createState() => _ScrollToBottomState();
}

class _ScrollToBottomState extends State<ScrollToBottom> {
  bool _showButton = false;

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(() {
      if (widget.scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        setState(() {
          _showButton = true;
        });
      }
      if (widget.scrollController.position.userScrollDirection ==
              ScrollDirection.forward ||
          widget.scrollController.position.pixels == 0) {
        setState(() {
          _showButton = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      children: <Widget>[
        widget.child,
        Positioned.directional(
          start: 8.0,
          bottom: 8.0,
          textDirection: Directionality.of(context),
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: _showButton
                ? FloatingActionButton.small(
                    backgroundColor: theme.colorScheme.primary,
                    foregroundColor: theme.colorScheme.onPrimary,
                    onPressed: () {
                      widget.scrollController.animateTo(
                        0.0,
                        curve: Curves.easeOut,
                        duration: const Duration(milliseconds: 300),
                      );
                    },
                    child: const Icon(Icons.keyboard_arrow_down),
                  )
                : null,
          ),
        ),
      ],
    );
  }
}
