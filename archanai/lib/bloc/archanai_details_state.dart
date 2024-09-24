part of 'archanai_details_bloc.dart';

@immutable
sealed class ArchanaiDetailsState {}

final class ArchanaiDetailsInitial extends ArchanaiDetailsState {}

class ArchanaiDetail extends ArchanaiDetailsState{
  ArchanaiDetails archanaiDetails;
  ArchanaiDetail(this.archanaiDetails);
}