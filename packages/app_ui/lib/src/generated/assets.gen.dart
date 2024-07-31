/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

class $AssetsAnimationsGen {
  const $AssetsAnimationsGen();

  /// File path: assets/animations/checked-animation.json
  String get checkedAnimation =>
      'packages/app_ui/assets/animations/checked-animation.json';

  /// List of all assets
  List<String> get values => [checkedAnimation];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/add_nav.svg
  SvgGenImage get addNav => const SvgGenImage('assets/icons/add_nav.svg');

  /// File path: assets/icons/chat_circle.svg
  SvgGenImage get chatCircle =>
      const SvgGenImage('assets/icons/chat_circle.svg');

  /// File path: assets/icons/double_tick_chat.svg
  SvgGenImage get doubleTickChat =>
      const SvgGenImage('assets/icons/double_tick_chat.svg');

  /// File path: assets/icons/github.svg
  SvgGenImage get github => const SvgGenImage('assets/icons/github.svg');

  /// File path: assets/icons/google.svg
  SvgGenImage get google => const SvgGenImage('assets/icons/google.svg');

  /// File path: assets/icons/grid_profile.svg
  SvgGenImage get gridProfile =>
      const SvgGenImage('assets/icons/grid_profile.svg');

  /// File path: assets/icons/home_nav.svg
  SvgGenImage get homeNav => const SvgGenImage('assets/icons/home_nav.svg');

  /// File path: assets/icons/reel_nav.svg
  SvgGenImage get reelNav => const SvgGenImage('assets/icons/reel_nav.svg');

  /// File path: assets/icons/search.svg
  SvgGenImage get search => const SvgGenImage('assets/icons/search.svg');

  /// File path: assets/icons/setting.svg
  SvgGenImage get setting => const SvgGenImage('assets/icons/setting.svg');

  /// File path: assets/icons/tag_user_profile.svg
  SvgGenImage get tagUserProfile =>
      const SvgGenImage('assets/icons/tag_user_profile.svg');

  /// File path: assets/icons/tick_chat.svg
  SvgGenImage get tickChat => const SvgGenImage('assets/icons/tick_chat.svg');

  /// File path: assets/icons/trash.svg
  SvgGenImage get trash => const SvgGenImage('assets/icons/trash.svg');

  /// File path: assets/icons/user.svg
  SvgGenImage get user => const SvgGenImage('assets/icons/user.svg');

  /// File path: assets/icons/verified_user.svg
  SvgGenImage get verifiedUser =>
      const SvgGenImage('assets/icons/verified_user.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        addNav,
        chatCircle,
        doubleTickChat,
        github,
        google,
        gridProfile,
        homeNav,
        reelNav,
        search,
        setting,
        tagUserProfile,
        tickChat,
        trash,
        user,
        verifiedUser
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/chat-background_light_mask.png
  AssetGenImage get chatBackgroundLightMask =>
      const AssetGenImage('assets/images/chat-background_light_mask.png');

  /// File path: assets/images/chat_background_dark_mask.jpeg
  AssetGenImage get chatBackgroundDarkMask =>
      const AssetGenImage('assets/images/chat_background_dark_mask.jpeg');

  /// File path: assets/images/chat_background_light_overlay.png
  AssetGenImage get chatBackgroundLightOverlay =>
      const AssetGenImage('assets/images/chat_background_light_overlay.png');

  /// File path: assets/images/instagram_text_logo.svg
  SvgGenImage get instagramTextLogo =>
      const SvgGenImage('assets/images/instagram_text_logo.svg');

  /// File path: assets/images/placeholder.png
  AssetGenImage get placeholder =>
      const AssetGenImage('assets/images/placeholder.png');

  /// File path: assets/images/profile_photo.png
  AssetGenImage get profilePhoto =>
      const AssetGenImage('assets/images/profile_photo.png');

  /// File path: assets/images/snapgram_icon.png
  AssetGenImage get snapgramIcon =>
      const AssetGenImage('assets/images/snapgram_icon.png');

  /// File path: assets/images/snapgram_splash_icon.png
  AssetGenImage get snapgramSplashIcon =>
      const AssetGenImage('assets/images/snapgram_splash_icon.png');

  /// List of all assets
  List<dynamic> get values => [
        chatBackgroundLightMask,
        chatBackgroundDarkMask,
        chatBackgroundLightOverlay,
        instagramTextLogo,
        placeholder,
        profilePhoto,
        snapgramIcon,
        snapgramSplashIcon
      ];
}

class Assets {
  Assets._();

  static const String package = 'app_ui';

  static const $AssetsAnimationsGen animations = $AssetsAnimationsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  static const String package = 'app_ui';

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    @Deprecated('Do not specify package for a generated library asset')
    String? package = package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    @Deprecated('Do not specify package for a generated library asset')
    String? package = package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => 'packages/app_ui/$_assetName';
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  static const String package = 'app_ui';

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    @Deprecated('Do not specify package for a generated library asset')
    String? package = package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final BytesLoader loader;
    if (_isVecFormat) {
      loader = AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => 'packages/app_ui/$_assetName';
}
