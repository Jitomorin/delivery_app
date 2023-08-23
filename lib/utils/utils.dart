import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:lottie/lottie.dart';

//colors
const backgroundColor = Color(0xffF4F4F6);
const primaryColor = Color(0xFF137FB8);
const hint = Color(0xff828284);
const secondaryColor = Color(0xff7E7E7E);
const secondaryCAlt = Color(0xff020303);
const actionC = Color(0xffFCA311);
const actionCDark = Color(0xff8D5801);
const salmonPink = Color(0xffF5CAC3);

//loading animation
// final Widget loadingAnim = Lottie.asset('assets/LoadingLottie.json');

//network images
const defaultProfilePic =
    'https://3.bp.blogspot.com/-UI5bnoLTRAE/VuU18_s6bRI/AAAAAAAADGA/uafLtb4ICCEK8iO3NOh1C_Clh86GajUkw/s1600/guest.png';

//Icon
const mocapLogoSVG = 'assets/logos/tMocapital_Logo.svg';
final Widget mocapLogo = SvgPicture.asset(
  mocapLogoSVG,
);

// for picking up image from gallery
// pickImage(ImageSource source) async {
//   final ImagePicker _imagePicker = ImagePicker();
//   XFile? _file = await _imagePicker.pickImage(source: source);
//   if (_file != null) {
//     return await _file.readAsBytes();
//   }
//   print('No Image Selected');
// }
