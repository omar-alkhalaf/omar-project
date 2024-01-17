import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sp1_e_commerce/core/data/models/post_model.dart';
import 'package:sp1_e_commerce/core/data/models/post_photo_model.dart';
import 'package:sp1_e_commerce/core/data/repository/post_repository.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';
import 'package:sp1_e_commerce/ui/views/posts/create_update_post/create_update_post_view.dart';

class PostDetailsView extends StatefulWidget {
  final PostModel post;
  const PostDetailsView({super.key, required this.post});

  @override
  State<PostDetailsView> createState() => _PostDetailsViewState();
}

class _PostDetailsViewState extends State<PostDetailsView> {
  List<PostPhotoModel> photoList = [];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return CreateUpdatePostView(
                    post: widget.post,
                  );
                })));
              },
              child: Icon(Icons.add),
            ),
            InkWell(
              onTap: () {
                post.deletePost(id: widget.post.id ?? 0).then((value) {
                  value.fold((l) {}, (r) {
                    BotToast.showText(text: 'Delete succ');
                    Navigator.pop(context);
                  });
                });
              },
              child: Icon(Icons.remove),
            ),
          ],
        ),
        Text(widget.post.title.toString()),
        Text(widget.post.body.toString()),
        Divider(
          thickness: 3,
          color: AppColors.orangeColor,
        ),
        SizedBox(
          height: 10,
        ),
        FutureBuilder(
          future: post.getAllPostPhoto(postId: widget.post.id ?? 0),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.data != null) {
              snapshot.data!.fold((l) {
                BotToast.showText(text: l);
              }, (r) {
                photoList.clear();
                photoList.addAll(r);
              });
            }
            return snapshot.connectionState == ConnectionState.waiting
                ? SpinKitCircle(
                    color: AppColors.blackColor,
                  )
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: photoList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Image.network(photoList[index].url ?? '')
                          // Text(snapshot.connectionState.toString())
                        ],
                      );
                    },
                  );
          },
        ),
      ]),
    ));
  }
}
