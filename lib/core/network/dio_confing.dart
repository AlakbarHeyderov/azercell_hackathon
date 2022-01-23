import 'package:dio/dio.dart';

final clientDio = Dio()
  ..options = BaseOptions(
    baseUrl: 'https://azercell-hackathon.herokuapp.com/',
    // contentType: 'application/json',
  );
