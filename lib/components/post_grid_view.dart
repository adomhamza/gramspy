import 'package:flutter/material.dart';
import '../models/model.dart';
import 'components.dart';

class PostGridView extends StatelessWidget {
  const PostGridView({
    Key? key,
    required this.graphql,
  }) : super(key: key);
  final Graphql graphql;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15.0,
      ),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: graphql.user!.edgeOwnerToTimelineMedia!.edges!.length,
        itemBuilder: (context, index) {
          final items =
              graphql.user!.edgeOwnerToTimelineMedia!.edges![index].node;
          return PostThumbnail(
            networkImage: items!.displayUrl,
            commentCount: items.edgeMediaToComment!.count.toString(),
            likesCount: items.edgeLikedBy!.count.toString(),
          );
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 18.0,
        ),
      ),
    );
  }
}
