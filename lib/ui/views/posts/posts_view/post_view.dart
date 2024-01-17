import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:sp1_e_commerce/core/data/models/post_model.dart';
import 'package:sp1_e_commerce/core/data/repository/post_repository.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/views/posts/create_update_post/create_update_post_view.dart';
import 'package:sp1_e_commerce/ui/views/posts/post_details_view/post_details_view.dart';
import 'package:sp1_e_commerce/ui/views/posts/posts_view/post_controller.dart';

class PostsView extends StatefulWidget {
  const PostsView({super.key});

  @override
  State<PostsView> createState() => _PostsViewState();
}

class _PostsViewState extends State<PostsView> {
  PostController controller = Get.put(PostController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                return CreateUpdatePostView();
              })));
            },
            child: Icon(Icons.add),
          ),
          Obx(() {
            return controller.postList.length == 0
                ? SpinKitCircle(
                    color: AppColors.blackColor,
                  )
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.postList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: ((context) {
                            return PostDetailsView(
                                post: controller.postList[index]);
                          })));
                        },
                        child: Column(
                          children: [
                            // Text(postList[index].name!.firstname??"")
                            Text(controller.postList[index].title.toString()),
                            Text(controller.postList[index].body.toString()),
                            Divider(
                              thickness: 3,
                              color: AppColors.orangeColor,
                            ),
                            // Text(snapshot.connectionState.toString())
                          ],
                        ),
                      );
                    },
                  );
          })
        ],
      ),
    ));
  }
}
