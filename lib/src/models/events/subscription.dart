import 'package:anilibria_api/src/models/events/base_event.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subscription.g.dart';

@JsonSerializable()
class SubscriptionEvent implements BaseEvent {
  final int? subscribe;
  @JsonKey(name: "subscription_id")
  final int? subscriptionId;

  SubscriptionEvent(this.subscribe, this.subscriptionId);

  factory SubscriptionEvent.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionEventFromJson(json);
}
