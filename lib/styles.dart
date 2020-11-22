import 'package:flutter/material.dart';
import 'colors.dart';
import 'fonts.dart';

const kHeadTextStyle = TextStyle(
    fontSize: 24, fontWeight: FontWeight.bold, fontFamily: kTitleFontFamily);

const kUserTitleStyle = TextStyle(
    fontSize: 20, fontWeight: FontWeight.bold, fontFamily: kTitleFontFamily);

const kSubTitleTextStyle = TextStyle(
  color: kLightTextColor,
  fontSize: 15,
  fontFamily: kSubTitleFontFamily,
);

const kButtonLabelTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 22.0,
    fontWeight: FontWeight.w600,
    fontFamily: kTitleFontFamily);

const kSemilBoldTextStyle = TextStyle(
  fontSize: 15.0,
  fontWeight: FontWeight.w600,
  fontFamily: kNormalFontFamily,
);

const kNormalTextStyle = TextStyle(
  fontSize: 15.0,
  fontFamily: kNormalFontFamily,
  fontWeight: FontWeight.normal,
);

const kTabsTextStyle = TextStyle(
    fontSize: 12.0,
    fontFamily: kSubTitleFontFamily,
    fontWeight: FontWeight.w700);

var kTextFieldDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: '',
  contentPadding: EdgeInsets.only(left: 25.0, top: 20.0, bottom: 20.0),
  hintStyle: kNormalTextStyle.copyWith(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(32.0),
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kPrimaryColor, width: 2.5),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kPrimaryColor, width: 3.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

var kCaptionFormFieldDecoration = InputDecoration(
  hintText: '',
  hintStyle: kNormalTextStyle.copyWith(
    color: Colors.grey,
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.black),
  ),
);

var kInputRectangleFieldDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: '',
  contentPadding: EdgeInsets.only(left: 25.0, top: 20.0, bottom: 20.0),
  hintStyle: kNormalTextStyle.copyWith(
    color: Colors.grey,
    fontSize: 18.0,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(16.0),
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kPrimaryColor.withOpacity(0.2), width: 1.5),
    borderRadius: BorderRadius.all(Radius.circular(16.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kPrimaryColor, width: 3.0),
    borderRadius: BorderRadius.all(Radius.circular(16.0)),
  ),
);
