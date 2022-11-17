part of 'current_page_cubit.dart';

class CurrentPageState extends Equatable {
  CurrentPageState({required this.currentIndex, required this.view});
  final int currentIndex;
  final Widget view;

  @override
  List<Object?> get props => [currentIndex, view];
}
