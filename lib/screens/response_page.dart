import 'package:flutter/material.dart';

import '../components/components.dart';
import '../api/api_service_provider.dart';
import '../route/routes.dart';
import 'package:provider/provider.dart';

class ResponsePage extends StatelessWidget {
  const ResponsePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<APIService>(
      builder: (context, value, child) {
        final objectResult = value.userRequestModel!.graphql!;
        return Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed(
                      RouteManager.homePage,
                    );
                    context.read<APIService>().btnLabel = 'SEARCH';
                  },
                  icon: const Icon(
                    Icons.logout_rounded,
                  ))
            ],
            elevation: 0.0,
            title: Text(objectResult.user!.username),
          ),
          body: RefreshIndicator(
            onRefresh: () {
              return context
                  .read<APIService>()
                  .userRequest(context, objectResult.user!.username);
            },
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleImage(
                          imageRadius: 50,
                          networkImage:
                              NetworkImage(objectResult.user!.profilePicUrlHd),
                        ),
                        ProfileStatisics(
                          postCount: objectResult
                              .user!.edgeOwnerToTimelineMedia!.count
                              .toString(),
                          followersCount: objectResult
                              .user!.edgeFollowedBy!.count
                              .toString(),
                          followingCount:
                              objectResult.user!.edgeFollow!.count.toString(),
                        ),
                      ],
                    ),
                    UserBio(
                      fullname: objectResult.user!.fullName,
                      bio: objectResult.user!.biography,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
