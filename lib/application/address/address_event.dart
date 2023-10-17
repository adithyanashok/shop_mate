part of 'address_bloc.dart';

@freezed
class AddressEvent with _$AddressEvent {
  const factory AddressEvent.addAddress(
      {required AddressModel addressModel,
      required BuildContext context}) = _AddAddress;
  const factory AddressEvent.getAddress(
      {required String userId, required BuildContext context}) = _GetAddress;
  const factory AddressEvent.updateAddress({
    required AddressModel addressModel,
    required BuildContext context,
  }) = _UpdateAddress;

  const factory AddressEvent.deleteAddress({
    required String id,
    required String userId,
    required BuildContext context,
  }) = _DeleteAddress;
}
