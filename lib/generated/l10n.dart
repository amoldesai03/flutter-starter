// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Movies App`
  String get appName {
    return Intl.message(
      'Movies App',
      name: 'appName',
      desc: 'Application Name',
      args: [],
    );
  }

  /// `The connection has timed out. Please try again`
  String get connectionTimedOut {
    return Intl.message(
      'The connection has timed out. Please try again',
      name: 'connectionTimedOut',
      desc: '',
      args: [],
    );
  }

  /// `There are some problems with the connection. Please try again`
  String get connectionProblem {
    return Intl.message(
      'There are some problems with the connection. Please try again',
      name: 'connectionProblem',
      desc: '',
      args: [],
    );
  }

  /// `Invalid credentials`
  String get invalidCredentials {
    return Intl.message(
      'Invalid credentials',
      name: 'invalidCredentials',
      desc: '',
      args: [],
    );
  }

  /// `Response is null`
  String get responseNull {
    return Intl.message(
      'Response is null',
      name: 'responseNull',
      desc: '',
      args: [],
    );
  }

  /// `Cancelled`
  String get cancelled {
    return Intl.message(
      'Cancelled',
      name: 'cancelled',
      desc: '',
      args: [],
    );
  }

  /// `Connect timeout`
  String get connectTimeout {
    return Intl.message(
      'Connect timeout',
      name: 'connectTimeout',
      desc: '',
      args: [],
    );
  }

  /// `Receive timeout`
  String get receiveTimeout {
    return Intl.message(
      'Receive timeout',
      name: 'receiveTimeout',
      desc: '',
      args: [],
    );
  }

  /// `Send timeout`
  String get sendTimeout {
    return Intl.message(
      'Send timeout',
      name: 'sendTimeout',
      desc: '',
      args: [],
    );
  }

  /// `Please check internet connection`
  String get pleaseCheckInternetConnection {
    return Intl.message(
      'Please check internet connection',
      name: 'pleaseCheckInternetConnection',
      desc: '',
      args: [],
    );
  }

  /// `Server error.`
  String get serverError {
    return Intl.message(
      'Server error.',
      name: 'serverError',
      desc: '',
      args: [],
    );
  }

  /// `Unknown error`
  String get unknownError {
    return Intl.message(
      'Unknown error',
      name: 'unknownError',
      desc: '',
      args: [],
    );
  }

  /// `Server unknown error`
  String get serverUnknownError {
    return Intl.message(
      'Server unknown error',
      name: 'serverUnknownError',
      desc: '',
      args: [],
    );
  }

  /// `Server not found`
  String get serverNotFound {
    return Intl.message(
      'Server not found',
      name: 'serverNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Database exception`
  String get databaseException {
    return Intl.message(
      'Database exception',
      name: 'databaseException',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Welcome back!`
  String get welComeBack {
    return Intl.message(
      'Welcome back!',
      name: 'welComeBack',
      desc: '',
      args: [],
    );
  }

  /// `Login to continue.`
  String get loginToContinue {
    return Intl.message(
      'Login to continue.',
      name: 'loginToContinue',
      desc: '',
      args: [],
    );
  }

  /// `Email Address`
  String get emailAddress {
    return Intl.message(
      'Email Address',
      name: 'emailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get kConfirm {
    return Intl.message(
      'Confirm',
      name: 'kConfirm',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure \n\nYou want to logout?`
  String get kLogoutMsg {
    return Intl.message(
      'Are you sure \n\nYou want to logout?',
      name: 'kLogoutMsg',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure \n\nYou want to delete account?`
  String get kDeleteAccount {
    return Intl.message(
      'Are you sure \n\nYou want to delete account?',
      name: 'kDeleteAccount',
      desc: '',
      args: [],
    );
  }

  /// `Please enter email address or mobile number`
  String get kEmptyField {
    return Intl.message(
      'Please enter email address or mobile number',
      name: 'kEmptyField',
      desc: '',
      args: [],
    );
  }

  /// `Please enter country code`
  String get kEnterCountryCode {
    return Intl.message(
      'Please enter country code',
      name: 'kEnterCountryCode',
      desc: '',
      args: [],
    );
  }

  /// `Please enter mobile number`
  String get kEnterMobileNumber {
    return Intl.message(
      'Please enter mobile number',
      name: 'kEnterMobileNumber',
      desc: '',
      args: [],
    );
  }

  /// `Please enter valid mobile number`
  String get kEnterValidMobileNumber {
    return Intl.message(
      'Please enter valid mobile number',
      name: 'kEnterValidMobileNumber',
      desc: '',
      args: [],
    );
  }

  /// `Please enter valid email address`
  String get kEnterValidEmailAddress {
    return Intl.message(
      'Please enter valid email address',
      name: 'kEnterValidEmailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Please enter email address`
  String get kEnterEmailAddress {
    return Intl.message(
      'Please enter email address',
      name: 'kEnterEmailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Please enter first name`
  String get kEnterFirstName {
    return Intl.message(
      'Please enter first name',
      name: 'kEnterFirstName',
      desc: '',
      args: [],
    );
  }

  /// `Please enter at least 1 character for first name`
  String get kEnterValidFirstName {
    return Intl.message(
      'Please enter at least 1 character for first name',
      name: 'kEnterValidFirstName',
      desc: '',
      args: [],
    );
  }

  /// `Please enter last name`
  String get kEnterLastName {
    return Intl.message(
      'Please enter last name',
      name: 'kEnterLastName',
      desc: '',
      args: [],
    );
  }

  /// `Please enter at least 3 characters for last name`
  String get kEnterValidLastName {
    return Intl.message(
      'Please enter at least 3 characters for last name',
      name: 'kEnterValidLastName',
      desc: '',
      args: [],
    );
  }

  /// `Please enter password`
  String get kEnterPassword {
    return Intl.message(
      'Please enter password',
      name: 'kEnterPassword',
      desc: '',
      args: [],
    );
  }

  /// `Password should be 8 or more characters`
  String get kEnterValidPassword {
    return Intl.message(
      'Password should be 8 or more characters',
      name: 'kEnterValidPassword',
      desc: '',
      args: [],
    );
  }

  /// `Please enter new password`
  String get kEnterNewPassword {
    return Intl.message(
      'Please enter new password',
      name: 'kEnterNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Please enter OTP`
  String get kPleaseEnterOtp {
    return Intl.message(
      'Please enter OTP',
      name: 'kPleaseEnterOtp',
      desc: '',
      args: [],
    );
  }

  /// `Please enter valid OTP`
  String get kPleaseEnterValidOtp {
    return Intl.message(
      'Please enter valid OTP',
      name: 'kPleaseEnterValidOtp',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message(
      'Ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Data not found`
  String get dataNotFound {
    return Intl.message(
      'Data not found',
      name: 'dataNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Gallery`
  String get gallery {
    return Intl.message(
      'Gallery',
      name: 'gallery',
      desc: '',
      args: [],
    );
  }

  /// `Camera`
  String get camera {
    return Intl.message(
      'Camera',
      name: 'camera',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Pick Image`
  String get pickImage {
    return Intl.message(
      'Pick Image',
      name: 'pickImage',
      desc: '',
      args: [],
    );
  }

  /// `Pick Video`
  String get pickVideo {
    return Intl.message(
      'Pick Video',
      name: 'pickVideo',
      desc: '',
      args: [],
    );
  }

  /// `Pick Documents`
  String get pickDocuments {
    return Intl.message(
      'Pick Documents',
      name: 'pickDocuments',
      desc: '',
      args: [],
    );
  }

  /// `Pick Audio`
  String get pickAudio {
    return Intl.message(
      'Pick Audio',
      name: 'pickAudio',
      desc: '',
      args: [],
    );
  }

  /// `Add New Card`
  String get addNewCard {
    return Intl.message(
      'Add New Card',
      name: 'addNewCard',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your card details`
  String get addNewCardDesc {
    return Intl.message(
      'Please enter your card details',
      name: 'addNewCardDesc',
      desc: '',
      args: [],
    );
  }

  /// `Please enter card number`
  String get enterCardNumber {
    return Intl.message(
      'Please enter card number',
      name: 'enterCardNumber',
      desc: '',
      args: [],
    );
  }

  /// `Please enter card name`
  String get enterCardName {
    return Intl.message(
      'Please enter card name',
      name: 'enterCardName',
      desc: '',
      args: [],
    );
  }

  /// `Please enter expiry date`
  String get enterExpiryDate {
    return Intl.message(
      'Please enter expiry date',
      name: 'enterExpiryDate',
      desc: '',
      args: [],
    );
  }

  /// `Please enter cvv`
  String get enterCvv {
    return Intl.message(
      'Please enter cvv',
      name: 'enterCvv',
      desc: '',
      args: [],
    );
  }

  /// `Card is invalid`
  String get numberIsInvalid {
    return Intl.message(
      'Card is invalid',
      name: 'numberIsInvalid',
      desc: '',
      args: [],
    );
  }

  /// `Card Number`
  String get cardNumber {
    return Intl.message(
      'Card Number',
      name: 'cardNumber',
      desc: '',
      args: [],
    );
  }

  /// `Card Name`
  String get cardName {
    return Intl.message(
      'Card Name',
      name: 'cardName',
      desc: '',
      args: [],
    );
  }

  /// `Expiry Date`
  String get expiryDate {
    return Intl.message(
      'Expiry Date',
      name: 'expiryDate',
      desc: '',
      args: [],
    );
  }

  /// `Cvv`
  String get cvv {
    return Intl.message(
      'Cvv',
      name: 'cvv',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get getStarted {
    return Intl.message(
      'Get Started',
      name: 'getStarted',
      desc: '',
      args: [],
    );
  }

  /// `Sign In With`
  String get signInWith {
    return Intl.message(
      'Sign In With',
      name: 'signInWith',
      desc: '',
      args: [],
    );
  }

  /// `Welcome Back!`
  String get welcomeBack {
    return Intl.message(
      'Welcome Back!',
      name: 'welcomeBack',
      desc: '',
      args: [],
    );
  }

  /// `Hello!`
  String get hello {
    return Intl.message(
      'Hello!',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get or {
    return Intl.message(
      'Or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get logIn {
    return Intl.message(
      'Log in',
      name: 'logIn',
      desc: '',
      args: [],
    );
  }

  /// `Forgot?`
  String get forgot {
    return Intl.message(
      'Forgot?',
      name: 'forgot',
      desc: '',
      args: [],
    );
  }

  /// `Don"t have an account?`
  String get dontHaveAccount {
    return Intl.message(
      'Don"t have an account?',
      name: 'dontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get signUp {
    return Intl.message(
      'Sign up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get alreadyHaveAccount {
    return Intl.message(
      'Already have an account?',
      name: 'alreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Fill your below detail to create account`
  String get fillDetails {
    return Intl.message(
      'Fill your below detail to create account',
      name: 'fillDetails',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Mobile Number`
  String get mobNumber {
    return Intl.message(
      'Mobile Number',
      name: 'mobNumber',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confPassword',
      desc: '',
      args: [],
    );
  }

  /// `I agree to `
  String get iAgree {
    return Intl.message(
      'I agree to ',
      name: 'iAgree',
      desc: '',
      args: [],
    );
  }

  /// `Terms & Conditions`
  String get tNc {
    return Intl.message(
      'Terms & Conditions',
      name: 'tNc',
      desc: '',
      args: [],
    );
  }

  /// ` and `
  String get and {
    return Intl.message(
      ' and ',
      name: 'and',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy.`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy.',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Password and Confirm password not match`
  String get passwordMismatch {
    return Intl.message(
      'Password and Confirm password not match',
      name: 'passwordMismatch',
      desc: '',
      args: [],
    );
  }

  /// `Please accept $tNc $and $privacyPolicy`
  String get acceptTnC {
    return Intl.message(
      'Please accept \$tNc \$and \$privacyPolicy',
      name: 'acceptTnC',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Dashboard`
  String get dashboard {
    return Intl.message(
      'Dashboard',
      name: 'dashboard',
      desc: '',
      args: [],
    );
  }

  /// `dkf`
  String get dkf {
    return Intl.message(
      'dkf',
      name: 'dkf',
      desc: '',
      args: [],
    );
  }

  /// `Top Rated Movies`
  String get latestMovies {
    return Intl.message(
      'Top Rated Movies',
      name: 'latestMovies',
      desc: '',
      args: [],
    );
  }

  /// `Ratings: `
  String get ratings {
    return Intl.message(
      'Ratings: ',
      name: 'ratings',
      desc: '',
      args: [],
    );
  }

  /// `Movies`
  String get movies {
    return Intl.message(
      'Movies',
      name: 'movies',
      desc: '',
      args: [],
    );
  }

  /// `Popular Movies`
  String get popularMovies {
    return Intl.message(
      'Popular Movies',
      name: 'popularMovies',
      desc: '',
      args: [],
    );
  }

  /// `Upcoming Movies`
  String get upcomingMovies {
    return Intl.message(
      'Upcoming Movies',
      name: 'upcomingMovies',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
