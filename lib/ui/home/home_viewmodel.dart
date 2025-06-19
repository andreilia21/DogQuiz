import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_command/flutter_command.dart';
import 'package:http/http.dart' as http;

class HomeViewModel extends ChangeNotifier {
  HomeViewModel() {
    loadData = Command.createAsyncNoParam(_load, initialValue: null);
    loadData.execute();
  }

  String? _data;
  String? get data => _data;

  late final Command<void, String?> loadData;

  Future<String?> _load() async {
    final response = await http.get(Uri.parse('https://dog.ceo/api/breeds/image/random'));

    if (response.statusCode == 200) {
      _data = json.decode(response.body)['message'];
      notifyListeners();
    } else {
      throw Exception('Failed to load random dog picture');
    }
    return _data;
  }
}
