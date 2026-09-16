import 'dart:io';
import 'package:mime/mime.dart';
import 'package:flutter/foundation.dart';
import 'package:network_info_plus/network_info_plus.dart';

class Util {
  static bool get isWeb {
    return kIsWeb;
  }

  static bool get isIOS {
    return Platform.isIOS;
  }

  static bool get isAndroid {
    return Platform.isAndroid;
  }

  static bool get isMacOS {
    return Platform.isMacOS;
  }

  static bool get isLinux {
    return Platform.isLinux;
  }

  static bool get isWindows {
    return Platform.isWindows;
  }

  static bool get isMobile {
    return Platform.isAndroid || Platform.isIOS;
  }

  static bool get isDesktop {
    if (kIsWeb) {
      return false;
    }
    return Platform.isWindows || Platform.isLinux || Platform.isMacOS;
  }

  static String? get fontFamily {
    // if (Platform.isIOS) {
    //   return "PingFang SC";
    // }
    if (Platform.isWindows) {
      return "Microsoft YaHei";
    }
    return null;
  }

  static String mimeType(String name) {
    return lookupMimeType(name) ?? "";
  }

  static String formatSize(int size) {
    if (size == 0) {
      return "0";
    } else if (size < 1024) {
      return '${size}B';
    } else if (size < 1024 * 1024) {
      return '${(size / 1024).toStringAsFixed(2)}KB';
    } else if (size < 1024 * 1024 * 1024) {
      return '${(size / 1024 / 1024).toStringAsFixed(2)}MB';
    } else {
      return '${(size / 1024 / 1024 / 1024).toStringAsFixed(2)}GB';
    }
  }

  static bool isPrivateIP(String ip) {
    final octets = ip.split('.').map(int.tryParse).toList();
    if (octets.length != 4 ||
        octets.any((octet) => octet == null || octet < 0 || octet > 255)) {
      return false;
    }

    final first = octets[0]!;
    final second = octets[1]!;
    // RFC 1918: 10.0.0.0/8, 172.16.0.0/12, and 192.168.0.0/16.
    return first == 10 ||
        (first == 172 && second >= 16 && second <= 31) ||
        (first == 192 && second == 168);
  }

  static Future<String?> localIP() async {
    String? ip;

    try {
      ip = await NetworkInfo().getWifiIP();
    } catch (e) {
      // ignore: avoid_print
      print(e.toString());
    }
    if (ip == null || ip == "") {
      for (final interface
          in await NetworkInterface.list(type: InternetAddressType.IPv4)) {
        for (final addr in interface.addresses) {
          if (isPrivateIP(addr.address)) {
            return addr.address;
          }
        }
      }
    }
    return ip;
  }
}
