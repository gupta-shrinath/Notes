import 'package:notes/model/social_media.dart';

class Contributor {
  String name;
  String imageURL;
  List<String> roles;
  String message;
  SocialMedia socialMedia;

  Contributor(
      {this.name, this.imageURL, this.roles, this.message, this.socialMedia});
}
