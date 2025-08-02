import 'package:basiclearnbloc/common/assets_source.dart';

class BottomNavbarModel {
  final String slug;
  final String activeImage;
  final String inactiveImage;
  final String label;
  const BottomNavbarModel({
    required this.slug,
    required this.activeImage,
    required this.inactiveImage,
    required this.label,
  });
}

final List<BottomNavbarModel> items = [
  BottomNavbarModel(
    slug: 'dashboard',
    activeImage: AssetsSource.activeDashboardSvg,
    inactiveImage: AssetsSource.dashboardSvg,
    label: 'Dashboard',
  ),
  BottomNavbarModel(
    slug: 'chats',
    activeImage: AssetsSource.activeChatsSvg,
    inactiveImage: AssetsSource.chatsSvg,
    label: 'Chats',
  ),
  BottomNavbarModel(
    slug: 'calls',
    activeImage: AssetsSource.activeCallsSvg,
    inactiveImage: AssetsSource.callsSvg,
    label: 'Calls',
  ),
  BottomNavbarModel(
    slug: 'tickets',
    activeImage: AssetsSource.activeTicketsSvg,
    inactiveImage: AssetsSource.ticketsSvg,
    label: 'Tickets',
  ),
  BottomNavbarModel(
    slug: 'more',
    activeImage: AssetsSource.activeMoreSvg,
    inactiveImage: AssetsSource.moreSvg,
    label: 'More',
  ),
];
