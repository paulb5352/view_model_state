class SettingsViewState {
  SettingsViewState({required this.notificationAllowed});

  final bool notificationAllowed;

  SettingsViewState copyWith({bool? notificationAllowed}) => SettingsViewState(
      notificationAllowed: notificationAllowed ?? this.notificationAllowed);
}
