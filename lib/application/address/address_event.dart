part of 'address_bloc.dart';

@freezed
class AddressEvent with _$AddressEvent {
  const factory AddressEvent.addAddress(
      {required AddressModel addressModel,
      required BuildContext context}) = _AddAddress;
  const factory AddressEvent.getAddress(
      {required String userId, required BuildContext context}) = _GetAddress;
}
