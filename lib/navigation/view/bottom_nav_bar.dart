import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snapgram/app/bloc/app_bloc.dart';
import 'package:snapgram/feed/feed.dart';
import 'package:snapgram/feed/post/video/video.dart';
import 'package:snapgram/home/home.dart';
import 'package:snapgram/l10n/l10n.dart';
import 'package:go_router/go_router.dart';
import 'package:instagram_blocks_ui/instagram_blocks_ui.dart';
import 'package:shared/shared.dart';

/// {@template main_bottom_navigation_bar}
/// Bottom navigation bar of the application. It contains the [navigationShell]
/// that will handle the navigation between the different bottom navigation
/// bars.
/// {@endtemplate}
class BottomNavBar extends StatelessWidget {
  /// {@macro bottom_nav_bar}
  const BottomNavBar({
    required this.navigationShell,
    super.key,
  });

  /// Navigation shell that will handle the navigation between the different
  /// bottom navigation bars.
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    final videoPlayer = VideoPlayerInheritedWidget.of(context);

    final user = context.select((AppBloc bloc) => bloc.state.user);

    final navigationBarItems = mainNavigationBarItems(
      homeLabel: context.l10n.homeNavBarItemLabel,
      searchLabel: context.l10n.searchNavBarItemLabel,
      createMediaLabel: context.l10n.createMediaNavBarItemLabel,
      reelsLabel: context.l10n.reelsNavBarItemLabel,
      userProfileLabel: context.l10n.profileNavBarItemLabel,
      userProfileAvatar: AnimatedCrossFade(
        firstChild: const Icon(Icons.person),
        secondChild: UserProfileAvatar(
          avatarUrl: user.avatarUrl,
          isLarge: false,
          radius: 18,
        ),
        crossFadeState:
            user.avatarUrl == null || (user.avatarUrl?.isEmpty ?? true)
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
        duration: 350.ms,
      ),
    );

    return BottomNavigationBar(
      currentIndex: navigationShell.currentIndex,
      onTap: (index) {
        HomeProvider().togglePageView(enable: index == 0);
        if ([0, 1, 2, 3].contains(index)) {
          if (index case 0) videoPlayer.videoPlayerState.playFeed();
          if (index case 1) videoPlayer.videoPlayerState.playTimeline();
          if (index case 2) {
            HomeProvider().animateToPage(0);
            HomeProvider().togglePageView();
          }
          if (index case 3) videoPlayer.videoPlayerState.playReels();
        } else {
          videoPlayer.videoPlayerState.stopAll();
        }
        if (index != 2) {
          navigationShell.goBranch(
            index,
            initialLocation: index == navigationShell.currentIndex,
          );
        }
        if (index == 0) {
          if (!(index == navigationShell.currentIndex)) return;
          FeedPageController().scrollToTop();
        }
      },
      iconSize: 28,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.red,
      items: navigationBarItems
          .map(
            (e) => BottomNavigationBarItem(
              icon: _ColoredSvgIcon(
                svg: e.child,
                selectedColor: context.theme.primaryColor,
                unselectedColor: Colors.grey,
                isSelected: navigationShell.currentIndex ==
                    navigationBarItems.indexOf(e),
              ),
              label: e.label,
              tooltip: e.tooltip,
            ),
          )
          .toList(),
    );
  }
}

class _ColoredSvgIcon extends StatelessWidget {
  const _ColoredSvgIcon({
    required this.svg,
    required this.selectedColor,
    required this.unselectedColor,
    required this.isSelected,
  });

  final Widget svg;
  final Color selectedColor;
  final Color unselectedColor;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
        isSelected ? selectedColor : unselectedColor,
        BlendMode.srcIn,
      ),
      child: svg,
    );
  }
}
