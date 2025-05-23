import 'package:flutter_appauth_platform_interface/flutter_appauth_platform_interface.dart';
import 'package:oidc_core/oidc_core.dart';
import 'package:oidc_flutter_appauth/oidc_flutter_appauth.dart';

import 'package:oidc_platform_interface/oidc_platform_interface.dart';

/// The iOS implementation of [OidcPlatform].
class OidcIOS extends OidcPlatform with OidcFlutterAppauth {
  /// Registers this class as the default instance of [OidcPlatform]
  static void registerWith() {
    OidcPlatform.instance = OidcIOS();
  }

  @override
  ExternalUserAgent getExternalUserAgent(OidcPlatformSpecificOptions options) {
    return OidcFlutterAppauth.mapToExternalUserAgent(
      options.ios.externalUserAgent,
    );
  }
}
