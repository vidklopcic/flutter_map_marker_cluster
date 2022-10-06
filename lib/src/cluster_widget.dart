import 'package:flutter/material.dart';
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';

class ClusterWidget extends StatelessWidget {
  final MarkerClusterNode cluster;
  final ClusterWidgetBuilder builder;
  final VoidCallback? onTap;

  ClusterWidget({
    required this.cluster,
    required this.builder,
    required this.onTap,
  }) : super(key: ObjectKey(cluster));

  @override
  Widget build(BuildContext context) {
    if (onTap == null) return builder(context, cluster.mapMarkers);
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: builder(context, cluster.mapMarkers),
    );
  }
}
