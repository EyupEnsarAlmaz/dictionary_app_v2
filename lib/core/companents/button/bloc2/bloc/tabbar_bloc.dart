import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'tabbar_event.dart';
part 'tabbar_state.dart';
part 'tabbar_bloc.freezed.dart';
part 'tabbar_bloc.g.dart';

class TabBarBloc extends Bloc<TabBarEvent, TabBarState> {
  TabBarBloc() : super(const TabBarState(newTabIndex: 0)) {
    on<_TabChanged>(_tabChanged);
  }

  Future<void> _tabChanged(_TabChanged event, Emitter emit) async {
    return emit(state.copyWith(newTabIndex: event.newTabIndex));
  }
}
