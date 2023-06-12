// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ru';

  static String m0(index) => "Вопрос #${index}";

  static String m1(login) => "Имя пользователя: ${login}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "add_answer": MessageLookupByLibrary.simpleMessage("Добавить ответ"),
        "add_question": MessageLookupByLibrary.simpleMessage("Добавить вопрос"),
        "answer": MessageLookupByLibrary.simpleMessage("Ответ"),
        "assure": MessageLookupByLibrary.simpleMessage("Assure"),
        "change_password":
            MessageLookupByLibrary.simpleMessage("Изменить пароль"),
        "create_test": MessageLookupByLibrary.simpleMessage("Создать тест"),
        "creating_test": MessageLookupByLibrary.simpleMessage("Создание теста"),
        "dark": MessageLookupByLibrary.simpleMessage("Темная"),
        "description": MessageLookupByLibrary.simpleMessage("Описание"),
        "end_test": MessageLookupByLibrary.simpleMessage("Закончить тест"),
        "english": MessageLookupByLibrary.simpleMessage("Английский"),
        "error": MessageLookupByLibrary.simpleMessage("Ошибка"),
        "failed_connect_server": MessageLookupByLibrary.simpleMessage(
            "Не удалось соединиться с сервером"),
        "has_score": MessageLookupByLibrary.simpleMessage("Считать ли баллы"),
        "incorrect_login_or_password": MessageLookupByLibrary.simpleMessage(
            "Неправильный логин или пароль"),
        "incorrect_password":
            MessageLookupByLibrary.simpleMessage("Неправильный пароль"),
        "language": MessageLookupByLibrary.simpleMessage("Язык"),
        "light": MessageLookupByLibrary.simpleMessage("Светлая"),
        "log_out": MessageLookupByLibrary.simpleMessage("Выйти"),
        "login": MessageLookupByLibrary.simpleMessage("Имя пользователя"),
        "login_already_use":
            MessageLookupByLibrary.simpleMessage("Логин уже используется"),
        "move_to_page":
            MessageLookupByLibrary.simpleMessage("Переход к странице"),
        "my_tests": MessageLookupByLibrary.simpleMessage("Мои тесты"),
        "new_password": MessageLookupByLibrary.simpleMessage("Новый пароль"),
        "no_internet":
            MessageLookupByLibrary.simpleMessage("Нет подключения к интернету"),
        "old_password": MessageLookupByLibrary.simpleMessage("Старый пароль"),
        "password": MessageLookupByLibrary.simpleMessage("Пароль"),
        "password_is_changed":
            MessageLookupByLibrary.simpleMessage("Пароль изменен!"),
        "passwords_dont_match":
            MessageLookupByLibrary.simpleMessage("Пароли не совпадают"),
        "question": MessageLookupByLibrary.simpleMessage("Вопрос"),
        "question_index": m0,
        "repeat_password":
            MessageLookupByLibrary.simpleMessage("Повторите пароль"),
        "result": MessageLookupByLibrary.simpleMessage("Результат"),
        "russian": MessageLookupByLibrary.simpleMessage("Русский"),
        "score": MessageLookupByLibrary.simpleMessage("Баллы"),
        "setting": MessageLookupByLibrary.simpleMessage("Настройки"),
        "sign_in": MessageLookupByLibrary.simpleMessage("Войти"),
        "sign_up": MessageLookupByLibrary.simpleMessage("Зарегистрироваться"),
        "successfully_logged":
            MessageLookupByLibrary.simpleMessage("Вы успешно авторизовались!"),
        "successfully_registered": MessageLookupByLibrary.simpleMessage(
            "Вы успешно зарегистрировались!"),
        "system": MessageLookupByLibrary.simpleMessage("Система"),
        "test_created": MessageLookupByLibrary.simpleMessage("Тест создан"),
        "tests": MessageLookupByLibrary.simpleMessage("Тесты"),
        "theme": MessageLookupByLibrary.simpleMessage("Тема"),
        "title": MessageLookupByLibrary.simpleMessage("Заголовок"),
        "username": m1
      };
}
