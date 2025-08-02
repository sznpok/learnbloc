part of 'searchtextfield_bloc.dart';

enum FetchDropdownStatus { initial, loaded, failure }

class SearchtextfieldState extends Equatable {
  final List<SearchtextfieldModel> searchFieldValues;
  final String? singleValue;
  final int searchID;
  final FetchDropdownStatus status;
  final Icon? icon;

  const SearchtextfieldState({
    this.searchFieldValues = const [],
    this.searchID = 0,
    this.singleValue,
    required this.status,
    this.icon,
  });

  SearchtextfieldState copyWith({
    int? searchID,
    List<SearchtextfieldModel>? searchFieldValues,
    FetchDropdownStatus? status,
    String? singleValue,
    Icon? icon,
  }) {
    return SearchtextfieldState(
      searchFieldValues: searchFieldValues ?? this.searchFieldValues,
      searchID: searchID ?? this.searchID,
      singleValue: singleValue ?? this.singleValue,
      status: status ?? this.status,
      icon: icon ?? this.icon,
    );
  }

  @override
  List<Object?> get props => [
    searchID,
    searchFieldValues,
    singleValue,
    status,
    icon,
  ];
}
