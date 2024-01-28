import 'package:json_annotation/json_annotation.dart';

part 'subscription.g.dart';

@JsonSerializable()
class SubscriptionEvent {
  final int? subscribe;
  @JsonKey(name: "subscription_id")
  final int? subscriptionId;

  SubscriptionEvent(this.subscribe, this.subscriptionId);

  factory SubscriptionEvent.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionEventFromJson(json);
}
