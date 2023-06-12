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

  /// `Assure`
  String get assure {
    return Intl.message(
      'Assure',
      name: 'assure',
      desc: '',
      args: [],
    );
  }

  /// `Имя пользователя`
  String get login {
    return Intl.message(
      'Имя пользователя',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Пароль`
  String get password {
    return Intl.message(
      'Пароль',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Логин уже используется`
  String get login_already_use {
    return Intl.message(
      'Логин уже используется',
      name: 'login_already_use',
      desc: '',
      args: [],
    );
  }

  /// `Вы успешно зарегистрировались!`
  String get successfully_registered {
    return Intl.message(
      'Вы успешно зарегистрировались!',
      name: 'successfully_registered',
      desc: '',
      args: [],
    );
  }

  /// `Зарегистрироваться`
  String get sign_up {
    return Intl.message(
      'Зарегистрироваться',
      name: 'sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Войти`
  String get sign_in {
    return Intl.message(
      'Войти',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Выйти`
  String get log_out {
    return Intl.message(
      'Выйти',
      name: 'log_out',
      desc: '',
      args: [],
    );
  }

  /// `Неправильный логин или пароль`
  String get incorrect_login_or_password {
    return Intl.message(
      'Неправильный логин или пароль',
      name: 'incorrect_login_or_password',
      desc: '',
      args: [],
    );
  }

  /// `Вы успешно авторизовались!`
  String get successfully_logged {
    return Intl.message(
      'Вы успешно авторизовались!',
      name: 'successfully_logged',
      desc: '',
      args: [],
    );
  }

  /// `Тесты`
  String get tests {
    return Intl.message(
      'Тесты',
      name: 'tests',
      desc: '',
      args: [],
    );
  }

  /// `Настройки`
  String get setting {
    return Intl.message(
      'Настройки',
      name: 'setting',
      desc: '',
      args: [],
    );
  }

  /// `Мои тесты`
  String get my_tests {
    return Intl.message(
      'Мои тесты',
      name: 'my_tests',
      desc: '',
      args: [],
    );
  }

  /// `Не удалось соединиться с сервером`
  String get failed_connect_server {
    return Intl.message(
      'Не удалось соединиться с сервером',
      name: 'failed_connect_server',
      desc: '',
      args: [],
    );
  }

  /// `Нет подключения к интернету`
  String get no_internet {
    return Intl.message(
      'Нет подключения к интернету',
      name: 'no_internet',
      desc: '',
      args: [],
    );
  }

  /// `Ошибка`
  String get error {
    return Intl.message(
      'Ошибка',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Имя пользователя: {login}`
  String username(Object login) {
    return Intl.message(
      'Имя пользователя: $login',
      name: 'username',
      desc: '',
      args: [login],
    );
  }

  /// `Старый пароль`
  String get old_password {
    return Intl.message(
      'Старый пароль',
      name: 'old_password',
      desc: '',
      args: [],
    );
  }

  /// `Новый пароль`
  String get new_password {
    return Intl.message(
      'Новый пароль',
      name: 'new_password',
      desc: '',
      args: [],
    );
  }

  /// `Повторите пароль`
  String get repeat_password {
    return Intl.message(
      'Повторите пароль',
      name: 'repeat_password',
      desc: '',
      args: [],
    );
  }

  /// `Изменить пароль`
  String get change_password {
    return Intl.message(
      'Изменить пароль',
      name: 'change_password',
      desc: '',
      args: [],
    );
  }

  /// `Пароли не совпадают`
  String get passwords_dont_match {
    return Intl.message(
      'Пароли не совпадают',
      name: 'passwords_dont_match',
      desc: '',
      args: [],
    );
  }

  /// `Пароль изменен!`
  String get password_is_changed {
    return Intl.message(
      'Пароль изменен!',
      name: 'password_is_changed',
      desc: '',
      args: [],
    );
  }

  /// `Неправильный пароль`
  String get incorrect_password {
    return Intl.message(
      'Неправильный пароль',
      name: 'incorrect_password',
      desc: '',
      args: [],
    );
  }

  /// `Тема`
  String get theme {
    return Intl.message(
      'Тема',
      name: 'theme',
      desc: '',
      args: [],
    );
  }

  /// `Светлая`
  String get light {
    return Intl.message(
      'Светлая',
      name: 'light',
      desc: '',
      args: [],
    );
  }

  /// `Система`
  String get system {
    return Intl.message(
      'Система',
      name: 'system',
      desc: '',
      args: [],
    );
  }

  /// `Темная`
  String get dark {
    return Intl.message(
      'Темная',
      name: 'dark',
      desc: '',
      args: [],
    );
  }

  /// `Язык`
  String get language {
    return Intl.message(
      'Язык',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Русский`
  String get russian {
    return Intl.message(
      'Русский',
      name: 'russian',
      desc: '',
      args: [],
    );
  }

  /// `Английский`
  String get english {
    return Intl.message(
      'Английский',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Создать тест`
  String get create_test {
    return Intl.message(
      'Создать тест',
      name: 'create_test',
      desc: '',
      args: [],
    );
  }

  /// `Ответ`
  String get answer {
    return Intl.message(
      'Ответ',
      name: 'answer',
      desc: '',
      args: [],
    );
  }

  /// `Переход к странице`
  String get move_to_page {
    return Intl.message(
      'Переход к странице',
      name: 'move_to_page',
      desc: '',
      args: [],
    );
  }

  /// `Результат`
  String get result {
    return Intl.message(
      'Результат',
      name: 'result',
      desc: '',
      args: [],
    );
  }

  /// `Закончить тест`
  String get end_test {
    return Intl.message(
      'Закончить тест',
      name: 'end_test',
      desc: '',
      args: [],
    );
  }

  /// `Баллы`
  String get score {
    return Intl.message(
      'Баллы',
      name: 'score',
      desc: '',
      args: [],
    );
  }

  /// `Добавить ответ`
  String get add_answer {
    return Intl.message(
      'Добавить ответ',
      name: 'add_answer',
      desc: '',
      args: [],
    );
  }

  /// `Добавить вопрос`
  String get add_question {
    return Intl.message(
      'Добавить вопрос',
      name: 'add_question',
      desc: '',
      args: [],
    );
  }

  /// `Вопрос #{index}`
  String question_index(Object index) {
    return Intl.message(
      'Вопрос #$index',
      name: 'question_index',
      desc: '',
      args: [index],
    );
  }

  /// `Вопрос`
  String get question {
    return Intl.message(
      'Вопрос',
      name: 'question',
      desc: '',
      args: [],
    );
  }

  /// `Считать ли баллы`
  String get has_score {
    return Intl.message(
      'Считать ли баллы',
      name: 'has_score',
      desc: '',
      args: [],
    );
  }

  /// `Создание теста`
  String get creating_test {
    return Intl.message(
      'Создание теста',
      name: 'creating_test',
      desc: '',
      args: [],
    );
  }

  /// `Заголовок`
  String get title {
    return Intl.message(
      'Заголовок',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Описание`
  String get description {
    return Intl.message(
      'Описание',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Тест создан`
  String get test_created {
    return Intl.message(
      'Тест создан',
      name: 'test_created',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ru'),
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
