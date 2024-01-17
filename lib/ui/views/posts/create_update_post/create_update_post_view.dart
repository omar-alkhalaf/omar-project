import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/core/data/models/post_model.dart';
import 'package:sp1_e_commerce/core/data/repository/post_repository.dart';
import 'package:sp1_e_commerce/ui/shared/custom_widgets/custom_text_field.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';

class CreateUpdatePostView extends StatefulWidget {
  final PostModel? post;
  const CreateUpdatePostView({super.key, this.post});

  @override
  State<CreateUpdatePostView> createState() => _CreateUpdatePostViewState();
}

class _CreateUpdatePostViewState extends State<CreateUpdatePostView> {
  bool isUpdate = false;

  @override
  void initState() {
    //isUpdate = widget.post != null ? true : false;
    isUpdate = widget.post != null;

    if (isUpdate) {
      titleController.text = widget.post!.title ?? "";
      bodyController.text = widget.post!.body ?? "";
    }
    super.initState();
  }

  TextEditingController titleController = TextEditingController();
  TextEditingController bodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        Text(
          isUpdate ? "update post" : "Add new post",
          style: TextStyle(fontSize: 100),
        ),
        CustomTextFeild(
          hintText: 'title',
          controller: titleController,
        ),
        CustomTextFeild(
          hintText: 'body',
          controller: bodyController,
        ),
        InkWell(
          onTap: () {
            if (isUpdate) {
              post
                  .updatePost(
                      title: titleController.text,
                      body: bodyController.text,
                      id: widget.post!.id!)
                  .then((value) {
                value.fold((l) {
                  BotToast.showText(text: l);
                }, (r) {
                  BotToast.showText(text: 'Update Succ');
                });
              });
            } else {
              post
                  .createPost(
                title: titleController.text,
                body: bodyController.text,
              )
                  .then((value) {
                value.fold((l) {
                  BotToast.showText(text: l);
                }, (r) {
                  BotToast.showText(text: 'Create Succ');
                });
              });
            }
          },
          child: Icon(
            Icons.save,
            size: 50,
          ),
        )
      ]),
    ));
  }
}
