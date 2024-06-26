
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum FieldType {
  normal,
  password,
}

class CustomTextFieldController {
  final TextEditingController _editingController = TextEditingController();
  late ValueNotifier<double> _showHint = ValueNotifier(1);

  final ValueNotifier<bool> _errorNotifier = ValueNotifier(false);
  final ValueNotifier<TextStyle> _errorTextStyle =
  ValueNotifier(const TextStyle());
  final FocusNode _focusNode = FocusNode();
  String _errorMassage = 'There is something wrong.';
  String? _subText;
  bool _error = false;
  bool _passwordToggle = true;
  bool _checkable = true;

  CustomTextFieldController({String? initialText}) {
    _initState(initialText);
  }

  _initState(String? initialText) {
    if (initialText != null) {
      _editingController.text = initialText;
      _showHint = ValueNotifier(0);
    }

    _editingController.addListener(() {
      _showHint.value = _editingController.text.isEmpty ? 1.0 : 0.0;
      if (_error) {
        removeError();
      }
    });
  }

  void dispose() {
    _focusNode.dispose();
    _editingController.dispose();
  }

  String get text => _editingController.text;

  String? get subText => _subText;

  bool get hasError => _error;

  bool get passwordVisibility => _passwordToggle;

  bool get isEmpty => _editingController.text.isEmpty;

  bool get isNotEmpty => _editingController.text.isNotEmpty;

  bool get isCheckable => _checkable;

  int get length => _editingController.text.length;

  void clear() {
    _editingController.clear();
    _error = false;
    _errorNotifier.value = false;
  }

  void addListener(Function(String) function) {
    _editingController.addListener(() {
      function(text);
    });
  }

  void setText(String massage) {
    _editingController.text = massage;
  }

  void setSubText(String massage) {
    _subText = massage;
  }

  void setError({String? massage}) {
    if (massage != null) {
      _errorMassage = massage;
    }
    _error = true;
    _errorNotifier.value = true;
    _errorTextStyle.notifyListeners();
  }

  void removeError() {
    _error = false;
    _errorNotifier.value = false;
    _errorTextStyle.notifyListeners();
  }

  void focus() {
    _focusNode.requestFocus();
  }

  void unFocus() {
    _focusNode.unfocus();
  }

  void clearWithFocus() {
    clear();
    _focusNode.unfocus();
  }

  void setCheckable(bool value) {
    _checkable = value;
  }
}

class CustomTextField extends StatefulWidget {
  final CustomTextFieldController controller;
  final String? hintText;
  final TextStyle hintStyle;
  final TextStyle textStyle;
  final TextStyle? errorTextStyle;
  final Function(bool, String)? valueStatus;
  final Function(String)? onSubmitted;
  final Function(String)? onChanged;
  final EdgeInsets? hintPadding;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final TextInputType? keyboardType;
  final Color? cursorColor;
  final TextAlign textAlign;
  final List<TextInputFormatter>? inputFormatters;
  final bool? autofocus;
  final EdgeInsets padding;
  final EdgeInsets? margin;
  final Color? backgroundColor;
  final Radius? cursorRadius;
  final double? cursorWidth;
  final double? cursorHeight;
  final InputDecoration? decoration;
  final TextInputAction? textInputAction;
  final FieldType fieldType;
  final Widget? passwordShowWidget;
  final Widget? passwordHideWidget;
  final BoxBorder? errorBorder;
  final bool autoRemoveError;
  final double? borderRadiusAll;
  final double borderRadiusTopRight;
  final double borderRadiusTopLeft;
  final double borderRadiusBottomRight;
  final double borderRadiusBottomLeft;
  final EdgeInsetsGeometry? errorBoxPadding;
  final bool showErrorBorder;
  final BoxBorder? border;
  final Function? onTapTextField;
  final AlignmentGeometry? hintAlignment;
  final bool autocorrect;
  final bool enableSuggestions;
  final bool isEnabled;

  const CustomTextField({
    super.key,
    required this.controller,
    this.hintText,
    this.valueStatus,
    this.onSubmitted,
    this.onChanged,
    this.minLines,
    this.maxLines,
    this.maxLength,
    this.hintPadding,
    this.keyboardType,
    this.textAlign = TextAlign.start,
    this.inputFormatters,
    this.hintStyle = const TextStyle(),
    this.textStyle = const TextStyle(),
    this.errorTextStyle,
    this.cursorColor,
    this.autofocus,
    this.padding = EdgeInsets.zero,
    this.margin,
    this.backgroundColor,
    this.cursorRadius,
    this.cursorWidth,
    this.cursorHeight,
    this.textInputAction,
    this.decoration,
    this.fieldType = FieldType.normal,
    this.errorBorder,
    this.autoRemoveError = false,
    this.borderRadiusAll,
    this.borderRadiusTopRight = 0.0,
    this.borderRadiusTopLeft = 0.0,
    this.borderRadiusBottomRight = 0.0,
    this.borderRadiusBottomLeft = 0.0,
    this.errorBoxPadding,
    this.passwordShowWidget,
    this.passwordHideWidget,
    this.showErrorBorder = true,
    this.border,
    this.onTapTextField,
    this.hintAlignment,
    this.autocorrect = true,
    this.enableSuggestions = true,
    this.isEnabled = true,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // widget.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin,
      decoration: BoxDecoration(
          borderRadius: _getBorderRadius(), border: widget.border,),
      child: ClipRRect(
        borderRadius: _getBorderRadius(),
        child: widget.fieldType == FieldType.normal
            ? _normalWidget()
            : _passwordWidget(),
      ),
    );
  }

  Widget _normalWidget() {
    return Column(
      children: [
        Stack(
          alignment: widget.hintAlignment ?? Alignment.center,
          children: [
            _textFieldHint(),
            _normalTextField(),
          ],
        ),
        _textFieldErrorSlider(),
      ],
    );
  }

  Widget _normalTextField() {
    return Padding(
      padding: widget.padding,
      child: ValueListenableBuilder(
        valueListenable: widget.controller._errorTextStyle,
        builder: (BuildContext context, TextStyle value, Widget? child) {
          return TextField(
            autocorrect: widget.autocorrect,
            enableSuggestions: widget.enableSuggestions,
            autofocus: widget.autofocus ?? false,
            controller: widget.controller._editingController,
            decoration: widget.decoration,
            textAlign: widget.textAlign,
            cursorColor: widget.cursorColor,
            cursorRadius: widget.cursorRadius,
            cursorHeight: widget.cursorHeight,
            cursorWidth: widget.cursorWidth ?? 2.0,
            keyboardType: widget.keyboardType,
            minLines: widget.minLines,
            maxLines: widget.maxLines,
            maxLength: widget.maxLength,
            focusNode: widget.controller._focusNode,
            inputFormatters: widget.inputFormatters,
            textInputAction: widget.textInputAction,
            enabled: widget.isEnabled,
            onChanged: (v) {
              if (widget.valueStatus != null) {
                widget.valueStatus!(v.isNotEmpty ? true : false, v);
              }
              if (widget.onChanged != null) {
                widget.onChanged!(v);
              }
            },
            onSubmitted: widget.onSubmitted,
            style: _textStyleWithError(widget.textStyle),
          );
        },
      ),
    );
  }

  Widget _passwordWidget() {
    return Column(
      children: [
        Stack(
          alignment: widget.hintAlignment ?? Alignment.center,
          children: [
            _textFieldHint(),
            _passwordTextField(),
          ],
        ),
        _textFieldErrorSlider(),
      ],
    );
  }

  Widget _passwordTextField() {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: widget.padding,
            child: ValueListenableBuilder(
              valueListenable: widget.controller._errorTextStyle,
              builder: (BuildContext context, TextStyle value, Widget? child) {
                return TextField(
                  autofocus: widget.autofocus ?? false,
                  controller: widget.controller._editingController,
                  decoration: widget.decoration?.copyWith(  suffixIcon: InkWell(
                    onTap: (){
                      setState(() {
                        widget.controller._passwordToggle =
                        !widget.controller._passwordToggle;
                      });
                    },
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 230),
                      switchInCurve: Curves.fastOutSlowIn,
                      switchOutCurve: Curves.fastOutSlowIn,
                      child: widget.controller.passwordVisibility
                          ? Container(
                        key: const Key('eye'),
                        child: widget.passwordShowWidget ??
                            const Icon(
                              Icons.visibility_outlined,color: Colors.grey,
                            ),
                      )
                          : Container(
                        key: const Key('eye_off'),
                        child: widget.passwordHideWidget ??
                            const Icon(
                              Icons.visibility_off_outlined,color: Colors.grey,
                            ),
                      ),
                    ),),),
                  textAlign: widget.textAlign,
                  cursorColor: widget.cursorColor,
                  cursorRadius: widget.cursorRadius,
                  cursorHeight: widget.cursorHeight,
                  cursorWidth: widget.cursorWidth ?? 2.0,
                  keyboardType: widget.keyboardType,
                  minLines: widget.minLines,
                  maxLines: 1,
                  maxLength: widget.maxLength,
                  focusNode: widget.controller._focusNode,
                  inputFormatters: widget.inputFormatters,
                  textInputAction: widget.textInputAction,
                  obscureText: widget.controller._passwordToggle,
                  onChanged: (v) {
                    if (widget.valueStatus != null) {
                      widget.valueStatus!(v.isNotEmpty ? true : false, v);
                    }
                    if (widget.onChanged != null) {
                      widget.onChanged!(v);
                    }
                  },
                  onSubmitted: widget.onSubmitted,
                  style: _textStyleWithError(widget.textStyle),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _textFieldHint() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      bottom: 0,
      child: ElevatedButton(
        onPressed: () {
          if (widget.onTapTextField != null) {
            widget.onTapTextField!();
          }
          widget.controller.focus();
        },
        style: _buttonStyleFlat(),
        child: ValueListenableBuilder(
          valueListenable: widget.controller._errorNotifier,
          builder: (BuildContext context, bool value, Widget? child) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 280),
              decoration: BoxDecoration(
                color: widget.backgroundColor ?? Colors.white,
                borderRadius: _getBorderRadius(),
                border: widget.showErrorBorder
                    ? widget.controller.hasError
                    ? widget.errorBorder ??
                    Border.all(color: Colors.red, width: 1.5)
                    : null
                    : null,
              ),
              padding: EdgeInsets.symmetric(horizontal: widget.padding.left),
              alignment: _getAlignment(),
              child: ValueListenableBuilder(
                valueListenable: widget.controller._showHint,
                builder: (context, value, child) {
                  return AnimatedOpacity(
                    duration: const Duration(milliseconds: 160),
                    curve: Curves.ease,
                    opacity: value,
                    child: child,
                  );
                },
                child: Text(
                  widget.hintText ?? '',
                  textAlign: TextAlign.center,
                  style: _textStyleWithError(widget.hintStyle),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _textFieldErrorSlider() {
    return Container(
      color: Colors.red,
      child: ValueListenableBuilder(
        valueListenable: widget.controller._errorNotifier,
        builder: (context, value, child) {
          return _SlideOutDialog(
            expand: value,
            duration: const Duration(milliseconds: 280),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.red,
              ),
              padding: widget.errorBoxPadding ??
                  const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              alignment: Alignment.center,
              child: Text(
                widget.controller._errorMassage,
                textAlign: TextAlign.center,
                style: widget.errorTextStyle ??
                    const TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          );
        },
      ),
    );
  }

  TextStyle _textStyleWithError(TextStyle? style) {
    TextStyle textStyle = style ?? const TextStyle();
    if (widget.controller.hasError) {
      return textStyle.copyWith(color: Colors.red);
    } else {
      return textStyle;
    }
  }

  ButtonStyle _buttonStyleFlat() => ButtonStyle(
    minimumSize: MaterialStateProperty.all(Size.zero),
    backgroundColor: MaterialStateProperty.all(Colors.transparent),
    elevation: MaterialStateProperty.all(0),
    overlayColor: MaterialStateProperty.all(Colors.transparent),
    alignment: Alignment.center,
    padding: MaterialStateProperty.all(EdgeInsets.zero),
    shadowColor: MaterialStateProperty.all(Colors.transparent),
    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
  );

  Alignment _getAlignment() {
    switch (widget.textAlign) {
      case TextAlign.left:
        return Alignment.centerLeft;
      case TextAlign.right:
        return Alignment.centerRight;
      case TextAlign.center:
        return Alignment.center;
      case TextAlign.justify:
        return Alignment.center;
      case TextAlign.start:
        return Alignment.centerLeft;
      case TextAlign.end:
        return Alignment.centerRight;
    }
  }

  BorderRadius _getBorderRadius() {
    if (widget.controller.hasError) {
      if (widget.borderRadiusAll != null) {
        return BorderRadius.only(
          topLeft: Radius.circular(widget.borderRadiusAll!),
          topRight: Radius.circular(widget.borderRadiusAll!),
        );
      } else {
        return BorderRadius.only(
            topLeft: Radius.circular(widget.borderRadiusTopLeft),
            topRight: Radius.circular(widget.borderRadiusTopRight),);
      }
    } else {
      if (widget.borderRadiusAll != null) {
        return BorderRadius.circular(widget.borderRadiusAll!);
      } else {
        return BorderRadius.only(
          topLeft: Radius.circular(widget.borderRadiusTopLeft),
          topRight: Radius.circular(widget.borderRadiusTopRight),
          bottomLeft: Radius.circular(widget.borderRadiusBottomLeft),
          bottomRight: Radius.circular(widget.borderRadiusBottomRight),
        );
      }
    }
  }
}

class _SlideOutDialog extends StatefulWidget {
  final bool expand;
  final Widget child;
  final Duration? duration;

  const _SlideOutDialog({
    required this.expand, required this.child, super.key,
    this.duration,
  });

  @override
  _SlideOutDialogStateful createState() => _SlideOutDialogStateful();
}

class _SlideOutDialogStateful extends State<_SlideOutDialog>
    with SingleTickerProviderStateMixin {
  late AnimationController expandController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    prepareAnimations();
    _runExpandCheck();
  }

  void prepareAnimations() {
    expandController = AnimationController(
        vsync: this,
        duration: widget.duration ?? const Duration(milliseconds: 700),);
    animation = CurvedAnimation(
        parent: expandController,
        curve: Curves.fastOutSlowIn,
        reverseCurve: Curves.fastOutSlowIn,);
  }

  void _runExpandCheck() {
    if (widget.expand) {
      expandController.forward();
    } else {
      expandController.reverse();
    }
  }

  @override
  void didUpdateWidget(_SlideOutDialog oldWidget) {
    super.didUpdateWidget(oldWidget);
    _runExpandCheck();
  }

  @override
  void dispose() {
    expandController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: animation,
      axisAlignment: 1,
      child: AnimatedOpacity(
        duration: widget.duration ?? const Duration(milliseconds: 700),
        opacity: widget.expand ? 1.0 : 0.0,
        curve: Curves.fastOutSlowIn,
        child: widget.child,
      ),
    );
  }
}
