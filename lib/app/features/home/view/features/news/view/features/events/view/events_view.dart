import 'package:auto_route/auto_route.dart';
import 'package:dpu_mobil/app/features/base/base_view.dart';
import 'package:flutter/material.dart';

part 'events_view_mixin.dart';

@RoutePage()
class EventsView extends BaseView  {
  const EventsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
