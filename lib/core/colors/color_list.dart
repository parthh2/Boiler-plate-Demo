import 'package:flutter/material.dart';

class ColorList {
  static const int _primaryValue = 0xFF28A745;
  static const int _accentValue = 0xFFF1F6FB;
  static Color primaryColor = const Color(_primaryValue);
  static Color accentColor = const Color(_accentValue);

  static const MaterialColor primaryMaterialColor = MaterialColor(
    _primaryValue,
    <int, Color>{
      500: Color(_primaryValue),
    },
  );
  static const MaterialColor accentMaterialColor = MaterialColor(
    _accentValue,
    <int, Color>{
      500: Color(_accentValue),
    },
  );

  static Color buttonColor = const Color(0xFF238C9D);
  static Color blueColor = const Color(0xFF28AAE1);
  static Color darkBlueColor = const Color(0xFF1F7295);
  static Color greenColor = const Color(0xFF76A539);
  static Color searchBackColor = const Color(0xFFF6F7FA);
  static Color searchBackShadowColor = const Color(0x5500001F);
  static Color greyTextColor = const Color(0xFF393D41);
  static Color greyLightTextColor = const Color(0xFF9D9D9D);
  static Color greyDarkTextColor = const Color(0xFF333333);
  static Color greyLight2TextColor = const Color(0xFF77838F);
  static Color radialColor = const Color(0xFFDDEEEF);
  static Color lightBlueColor = const Color(0xFFDBEEC2);
  static Color greyLight3Color = const Color(0xFFB1B1B1);

  static Color white = const Color(0xffFFFFFF);
  static Color lightGrey = const Color(0xffD1D1D1); // Border color
  static Color stormGrey = const Color(0xff797B7E); // Text value color
  static Color tunaGrey = const Color(0xff464B4F); // Text color
  static Color green = const Color(0xff60923F); // Primary color
  static Color brown = const Color(0xffB5A574); // Secondary color
  static Color yellow = const Color(0xffFFE400);
  static Color black = Colors.black;
  static Color darkGreen = const Color(0xff629135);
  static Color appBarBgDarkMode = const Color(0xff212121);
  static Color darkGreenChipColor = const Color(0xff1d3801);
  static Color greentabSelectedColor = const Color(0xff314a1a);
  static Color darkGreenUnselectedChipColor = const Color(0xff457217);
  static Color darkAppBarGreen = const Color(0xff496c28);
  static Color darkGreenAlimonyBGColor = const Color(0xff486a27);
  static Color greenOverlay = const Color(0xff79a153);
  static Color greenAppbarBg = const Color(0xff659c32);
  static Color greenBorderColor = const Color(0xff61923e);
  static Color greenArcBgProfile = const Color(0xff7aa452);
  static Color greenSwitchColor = const Color(0xff70944b);
  static Color greenButtonColor = const Color(0xff629035);
  static Color greenTextEditorColor = const Color(0xff5e8e31);
  static Color greenTabsUnselectedColor = const Color(0xffb2cc99);
  static Color greenProfileCityColor = const Color(0xff7cbe3e);
  static Color greenBackDropColor = const Color(0xff618F33);
  static Color lightGreenBg = const Color(0xffeff4ea);
  static Color lightGreenSumBoxColor = const Color(0xffEEF4EA);
  static Color lightBoxBgColor = const Color(0xffF6F5F0);
  static Color lightBgTimeLineColor = const Color(0xffFEFAEF);
  static Color lightServiceCatBgColor = const Color(0xffeff5eb);
  static Color lightFaqColor = const Color(0xffF2F2F2);
  static Color lightTableColor = const Color(0xfff2f0ea);
  static Color lightFormBgColor = const Color(0xfff0f7fb);
  static Color lightChangedBgColor = const Color(0xffEDEDED);
  static Color lightCallUsColor = const Color(0xfff7f6f1);
  static Color lightAlimonyDetailBgColor = const Color(0xffeeeeeb);
  static Color lightAlimonyBgColor = const Color(0xffeeefec);
  static Color brownLight = const Color(0xffa79a70);
  static Color brownBottomSheetColor = const Color(0xff878B4B);
  static Color brownPrimaryColor = const Color(0xffb5a574);
  static Color brownBoxBgColor = const Color(0xffb1a272);
  static Color brownRqstSumColor = const Color(0xff737762);
  static Color brownRqstSubTitleColor = const Color(0xff838673);
  static Color brownDateTextColor = const Color(0xff9B9E8D);
  static Color violetProfileDobColor = const Color(0xff7444ad);
  static Color violetProfileColor = const Color(0xff9475cf);
  static Color violetProfileAddressColor = const Color(0xff7586cf);
  static Color yellowColor = const Color(0xffFFE500);
  static Color orangeTimeLineColor = const Color(0xffE97B22);
  static Color orangeProfileMoColor = const Color(0xffeaaa31);
  static Color orangeProfileChildColor = const Color(0xffd9af4f);
  static Color whiteColor = Colors.white;
  static Color blueProfileFamilyBookColor = const Color(0xff5277d9);
  static Color blueDoneKeyboardColor = Colors.blueAccent;
  static Color redColor = const Color(0xffd13939);
  static Color pinkColor = Colors.pink;
  static Color redErrorColor = const Color(0xffd32f2f);
  static Color redProfileColor = const Color(0xffcf4646);
  static Color redNotAddedColor = const Color(0xffe20042);
  static Color redProfileEmirateColor = const Color(0xffad4444);
  static Color redClosingMemColor = const Color(0xffd96253);
  static Color cyanProfileColor = const Color(0xff75cfc8);
  static Color greenProfileEduMajorColor = const Color(0xffb0cf75);
  static Color black02Opacity = Colors.black.withOpacity(0.2);
  static Color greyColor = Colors.grey;
  static Color greyChartTitleFontColor = const Color(0xffa1a2a4);
  static Color greyHourGlassText = const Color(0xff7e8184);
  static Color greyThemeSubTitleColor = const Color(0xff7a7a7a);
  static Color darkGreyAmountColor = const Color(0xff464b4f);
  static Color greyDarkSettingsColor = const Color(0xff484b50);
  static Color greyTextDark = const Color(0xff474b50);
  static Color greyTextDarkServiceColor = const Color(0xff474a4f);
  static Color greyDarkNotificationColor = const Color(0xff575b5f);
  static Color greyDarkFormSubtitle = const Color(0xff6c6f73);
  static Color greyDarkBoxes = const Color(0xff212121);
  static Color greyYourVoiceSubTitleColor = const Color(0xff696e70);
  static Color greyDarkNotificationTitleColor = const Color(0xff75787c);
  static Color greyDarkEduDedColor = const Color(0xff616468);
  static Color greyDarkHintColor = const Color(0xff7d8183);
  static Color greyDarkDateColor = const Color(0xff7A7E80);
  static Color greySubTitleColor = const Color(0xff818487);
  static Color greyDarkButtonColor = const Color(0xff797979);
  static Color greyNotificationColor = const Color(0xff8d8f92);
  static Color greyAboutTextColor = const Color(0xff7A7B7D);
  static Color greyErrorButtonColor = const Color(0xff999999);
  static Color greyUnSelectedTextColor = const Color(0xff919295);
  static Color greyLineColor = const Color(0xffb2b2b2);
  static Color greyViewAllColor = const Color(0xff919191);
  static Color greyTimelineTextColor = const Color(0xffA0A294);
  static Color greyAlimonyTextColor = const Color(0xff9e9f93);
  static Color greyTimelineDisableTextColor = const Color(0xffB6B7B9);
  static Color greyBorder = const Color(0xffd1d1d1);
  static Color greyBorderViewALlColor = const Color(0xff808080);
  static Color greyBorderCardsColor = const Color(0xff454545);
  static Color greyDisableColor = const Color(0xffbcbcbc);
  static Color greyPensionerArcBgColor = const Color(0xffccd1d5);
  static Color greyDividerLightColor = const Color(0xff333333);
  static Color greyDividerDarkColor = const Color(0xffD7D7D9);
  static Color greyDividerNotificationColor = const Color(0xffd6dfcd);
  static Color greyDisableCircleColor = const Color(0xffECECEC);
  static Color greyDateContainerColor = const Color(0xfff3f3f3);
  static Color greyChartLineColor = const Color(0xffcccccc);
  static Color greyBoxBorderColor = const Color(0xffbababa);
  static Color greyHintTextColor = const Color(0xffb7bcc3);
  static Color greyPieChartColor = const Color(0xffb2b3b5);
  static Color greyDividerColor = const Color(0xffDEE2D9);
  static Color greyAddButtonColor = const Color(0xffd3d3d3);
  static Color greyPaidInstallmentBgColor = const Color(0xfff4eaea);
  static Color greyIndicatorColor = const Color(0xffE5E5E5);
  static Color greyLightPieSliceColor = const Color(0xffdfe2e8);
  static Color greyLightPieDedSliceColor = const Color(0xffd5d6d7);
  static Color greyDisabledTextColor = const Color(0xfff0f0f0);
  static Color greyPieSLiceDarkTHemeColor = const Color(0xff545555);
  static Color greyProgressBg = const Color(0xfff2f1fa);
  static Color greyDarkCircleProgressColor = const Color(0xff363637);
  static Color lightYourVoiceBgColor = const Color(0xfff7f9f5);
  static Color transparentColor = Colors.transparent;
  static Color gryTextColor = const Color(0xff8d8d8d);
  static Color deductionAmountLightGreyColor = const Color(0xff7A7B7F);
  static Color alreadyPaidAttachmentBgColor = const Color(0xffF9F9F9);
  static Color eosDateTextColor = const Color(0xff949895).withOpacity(0.9);
  static Color attachBgColor = const Color(0xffF6F6F6);
  static Color lightWhiteTextColor = const Color(0xffB0BEC5);
  static Color noteBgColor = const Color(0xffFFFAEF);
  static Color scrollBarBgColor = const Color(0xffF8F8F8);
  static Color lightBrownWhiteColor = const Color(0xffC1D2AE);
  static Color currentInstallmentPaidDateColor = const Color(0xff474b50);
  static Color contributionShareTextColor = const Color(0xffB3B4B6);
  static Color brownColor = const Color(0xffb09f73);
  static Color grayTextColor = const Color(0xff3c3c3a);
  static Color grayColor = const Color(0xffA5A7B4);
  static Color webAppbarBackColor = const Color(0xff6E705B);
  static Color black38Color = Colors.black38;
  static Color white38Color = Colors.white38;
  static Color nidHintColor = const Color(0xff565656);

  static Color videoProgressColor = const Color(0xff547230);
  static Color videoRemainingProgressColor = const Color(0xffCDCDBE);

  static List<Color> dashboardColorGradients = [
    const Color(0xff659d30),
    const Color(0xff649b31),
    const Color(0xff639931),
    const Color(0xff639833),
    const Color(0xff639733),
    const Color(0xff639633),
    const Color(0xff639533),
  ];
  static List<Color> chartDropShadowGradients = [
    ColorList.lightGreenBg.withOpacity(0.5),
    const Color(0xfff5f8f2).withOpacity(0.3),
    const Color(0xfff6f9f4).withOpacity(0.3),
    const Color(0xfff8faf6).withOpacity(0.3),
    const Color(0xfffbfcfa).withOpacity(0.3),
    const Color(0xfffdfdfc).withOpacity(0.3),
    const Color(0xfffefffc).withOpacity(0.3),
    const Color(0xfffefffe).withOpacity(0.3),
  ];
  static List<Color> chartLineGradients = [
    const Color(0xff386403),
    const Color(0xff396504),
    const Color(0xff507c07),
    const Color(0xff517c0e),
    const Color(0xff66920a),
    const Color(0xff6e990b),
    const Color(0xff729d10),
    const Color(0xff83ae0e),
    const Color(0xff8eb50d),
    const Color(0xff98bb0b),
    const Color(0xff9cbc0d),
    const Color(0xffa2c00c),
    const Color(0xffabc60a),
  ];
  static Map<int, Color> calendarButtonColor = {
    50: ColorList.greyTextDark,
    100: ColorList.greyTextDark,
    200: ColorList.greyTextDark,
    300: ColorList.greyTextDark,
    400: ColorList.greyTextDark,
    500: ColorList.greyTextDark,
    600: ColorList.greyTextDark,
    700: ColorList.greyTextDark,
    800: ColorList.greyTextDark,
    900: ColorList.greyTextDark,
  };
  static Color goldenBrownTextColor = const Color(0xff8F9183);

  static Color contributionYearTextColor = const Color(0xff8E8F92);

  static Color paidAmountTextColor = const Color(0xff464b4f);

  static Color requestSummaryTextColor = const Color(0xff999999);

  static Color lightRedColor = const Color(0xffFB8484);

  static Map<int, Color> primarySwatch = {
    50: ColorList.white,
    100: ColorList.white,
    200: ColorList.white,
    300: ColorList.white,
    400: ColorList.white,
    500: ColorList.white,
    600: ColorList.white,
    700: ColorList.white,
    800: ColorList.white,
    900: ColorList.white,
  };

  static int primaryInt = 0xff619034;

  static List<Color> blackGradients = [
    Colors.black45,
    Colors.transparent,
  ];

  static List<Color> whiteGradients = [
    Colors.white38,
    Colors.white30,
    Colors.white24,
    Colors.white12,
    Colors.white10,
    Colors.transparent,
  ];
}
