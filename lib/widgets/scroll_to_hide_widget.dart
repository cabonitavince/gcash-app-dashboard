import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ScrollToHideWidget extends StatefulWidget {
  final Widget child;
  final ScrollController scrollController;
  final Duration duration;
  const ScrollToHideWidget({Key key, this.child, this.scrollController, this.duration}) : super(key: key);

  @override
  State<ScrollToHideWidget> createState() => _ScrollToHideWidgetState();
}

class _ScrollToHideWidgetState extends State<ScrollToHideWidget> {
  bool isVisible = true;

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(()=>listen());
  }

  @override
  void dispose() {
    widget.scrollController.removeListener(()=>listen());
    super.dispose();
  }

  void listen() {
    final direction = widget.scrollController.position.userScrollDirection;
    if(direction == ScrollDirection.forward) {
      show();
    } else if(direction == ScrollDirection.reverse) {
      hide();
    }
  }

  void show() {
    if(!isVisible) setState(() => isVisible = true);
  }

  void hide() {
    if(isVisible) setState(() => isVisible = false);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: widget.duration,
      height: isVisible ? 75 : 0,
      child: Wrap(children: [widget.child],),
    );
  }
}
