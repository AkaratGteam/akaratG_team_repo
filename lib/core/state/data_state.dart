// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

abstract class DataState<T> {
  T? data;
  DioException? dioException;
  String? error;

  DataState({this.data, this.dioException, this.error});
}

class SuccessData<T> extends DataState {
  SuccessData({required T data}) : super(data: data);
}

class ExceptionData extends DataState {
  ExceptionData({required DioException dioException})
      : super(dioException: dioException);
}

class ErrorData extends DataState {
  ErrorData({required String error}) : super(error: error);
}
