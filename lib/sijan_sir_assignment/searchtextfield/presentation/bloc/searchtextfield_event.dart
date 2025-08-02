part of 'searchtextfield_bloc.dart';

sealed class SearchtextfieldEvent extends Equatable {
  const SearchtextfieldEvent();

  @override
  List<Object> get props => [];
}

class GetAllSearchEvent extends SearchtextfieldEvent {
  const GetAllSearchEvent();
  @override
  List<Object> get props => [];
}

class SearchTextEvent extends SearchtextfieldEvent {
  final String searchText;
  const SearchTextEvent(this.searchText);
  @override
  List<Object> get props => [searchText];
}

class UpdateIDEvent extends SearchtextfieldEvent {
  final int searchId;
  const UpdateIDEvent({required this.searchId});
  @override
  List<Object> get props => [searchId];
}

class ShowCrossIconEvent extends SearchtextfieldEvent {
  final Icon icon;
  const ShowCrossIconEvent({required this.icon});

  @override
  List<Object> get props => [icon];
}
