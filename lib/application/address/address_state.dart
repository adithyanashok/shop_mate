part of 'address_bloc.dart';

@freezed
class AddressState with _$AddressState {
  const factory AddressState({
    required bool isLoading,
    required AddressModel addressModel,
    required List<AddressModel> addressModelList,
    required Option<Either<MainFailure, AddressModel>> addressOpt,
    required Option<Either<MainFailure, List<AddressModel>>> addressOptList,
  }) = _AddressState;

  factory AddressState.initial() {
    return const AddressState(
      isLoading: false,
      addressModel: AddressModel(userId: '', title: '', address: ''),
      addressOpt: None(),
      addressModelList: [],
      addressOptList: None(),
    );
  }
}
