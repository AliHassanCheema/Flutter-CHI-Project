import 'package:chi_work/edit_profile/edit_profile_vm.dart';
import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';

class EditProfileScreen extends ViewModelBuilderWidget<EditProfileViewModel> {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context, EditProfileViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 4,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.arrow_back, color: Colors.cyan[900]),
            Text('Edit Profile',
                style: TextStyle(fontSize: 24, color: Colors.cyan[900])),
            IconButton(
                onPressed: () {
                  viewModel.isCheck();
                },
                icon: Icon(
                  Icons.edit_outlined,
                  size: 28,
                  color: Colors.cyan[900],
                )),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 28),
                child: Stack(children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: CircleAvatar(
                      radius: 72,
                      backgroundColor: Colors.blue,
                      child: CircleAvatar(
                        radius: 70,
                        child: ClipRRect(
                          child: Image.asset(
                            'assets/dummy.jpg',
                            height: 160,
                            width: 160,
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 16,
                    top: 112,
                    child: Visibility(
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.blue,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.edit_rounded,
                              color: Colors.white,
                              size: 16,
                            )),
                        // Icons.edit_rounded,
                      ),
                      visible: viewModel.isEditProfile,
                    ),
                  )
                ]),
              ),
            ),
            Row(
              children: [
                Text('Profile', style: TextStyle(color: Colors.cyan[900])),
                const Spacer(),
                Text('@Akhtardoc', style: TextStyle(color: Colors.cyan[900])),
              ],
            ),
            const Divider(color: Colors.grey),
            const SizedBox(
              height: 16,
            ),
            TextField(
              enabled: viewModel.isEditProfile,
              style: Theme.of(context).textTheme.headline6,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  labelText: 'First name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
            const SizedBox(
              height: 16,
            ),
            TextField(
              enabled: viewModel.isEditProfile,
              style: Theme.of(context).textTheme.headline6,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  labelText: 'Last name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
            const SizedBox(
              height: 16,
            ),
            TextField(
              enabled: viewModel.isEditProfile,
              style: Theme.of(context).textTheme.headline6,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email_sharp),
                  labelText: 'Email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
            const SizedBox(
              height: 16,
            ),
            TextField(
              enabled: viewModel.isEditProfile,
              style: Theme.of(context).textTheme.headline6,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.phone_sharp),
                  labelText: 'Phone',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
            const SizedBox(
              height: 20,
            ),
            Visibility(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton(
                      onPressed: () {
                        viewModel.cancelBtn();
                      },
                      child: const Text(
                        'Cancel',
                      )),
                  ElevatedButton(onPressed: () {}, child: const Text('Update')),
                ],
              ),
              visible: viewModel.isEditProfile,
            ),
          ],
        ),
      ),
    );
  }

  @override
  EditProfileViewModel viewModelBuilder(BuildContext context) {
    return EditProfileViewModel();
  }
}
