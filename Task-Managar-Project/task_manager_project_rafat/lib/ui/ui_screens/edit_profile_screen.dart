import 'package:flutter/material.dart';
import 'package:task_manager_project_rafat/ui/ui_widgets/body_background.dart';
import 'package:task_manager_project_rafat/ui/ui_widgets/profile_summary_card.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              const ProfileSummaryCard(
                enableOnTap: false,
              ),
              Expanded(
                  child: BodyBackground(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 32,
                            ),
                            Text('Update Profile',style: Theme.of(context).textTheme.titleLarge),
                            const SizedBox(height: 16,),
                            PhotoPickerField(),
                            const SizedBox(height: 8,),
                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: 'Email'
                              ),
                            ),
                            const SizedBox(height: 8,),
                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: 'First Name'
                              ),
                            ),
                            const SizedBox(height: 8,),
                            TextFormField(
                              decoration: const InputDecoration(
                                  hintText: 'Last Name'
                              ),
                            ),
                            const SizedBox(height: 8,),
                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: 'Mobile'
                              ),
                            ),
                            const SizedBox(height: 8,),
                            TextFormField(
                              decoration: const InputDecoration(
                                  hintText: 'Password'
                              ),
                            ),

                            const SizedBox(height: 16,),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                  onPressed: (){},
                                  child: Icon(Icons.arrow_circle_right_outlined)),
                            )

                          ],
                        ),
                      ),
                    ),
                  ))
            ],
          )),
    );
  }
}

class PhotoPickerField extends StatelessWidget {
  const PhotoPickerField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
              child: Container(
                height: 50,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    topLeft: Radius.circular(8),
                  ),
                ),
                alignment: Alignment.center,
                child: const Text('Photo'),
              )),
          Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.only(left: 16),
                child: const Text('Empty'),
              )),
        ],
      ),
    );
  }
}
