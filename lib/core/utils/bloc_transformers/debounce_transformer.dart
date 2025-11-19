import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

EventTransformer<T> debounceTransformer<T>({int milliseconds = 400}) {
  return (events, mapper) {
    return events.debounceTime(Duration(milliseconds: milliseconds)).switchMap(mapper);
  };
}
