import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'tabbar_event.dart';
part 'tabbar_state.dart';
part 'tabbar_bloc.freezed.dart';

class TabbarBloc extends HydratedBloc<TabbarEvent, TabbarState> {
  TabbarBloc() : super(const TabbarState()) {
    on<_TabChanged>(_tabChanged);
  }

  Future<void> _tabChanged(_TabChanged event, Emitter emit) async {
    emit(event.tabIndex);
  }

  @override
  TabbarState? fromJson(Map<String, dynamic> json) {
    TabbarState.fromJson(json);
    return null;
  }

  @override
  Map<String, dynamic>? toJson(TabbarState state) {
    if (state.status.isSuccess) {
      return state.toJson();
    }
    return null;
  }
}
