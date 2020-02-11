#import "FlutterWebgradientsPlugin.h"
#if __has_include(<flutter_webgradients/flutter_webgradients-Swift.h>)
#import <flutter_webgradients/flutter_webgradients-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_webgradients-Swift.h"
#endif

@implementation FlutterWebgradientsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterWebgradientsPlugin registerWithRegistrar:registrar];
}
@end
