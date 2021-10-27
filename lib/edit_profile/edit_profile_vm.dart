import 'package:stacked/stacked.dart';

class EditProfileViewModel extends BaseViewModel {
  bool isEditProfile = false;
  isCheck() {
    isEditProfile = !isEditProfile;
    notifyListeners();
  }

  cancelBtn() {
    isEditProfile = false;
    notifyListeners();
  }
}
