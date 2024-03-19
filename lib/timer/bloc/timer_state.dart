part of 'timer_bloc.dart';
//import 'package:equatable/equatable.dart';

sealed class TimerState extends Equatable{
  const TimerState(this.duration);
  final int duration;

  @override
  List<Object> get props => [duration];
}

// TimerInitial the user will be able to start the timer.
final class TimerInitial extends TimerState{
  const TimerInitial(super.duration);

  @override
  String toString()=>'TimerInitial { duration:$duration }';
}

//TimerRunPause the user will be able to resume the timer and reset the timer.
final class TimerRunPause extends TimerState{
  const TimerRunPause( super.duration);

  @override
  String toString() => 'TimerRunPause { duration: $duration }';
}

//TimerRunInProgress the user will be able to pause and reset the timer as well as see the remaining duration.
final class TimerRunInProgress extends TimerState{
  const TimerRunInProgress(super.duration);

  @override
  String toString() => 'TimerRunInProgress { duration: $duration }';
}

//TimerRunComplete the user will be able to reset the timer.
final class TimerRunComplete extends TimerState {
  const TimerRunComplete() : super(0);
}