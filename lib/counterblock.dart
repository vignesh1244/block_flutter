import 'dart:async';
import 'package:bolc_api/coutnerevetn.dart';

class CounterBloc {
  int _counter = 0;
  final _counterStateControler = StreamController<int>();

  StreamSink<int> get _inConter => _counterStateControler.sink;

  Stream<int> get counter => _counterStateControler.stream;

  /////////////////////////////////////////////////////////////////////////////

  final _counterEventControler = StreamController<CounterEvent>();

  Sink<CounterEvent> get counterEventSink => _counterEventControler.sink;

  CounterBloc() {
    _counterEventControler.stream.listen(_mapEventToState);
  }

  void _mapEventToState(CounterEvent event) {
    if (event is IncreementEvetn)
      _counter++;
    else
      _counter--;
    _inConter.add(_counter);
  }
}
