import 'package:flutter/material.dart';
import 'package:flutter_demo_structure/values/export.dart';

class Loading extends StatefulWidget {
  final bool? backgroundTransparent;
  final String? message;
  final bool? status;
  final Widget? child;

  const Loading(
      {Key? key,
      this.status,
      this.child,
      this.message,
      this.backgroundTransparent})
      : super(key: key);

  @override
  LoadingState createState() => LoadingState();
}

class LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[widget.child!, _loading(widget.status!)]);
  }

  Widget _loading(bool loading) {
    return loading == true
        ? Container(
            alignment: Alignment.center,
            color: widget.backgroundTransparent == true
                ? Colors.transparent
                : Colors.grey.withOpacity(0.7),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  CircularProgressIndicator(
                    backgroundColor: Colors.transparent,
                    valueColor:
                        AlwaysStoppedAnimation<Color>(AppColor.white),
                  )
                ]),
          )
        : Container();
  }
}
