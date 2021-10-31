// To parse this JSON data, do
//
//     final userRequestModel = userRequestModelFromJson(jsonString);

import 'dart:convert';

UserRequestModel userRequestModelFromJson(String? str) =>
    UserRequestModel.fromJson(json.decode(str!));

String? userRequestModelToJson(UserRequestModel data) =>
    json.encode(data.toJson());

class UserRequestModel {
  UserRequestModel({
    this.seoCategoryInfos,
    this.loggingPageId,
    this.showSuggestedProfiles,
    this.showFollowDialog,
    this.graphql,
    this.toastContentOnLoad,
    this.showViewShop,
    this.profilePicEditSyncProps,
    this.alwaysShowMessageButtonToProAccount,
  });

  List<List<String>>? seoCategoryInfos;
  String? loggingPageId;
  bool? showSuggestedProfiles;
  bool? showFollowDialog;
  Graphql? graphql;
  dynamic toastContentOnLoad;
  bool? showViewShop;
  ProfilePicEditSyncProps? profilePicEditSyncProps;
  bool? alwaysShowMessageButtonToProAccount;

  factory UserRequestModel.fromJson(Map<String, dynamic> json) =>
      UserRequestModel(
        seoCategoryInfos: json['seo_category_infos'] == null
            ? null
            : List<List<String>>.from(json['seo_category_infos']
                .map((x) => List<String>.from(x.map((x) => x)))),
        loggingPageId: json['logging_page_id'],
        showSuggestedProfiles: json['show_suggested_profiles'],
        showFollowDialog: json['show_follow_dialog'],
        graphql:
            json['graphql'] == null ? null : Graphql.fromJson(json['graphql']),
        toastContentOnLoad: json['toast_content_on_load'],
        showViewShop: json['show_view_shop'],
        profilePicEditSyncProps: json['profile_pic_edit_sync_props'] == null
            ? null
            : ProfilePicEditSyncProps.fromJson(
                json['profile_pic_edit_sync_props']),
        alwaysShowMessageButtonToProAccount:
            json['always_show_message_button_to_pro_account'],
      );

  Map<String, dynamic> toJson() => {
        'seo_category_infos': seoCategoryInfos == null
            ? null
            : List<dynamic>.from(seoCategoryInfos!
                .map((x) => List<dynamic>.from(x.map((x) => x)))),
        'logging_page_id': loggingPageId,
        'show_suggested_profiles': showSuggestedProfiles,
        'show_follow_dialog': showFollowDialog,
        'graphql': graphql == null ? null : graphql!.toJson(),
        'toast_content_on_load': toastContentOnLoad,
        'show_view_shop': showViewShop,
        'profile_pic_edit_sync_props': profilePicEditSyncProps == null
            ? null
            : profilePicEditSyncProps!.toJson(),
        'always_show_message_button_to_pro_account':
            alwaysShowMessageButtonToProAccount,
      };
}

class Graphql {
  Graphql({
    this.user,
  });

  User? user;

  factory Graphql.fromJson(Map<String, dynamic> json) => Graphql(
        user: json['user'] == null ? null : User.fromJson(json['user']),
      );

  Map<String, dynamic> toJson() => {
        'user': user == null ? null : user!.toJson(),
      };
}

class User {
  User({
    required this.biography,
    this.blockedByViewer,
    this.restrictedByViewer,
    this.countryBlock,
    this.externalUrl,
    this.externalUrlLinkshimmed,
    this.edgeFollowedBy,
    this.fbid,
    this.followedByViewer,
    this.edgeFollow,
    this.followsViewer,
    required this.fullName,
    this.hasArEffects,
    this.hasClips,
    this.hasGuides,
    this.hasChannel,
    this.hasBlockedViewer,
    this.highlightReelCount,
    this.hasRequestedViewer,
    this.hideLikeAndViewCounts,
    this.id,
    this.isBusinessAccount,
    this.isProfessionalAccount,
    this.isJoinedRecently,
    this.businessAddressJson,
    this.businessContactMethod,
    this.businessEmail,
    this.businessPhoneNumber,
    this.businessCategoryName,
    this.overallCategoryName,
    this.categoryEnum,
    this.categoryName,
    this.isPrivate,
    this.isVerified,
    this.edgeMutualFollowedBy,
    required this.profilePicUrl,
    required this.profilePicUrlHd,
    this.requestedByViewer,
    this.shouldShowCategory,
    this.shouldShowPublicContacts,
    required this.username,
    this.connectedFbPage,
    this.pronouns,
    this.edgeFelixVideoTimeline,
    this.edgeOwnerToTimelineMedia,
    this.edgeSavedMedia,
    this.edgeMediaCollections,
  });

  String biography;
  bool? blockedByViewer;
  bool? restrictedByViewer;
  bool? countryBlock;
  dynamic externalUrl;
  dynamic externalUrlLinkshimmed;
  EdgeFollowClass? edgeFollowedBy;
  String? fbid;
  bool? followedByViewer;
  EdgeFollowClass? edgeFollow;
  bool? followsViewer;
  String fullName;
  bool? hasArEffects;
  bool? hasClips;
  bool? hasGuides;
  bool? hasChannel;
  bool? hasBlockedViewer;
  int? highlightReelCount;
  bool? hasRequestedViewer;
  bool? hideLikeAndViewCounts;
  String? id;
  bool? isBusinessAccount;
  bool? isProfessionalAccount;
  bool? isJoinedRecently;
  dynamic businessAddressJson;
  dynamic businessContactMethod;
  dynamic businessEmail;
  dynamic businessPhoneNumber;
  String? businessCategoryName;
  dynamic overallCategoryName;
  String? categoryEnum;
  String? categoryName;
  bool? isPrivate;
  bool? isVerified;
  EdgeMutualFollowedBy? edgeMutualFollowedBy;
  String profilePicUrl;
  String profilePicUrlHd;
  bool? requestedByViewer;
  bool? shouldShowCategory;
  bool? shouldShowPublicContacts;
  String username;
  dynamic connectedFbPage;
  List<dynamic>? pronouns;
  EdgeFelixVideoTimelineClass? edgeFelixVideoTimeline;
  EdgeFelixVideoTimelineClass? edgeOwnerToTimelineMedia;
  EdgeFelixVideoTimelineClass? edgeSavedMedia;
  EdgeFelixVideoTimelineClass? edgeMediaCollections;

  factory User.fromJson(Map<String, dynamic> json) => User(
        biography: json['biography'],
        blockedByViewer: json['blocked_by_viewer'],
        restrictedByViewer: json['restricted_by_viewer'] ?? false,
        countryBlock: json['country_block'],
        externalUrl: json['external_url'],
        externalUrlLinkshimmed: json['external_url_linkshimmed'],
        edgeFollowedBy: json['edge_followed_by'] == null
            ? null
            : EdgeFollowClass.fromJson(json['edge_followed_by']),
        fbid: json['fbid'],
        followedByViewer: json['followed_by_viewer'],
        edgeFollow: json['edge_follow'] == null
            ? null
            : EdgeFollowClass.fromJson(json['edge_follow']),
        followsViewer: json['follows_viewer'],
        fullName: json['full_name'],
        hasArEffects: json['has_ar_effects'],
        hasClips: json['has_clips'],
        hasGuides: json['has_guides'],
        hasChannel: json['has_channel'],
        hasBlockedViewer: json['has_blocked_viewer'],
        highlightReelCount: json['highlight_reel_count'],
        hasRequestedViewer: json['has_requested_viewer'],
        hideLikeAndViewCounts: json['hide_like_and_view_counts'],
        id: json['id'],
        isBusinessAccount: json['is_business_account'],
        isProfessionalAccount: json['is_professional_account'],
        isJoinedRecently: json['is_joined_recently'],
        businessAddressJson: json['business_address_json'],
        businessContactMethod: json['business_contact_method'],
        businessEmail: json['business_email'],
        businessPhoneNumber: json['business_phone_number'],
        businessCategoryName: json['business_category_name'] ?? 'null',
        overallCategoryName: json['overall_category_name'],
        categoryEnum: json['category_enum'],
        categoryName: json['category_name'],
        isPrivate: json['is_private'],
        isVerified: json['is_verified'],
        edgeMutualFollowedBy: json['edge_mutual_followed_by'] == null
            ? null
            : EdgeMutualFollowedBy.fromJson(json['edge_mutual_followed_by']),
        profilePicUrl: json['profile_pic_url'],
        profilePicUrlHd: json['profile_pic_url_hd'],
        requestedByViewer: json['requested_by_viewer'],
        shouldShowCategory: json['should_show_category'],
        shouldShowPublicContacts: json['should_show_public_contacts'],
        username: json['username'],
        connectedFbPage: json['connected_fb_page'],
        pronouns: json['pronouns'] == null
            ? null
            : List<dynamic>.from(json['pronouns'].map((x) => x)),
        edgeFelixVideoTimeline: json['edge_felix_video_timeline'] == null
            ? null
            : EdgeFelixVideoTimelineClass.fromJson(
                json['edge_felix_video_timeline']),
        edgeOwnerToTimelineMedia: json['edge_owner_to_timeline_media'] == null
            ? null
            : EdgeFelixVideoTimelineClass.fromJson(
                json['edge_owner_to_timeline_media']),
        edgeSavedMedia: json['edge_saved_media'] == null
            ? null
            : EdgeFelixVideoTimelineClass.fromJson(json['edge_saved_media']),
        edgeMediaCollections: json['edge_media_collections'] == null
            ? null
            : EdgeFelixVideoTimelineClass.fromJson(
                json['edge_media_collections']),
      );

  Map<String, dynamic> toJson() => {
        'biography': biography,
        'blocked_by_viewer': blockedByViewer,
        'restricted_by_viewer': restrictedByViewer,
        'country_block': countryBlock,
        'external_url': externalUrl,
        'external_url_linkshimmed': externalUrlLinkshimmed,
        'edge_followed_by':
            edgeFollowedBy == null ? null : edgeFollowedBy!.toJson(),
        'fbid': fbid,
        'followed_by_viewer': followedByViewer,
        'edge_follow': edgeFollow == null ? null : edgeFollow!.toJson(),
        'follows_viewer': followsViewer,
        'full_name': fullName,
        'has_ar_effects': hasArEffects,
        'has_clips': hasClips,
        'has_guides': hasGuides,
        'has_channel': hasChannel,
        'has_blocked_viewer': hasBlockedViewer,
        'highlight_reel_count': highlightReelCount,
        'has_requested_viewer': hasRequestedViewer,
        'hide_like_and_view_counts': hideLikeAndViewCounts,
        'id': id,
        'is_business_account': isBusinessAccount,
        'is_professional_account': isProfessionalAccount,
        'is_joined_recently': isJoinedRecently,
        'business_address_json': businessAddressJson,
        'business_contact_method': businessContactMethod,
        'business_email': businessEmail,
        'business_phone_number': businessPhoneNumber,
        'business_category_name': businessCategoryName,
        'overall_category_name': overallCategoryName,
        'category_enum': categoryEnum,
        'category_name': categoryName,
        'is_private': isPrivate,
        'is_verified': isVerified,
        'edge_mutual_followed_by': edgeMutualFollowedBy == null
            ? null
            : edgeMutualFollowedBy!.toJson(),
        'profile_pic_url': profilePicUrl,
        'profile_pic_url_hd': profilePicUrlHd,
        'requested_by_viewer': requestedByViewer,
        'should_show_category': shouldShowCategory,
        'should_show_public_contacts': shouldShowPublicContacts,
        'username': username,
        'connected_fb_page': connectedFbPage,
        'pronouns': pronouns == null
            ? null
            : List<dynamic>.from(pronouns!.map((x) => x)),
        'edge_felix_video_timeline': edgeFelixVideoTimeline == null
            ? null
            : edgeFelixVideoTimeline!.toJson(),
        'edge_owner_to_timeline_media': edgeOwnerToTimelineMedia == null
            ? null
            : edgeOwnerToTimelineMedia!.toJson(),
        'edge_saved_media':
            edgeSavedMedia == null ? null : edgeSavedMedia!.toJson(),
        'edge_media_collections': edgeMediaCollections == null
            ? null
            : edgeMediaCollections!.toJson(),
      };
}

class EdgeFelixVideoTimelineClass {
  EdgeFelixVideoTimelineClass({
    this.count,
    this.pageInfo,
    this.edges,
  });

  int? count;
  PageInfo? pageInfo;
  List<EdgeFelixVideoTimelineEdge>? edges;

  factory EdgeFelixVideoTimelineClass.fromJson(Map<String, dynamic> json) =>
      EdgeFelixVideoTimelineClass(
        count: json['count'],
        pageInfo: json['page_info'] == null
            ? null
            : PageInfo.fromJson(json['page_info']),
        edges: json['edges'] == null
            ? null
            : List<EdgeFelixVideoTimelineEdge>.from(json['edges']
                .map((x) => EdgeFelixVideoTimelineEdge.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'count': count,
        'page_info': pageInfo == null ? null : pageInfo!.toJson(),
        'edges': edges == null
            ? null
            : List<dynamic>.from(edges!.map((x) => x.toJson())),
      };
}

class EdgeFelixVideoTimelineEdge {
  EdgeFelixVideoTimelineEdge({
    this.node,
  });

  PurpleNode? node;

  factory EdgeFelixVideoTimelineEdge.fromJson(Map<String, dynamic> json) =>
      EdgeFelixVideoTimelineEdge(
        node: json['node'] == null ? null : PurpleNode.fromJson(json['node']),
      );

  Map<String, dynamic> toJson() => {
        'node': node == null ? null : node!.toJson(),
      };
}

class PurpleNode {
  PurpleNode({
    this.typename,
    this.id,
    this.shortcode,
    this.dimensions,
    required this.displayUrl,
    this.edgeMediaToTaggedUser,
    this.factCheckOverallRating,
    this.factCheckInformation,
    this.gatingInfo,
    this.sharingFrictionInfo,
    this.mediaOverlayInfo,
    this.mediaPreview,
    this.owner,
    this.isVideo,
    this.hasUpcomingEvent,
    this.accessibilityCaption,
    this.edgeMediaToCaption,
    this.edgeMediaToComment,
    this.commentsDisabled,
    this.takenAtTimestamp,
    this.edgeLikedBy,
    this.edgeMediaPreviewLike,
    this.location,
    this.thumbnailSrc,
    this.thumbnailResources,
    this.coauthorProducers,
  });

  String? typename;
  String? id;
  String? shortcode;
  Dimensions? dimensions;
  String displayUrl;
  EdgeMediaTo? edgeMediaToTaggedUser;
  dynamic factCheckOverallRating;
  dynamic factCheckInformation;
  dynamic gatingInfo;
  SharingFrictionInfo? sharingFrictionInfo;
  dynamic mediaOverlayInfo;
  String? mediaPreview;
  Owner? owner;
  bool? isVideo;
  bool? hasUpcomingEvent;
  String? accessibilityCaption;
  EdgeMediaTo? edgeMediaToCaption;
  EdgeFollowClass? edgeMediaToComment;
  bool? commentsDisabled;
  int? takenAtTimestamp;
  EdgeFollowClass? edgeLikedBy;
  EdgeFollowClass? edgeMediaPreviewLike;
  dynamic location;
  String? thumbnailSrc;
  List<ThumbnailResource>? thumbnailResources;
  List<dynamic>? coauthorProducers;

  factory PurpleNode.fromJson(Map<String, dynamic> json) => PurpleNode(
        typename: json['__typename'],
        id: json['id'],
        shortcode: json['shortcode'],
        dimensions: json['dimensions'] == null
            ? null
            : Dimensions.fromJson(json['dimensions']),
        displayUrl: json['display_url'],
        edgeMediaToTaggedUser: json['edge_media_to_tagged_user'] == null
            ? null
            : EdgeMediaTo.fromJson(json['edge_media_to_tagged_user']),
        factCheckOverallRating: json['fact_check_overall_rating'],
        factCheckInformation: json['fact_check_information'],
        gatingInfo: json['gating_info'],
        sharingFrictionInfo: json['sharing_friction_info'] == null
            ? null
            : SharingFrictionInfo.fromJson(json['sharing_friction_info']),
        mediaOverlayInfo: json['media_overlay_info'],
        mediaPreview: json['media_preview'],
        owner: json['owner'] == null ? null : Owner.fromJson(json['owner']),
        isVideo: json['is_video'],
        hasUpcomingEvent: json['has_upcoming_event'],
        accessibilityCaption: json['accessibility_caption'],
        edgeMediaToCaption: json['edge_media_to_caption'] == null
            ? null
            : EdgeMediaTo.fromJson(json['edge_media_to_caption']),
        edgeMediaToComment: json['edge_media_to_comment'] == null
            ? null
            : EdgeFollowClass.fromJson(json['edge_media_to_comment']),
        commentsDisabled: json['comments_disabled'],
        takenAtTimestamp: json['taken_at_timestamp'],
        edgeLikedBy: json['edge_liked_by'] == null
            ? null
            : EdgeFollowClass.fromJson(json['edge_liked_by']),
        edgeMediaPreviewLike: json['edge_media_preview_like'] == null
            ? null
            : EdgeFollowClass.fromJson(json['edge_media_preview_like']),
        location: json['location'],
        thumbnailSrc: json['thumbnail_src'],
        thumbnailResources: json['thumbnail_resources'] == null
            ? null
            : List<ThumbnailResource>.from(json['thumbnail_resources']
                .map((x) => ThumbnailResource.fromJson(x))),
        coauthorProducers: json['coauthor_producers'] == null
            ? null
            : List<dynamic>.from(json['coauthor_producers'].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        '__typename': typename,
        'id': id,
        'shortcode': shortcode,
        'dimensions': dimensions == null ? null : dimensions!.toJson(),
        'display_url': displayUrl,
        'edge_media_to_tagged_user': edgeMediaToTaggedUser == null
            ? null
            : edgeMediaToTaggedUser!.toJson(),
        'fact_check_overall_rating': factCheckOverallRating,
        'fact_check_information': factCheckInformation,
        'gating_info': gatingInfo,
        'sharing_friction_info':
            sharingFrictionInfo == null ? null : sharingFrictionInfo!.toJson(),
        'media_overlay_info': mediaOverlayInfo,
        'media_preview': mediaPreview,
        'owner': owner == null ? null : owner!.toJson(),
        'is_video': isVideo,
        'has_upcoming_event': hasUpcomingEvent,
        'accessibility_caption': accessibilityCaption,
        'edge_media_to_caption':
            edgeMediaToCaption == null ? null : edgeMediaToCaption!.toJson(),
        'edge_media_to_comment':
            edgeMediaToComment == null ? null : edgeMediaToComment!.toJson(),
        'comments_disabled': commentsDisabled,
        'taken_at_timestamp': takenAtTimestamp,
        'edge_liked_by': edgeLikedBy == null ? null : edgeLikedBy!.toJson(),
        'edge_media_preview_like': edgeMediaPreviewLike == null
            ? null
            : edgeMediaPreviewLike!.toJson(),
        'location': location,
        'thumbnail_src': thumbnailSrc,
        'thumbnail_resources': thumbnailResources == null
            ? null
            : List<dynamic>.from(thumbnailResources!.map((x) => x.toJson())),
        'coauthor_producers': coauthorProducers == null
            ? null
            : List<dynamic>.from(coauthorProducers!.map((x) => x)),
      };
}

class Dimensions {
  Dimensions({
    this.height,
    this.width,
  });

  int? height;
  int? width;

  factory Dimensions.fromJson(Map<String, dynamic> json) => Dimensions(
        height: json['height'],
        width: json['width'],
      );

  Map<String, dynamic> toJson() => {
        'height': height,
        'width': width,
      };
}

class EdgeFollowClass {
  EdgeFollowClass({
    this.count,
  });

  int? count;

  factory EdgeFollowClass.fromJson(Map<String, dynamic> json) =>
      EdgeFollowClass(
        count: json['count'],
      );

  Map<String, dynamic> toJson() => {
        'count': count,
      };
}

class EdgeMediaTo {
  EdgeMediaTo({
    this.edges,
  });

  List<EdgeMediaToCaptionEdge>? edges;

  factory EdgeMediaTo.fromJson(Map<String, dynamic> json) => EdgeMediaTo(
        edges: json['edges'] == null
            ? null
            : List<EdgeMediaToCaptionEdge>.from(
                json['edges'].map((x) => EdgeMediaToCaptionEdge.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'edges': edges == null
            ? null
            : List<dynamic>.from(edges!.map((x) => x.toJson())),
      };
}

class EdgeMediaToCaptionEdge {
  EdgeMediaToCaptionEdge({
    this.node,
  });

  FluffyNode? node;

  factory EdgeMediaToCaptionEdge.fromJson(Map<String, dynamic> json) =>
      EdgeMediaToCaptionEdge(
        node: json['node'] == null ? null : FluffyNode.fromJson(json['node']),
      );

  Map<String, dynamic> toJson() => {
        'node': node == null ? null : node!.toJson(),
      };
}

class FluffyNode {
  FluffyNode({
    this.text,
  });

  String? text;

  factory FluffyNode.fromJson(Map<String, dynamic> json) => FluffyNode(
        text: json['text'],
      );

  Map<String, dynamic> toJson() => {
        'text': text,
      };
}

class Owner {
  Owner({
    this.id,
    required this.username,
  });

  String? id;
  String username;

  factory Owner.fromJson(Map<String, dynamic> json) => Owner(
        id: json['id'],
        username: json['username'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'username': username,
      };
}

class SharingFrictionInfo {
  SharingFrictionInfo({
    this.shouldHaveSharingFriction,
    this.bloksAppUrl,
  });

  bool? shouldHaveSharingFriction;
  dynamic bloksAppUrl;

  factory SharingFrictionInfo.fromJson(Map<String, dynamic> json) =>
      SharingFrictionInfo(
        shouldHaveSharingFriction: json['should_have_sharing_friction'],
        bloksAppUrl: json['bloks_app_url'],
      );

  Map<String, dynamic> toJson() => {
        'should_have_sharing_friction': shouldHaveSharingFriction,
        'bloks_app_url': bloksAppUrl,
      };
}

class ThumbnailResource {
  ThumbnailResource({
    this.src,
    this.configWidth,
    this.configHeight,
  });

  String? src;
  int? configWidth;
  int? configHeight;

  factory ThumbnailResource.fromJson(Map<String, dynamic> json) =>
      ThumbnailResource(
        src: json['src'],
        configWidth: json['config_width'],
        configHeight: json['config_height'],
      );

  Map<String, dynamic> toJson() => {
        'src': src,
        'config_width': configWidth,
        'config_height': configHeight,
      };
}

class PageInfo {
  PageInfo({
    this.hasNextPage,
    this.endCursor,
  });

  bool? hasNextPage;
  String? endCursor;

  factory PageInfo.fromJson(Map<String, dynamic> json) => PageInfo(
        hasNextPage: json['has_next_page'],
        endCursor: json['end_cursor'],
      );

  Map<String, dynamic> toJson() => {
        'has_next_page': hasNextPage,
        'end_cursor': endCursor,
      };
}

class EdgeMutualFollowedBy {
  EdgeMutualFollowedBy({
    this.count,
    this.edges,
  });

  int? count;
  List<EdgeMutualFollowedByEdge>? edges;

  factory EdgeMutualFollowedBy.fromJson(Map<String, dynamic> json) =>
      EdgeMutualFollowedBy(
        count: json['count'],
        edges: json['edges'] == null
            ? null
            : List<EdgeMutualFollowedByEdge>.from(
                json['edges'].map((x) => EdgeMutualFollowedByEdge.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'count': count,
        'edges': edges == null
            ? null
            : List<dynamic>.from(edges!.map((x) => x.toJson())),
      };
}

class EdgeMutualFollowedByEdge {
  EdgeMutualFollowedByEdge({
    this.node,
  });

  TentacledNode? node;

  factory EdgeMutualFollowedByEdge.fromJson(Map<String, dynamic> json) =>
      EdgeMutualFollowedByEdge(
        node:
            json['node'] == null ? null : TentacledNode.fromJson(json['node']),
      );

  Map<String, dynamic> toJson() => {
        'node': node == null ? null : node!.toJson(),
      };
}

class TentacledNode {
  TentacledNode({
    required this.username,
  });

  String username;

  factory TentacledNode.fromJson(Map<String, dynamic> json) => TentacledNode(
        username: json['username'],
      );

  Map<String, dynamic> toJson() => {
        'username': username,
      };
}

class ProfilePicEditSyncProps {
  ProfilePicEditSyncProps({
    this.showChangeProfilePicConfirmDialog,
    this.showProfilePicSyncReminders,
    this.identityId,
    this.removeProfilePicHeader,
    this.removeProfilePicSubtext,
    this.removeProfilePicConfirmCta,
    this.removeProfilePicCancelCta,
    this.isBusinessCentralIdentity,
    this.changeProfilePicActionsScreenHeader,
    this.changeProfilePicActionsScreenSubheader,
    this.changeProfilePicActionsScreenUploadCta,
    this.changeProfilePicActionsScreenRemoveCta,
    this.changeProfilePicActionsScreenCancelCta,
  });

  bool? showChangeProfilePicConfirmDialog;
  bool? showProfilePicSyncReminders;
  String? identityId;
  dynamic removeProfilePicHeader;
  dynamic removeProfilePicSubtext;
  dynamic removeProfilePicConfirmCta;
  dynamic removeProfilePicCancelCta;
  bool? isBusinessCentralIdentity;
  List<String>? changeProfilePicActionsScreenHeader;
  List<String>? changeProfilePicActionsScreenSubheader;
  List<String>? changeProfilePicActionsScreenUploadCta;
  List<String>? changeProfilePicActionsScreenRemoveCta;
  List<String>? changeProfilePicActionsScreenCancelCta;

  factory ProfilePicEditSyncProps.fromJson(Map<String, dynamic> json) =>
      ProfilePicEditSyncProps(
        showChangeProfilePicConfirmDialog:
            json['show_change_profile_pic_confirm_dialog'],
        showProfilePicSyncReminders: json['show_profile_pic_sync_reminders'],
        identityId: json['identity_id'],
        removeProfilePicHeader: json['remove_profile_pic_header'],
        removeProfilePicSubtext: json['remove_profile_pic_subtext'],
        removeProfilePicConfirmCta: json['remove_profile_pic_confirm_cta'],
        removeProfilePicCancelCta: json['remove_profile_pic_cancel_cta'],
        isBusinessCentralIdentity: json['is_business_central_identity'],
        changeProfilePicActionsScreenHeader:
            json['change_profile_pic_actions_screen_header'] == null
                ? null
                : List<String>.from(
                    json['change_profile_pic_actions_screen_header']
                        .map((x) => x)),
        changeProfilePicActionsScreenSubheader:
            json['change_profile_pic_actions_screen_subheader'] == null
                ? null
                : List<String>.from(
                    json['change_profile_pic_actions_screen_subheader']
                        .map((x) => x)),
        changeProfilePicActionsScreenUploadCta:
            json['change_profile_pic_actions_screen_upload_cta'] == null
                ? null
                : List<String>.from(
                    json['change_profile_pic_actions_screen_upload_cta']
                        .map((x) => x)),
        changeProfilePicActionsScreenRemoveCta:
            json['change_profile_pic_actions_screen_remove_cta'] == null
                ? null
                : List<String>.from(
                    json['change_profile_pic_actions_screen_remove_cta']
                        .map((x) => x)),
        changeProfilePicActionsScreenCancelCta:
            json['change_profile_pic_actions_screen_cancel_cta'] == null
                ? null
                : List<String>.from(
                    json['change_profile_pic_actions_screen_cancel_cta']
                        .map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        'show_change_profile_pic_confirm_dialog':
            showChangeProfilePicConfirmDialog,
        'show_profile_pic_sync_reminders': showProfilePicSyncReminders,
        'identity_id': identityId,
        'remove_profile_pic_header': removeProfilePicHeader,
        'remove_profile_pic_subtext': removeProfilePicSubtext,
        'remove_profile_pic_confirm_cta': removeProfilePicConfirmCta,
        'remove_profile_pic_cancel_cta': removeProfilePicCancelCta,
        'is_business_central_identity': isBusinessCentralIdentity,
        'change_profile_pic_actions_screen_header':
            changeProfilePicActionsScreenHeader == null
                ? null
                : List<dynamic>.from(
                    changeProfilePicActionsScreenHeader!.map((x) => x)),
        'change_profile_pic_actions_screen_subheader':
            changeProfilePicActionsScreenSubheader == null
                ? null
                : List<dynamic>.from(
                    changeProfilePicActionsScreenSubheader!.map((x) => x)),
        'change_profile_pic_actions_screen_upload_cta':
            changeProfilePicActionsScreenUploadCta == null
                ? null
                : List<dynamic>.from(
                    changeProfilePicActionsScreenUploadCta!.map((x) => x)),
        'change_profile_pic_actions_screen_remove_cta':
            changeProfilePicActionsScreenRemoveCta == null
                ? null
                : List<dynamic>.from(
                    changeProfilePicActionsScreenRemoveCta!.map((x) => x)),
        'change_profile_pic_actions_screen_cancel_cta':
            changeProfilePicActionsScreenCancelCta == null
                ? null
                : List<dynamic>.from(
                    changeProfilePicActionsScreenCancelCta!.map((x) => x)),
      };
}
