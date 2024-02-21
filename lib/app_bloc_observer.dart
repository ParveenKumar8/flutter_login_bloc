import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('${bloc.runtimeType} --> onChange -->  $change ');
  }

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    print('${bloc.runtimeType} --> onCreate -->  ${bloc.state} ');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print('${bloc.runtimeType} --> onTransition -->  $transition ');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    print('${bloc.runtimeType} --> onError -->  $error ');
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    print('${bloc.runtimeType} --> onClose ');
  }
}
