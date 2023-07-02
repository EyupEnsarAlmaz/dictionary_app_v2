part of 'tabbar_bloc.dart';

@freezed
class TabbarEvent with _$TabbarEvent {
  const factory TabbarEvent.tabChangedEvent(int? newTabIndex) = _TabChanged;
}
