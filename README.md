# AliPaySDK_SZ
支付宝支付官方SDK

1.使用cocoapods集成；
<pre>
  <code>
pod 'AliPaySDK_SZ'
  </code>
</pre>

2.主要方法
2.1 在需要调起支付的地方
<pre>
  <code>
      //应用注册scheme,在AliSDKDemo-Info.plist定义URL types
    NSString *appScheme = @"alisdkdemo";
    
    // NOTE: 将签名成功字符串格式化为订单字符串,请严格按照该格式 
    // 一般建议由服务端按照相应格式生成
    NSString *orderString = [NSString stringWithFormat:@"%@&sign=%@",
                             orderInfoEncoded, signedString];
    
    // NOTE: 调用支付结果开始支付
    [[AlipaySDK defaultService] payOrder:orderString fromScheme:appScheme callback:^(NSDictionary *resultDic) {
        NSLog(@"reslut = %@",resultDic);
    }];
  </code>
</pre>
2.1 应用回调
<pre>
  <code>
  - (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation {
    
    if ([url.host isEqualToString:@"safepay"]) {
        //跳转支付宝钱包进行支付，处理支付结果
        [[AlipaySDK defaultService] processOrderWithPaymentResult:url standbyCallback:^(NSDictionary *resultDic) {
            NSLog(@"result = %@",resultDic);
        }];
    }
    return YES;
}

// NOTE: 9.0以后使用新API接口
- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<NSString*, id> *)options
{
    if ([url.host isEqualToString:@"safepay"]) {
        //跳转支付宝钱包进行支付，处理支付结果
        [[AlipaySDK defaultService] processOrderWithPaymentResult:url standbyCallback:^(NSDictionary *resultDic) {
            NSLog(@"result = %@",resultDic);
        }];
    }
    return YES;
}
  </code>
</pre>



