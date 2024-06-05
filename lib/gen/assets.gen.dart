/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/add-account.png
  AssetGenImage get addAccount =>
      const AssetGenImage('assets/icons/add-account.png');

  /// File path: assets/icons/ahead.png
  AssetGenImage get ahead => const AssetGenImage('assets/icons/ahead.png');

  /// File path: assets/icons/backward.png
  AssetGenImage get backward =>
      const AssetGenImage('assets/icons/backward.png');

  /// File path: assets/icons/camera.png
  AssetGenImage get camera => const AssetGenImage('assets/icons/camera.png');

  /// File path: assets/icons/cast.png
  AssetGenImage get cast => const AssetGenImage('assets/icons/cast.png');

  /// File path: assets/icons/create-post.png
  AssetGenImage get createPost =>
      const AssetGenImage('assets/icons/create-post.png');

  /// File path: assets/icons/go-live.png
  AssetGenImage get goLive => const AssetGenImage('assets/icons/go-live.png');

  /// File path: assets/icons/help.png
  AssetGenImage get help => const AssetGenImage('assets/icons/help.png');

  /// File path: assets/icons/notification.png
  AssetGenImage get notification =>
      const AssetGenImage('assets/icons/notification.png');

  /// File path: assets/icons/pause.png
  AssetGenImage get pause => const AssetGenImage('assets/icons/pause.png');

  /// File path: assets/icons/pen.png
  AssetGenImage get pen => const AssetGenImage('assets/icons/pen.png');

  /// File path: assets/icons/play.png
  AssetGenImage get play => const AssetGenImage('assets/icons/play.png');

  /// File path: assets/icons/purchases.png
  AssetGenImage get purchases =>
      const AssetGenImage('assets/icons/purchases.png');

  /// File path: assets/icons/search.png
  AssetGenImage get search => const AssetGenImage('assets/icons/search.png');

  /// File path: assets/icons/settings.png
  AssetGenImage get settings =>
      const AssetGenImage('assets/icons/settings.png');

  /// File path: assets/icons/short-video.png
  AssetGenImage get shortVideo =>
      const AssetGenImage('assets/icons/short-video.png');

  /// File path: assets/icons/time-watched.png
  AssetGenImage get timeWatched =>
      const AssetGenImage('assets/icons/time-watched.png');

  /// File path: assets/icons/upload.png
  AssetGenImage get upload => const AssetGenImage('assets/icons/upload.png');

  /// File path: assets/icons/your-channel.png
  AssetGenImage get yourChannel =>
      const AssetGenImage('assets/icons/your-channel.png');

  /// File path: assets/icons/your-data.png
  AssetGenImage get yourData =>
      const AssetGenImage('assets/icons/your-data.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        addAccount,
        ahead,
        backward,
        camera,
        cast,
        createPost,
        goLive,
        help,
        notification,
        pause,
        pen,
        play,
        purchases,
        search,
        settings,
        shortVideo,
        timeWatched,
        upload,
        yourChannel,
        yourData
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/flutter background.png
  AssetGenImage get flutterBackground =>
      const AssetGenImage('assets/images/flutter background.png');

  /// File path: assets/images/go ahead final.png
  AssetGenImage get goAheadFinal =>
      const AssetGenImage('assets/images/go ahead final.png');

  /// File path: assets/images/go_back_final.png
  AssetGenImage get goBackFinal =>
      const AssetGenImage('assets/images/go_back_final.png');

  /// File path: assets/images/pause.png
  AssetGenImage get pause => const AssetGenImage('assets/images/pause.png');

  /// File path: assets/images/play.png
  AssetGenImage get play => const AssetGenImage('assets/images/play.png');

  /// File path: assets/images/signinwithgoogle.png
  AssetGenImage get signinwithgoogle =>
      const AssetGenImage('assets/images/signinwithgoogle.png');

  /// File path: assets/images/youtube-logo.jpg
  AssetGenImage get youtubeLogo =>
      const AssetGenImage('assets/images/youtube-logo.jpg');

  /// File path: assets/images/youtube-signin.jpg
  AssetGenImage get youtubeSignin =>
      const AssetGenImage('assets/images/youtube-signin.jpg');

  /// File path: assets/images/youtube.jpg
  AssetGenImage get youtube => const AssetGenImage('assets/images/youtube.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [
        flutterBackground,
        goAheadFinal,
        goBackFinal,
        pause,
        play,
        signinwithgoogle,
        youtubeLogo,
        youtubeSignin,
        youtube
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size = null});

  final String _assetName;

  final Size? size;

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
    String? package,
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
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
