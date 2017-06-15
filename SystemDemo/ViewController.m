//
//  ViewController.m
//  SystemDemo
//
//  Created by 郭健 on 2017/6/15.
//  Copyright © 2017年 SeaCity. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *systemBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)systemBtn:(id)sender {
    
    NSString *urlString = @"App-Prefs:root=WIFI";
    if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:urlString]]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlString] options:@{} completionHandler:nil];
    }else{
        [[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:urlString]];
    }
}


/** 
 
 类似也有跳转到以下：
 
 无线局域网 App-Prefs:root=WIFI
 
 蓝牙 App-Prefs:root=Bluetooth
 
 蜂窝移动网络 App-Prefs:root=MOBILE_DATA_SETTINGS_ID
 
 个人热点 App-Prefs:root=INTERNET_TETHERING
 
 运营商 App-Prefs:root=Carrier
 
 通知 App-Prefs:root=NOTIFICATIONS_ID
 
 通用 App-Prefs:root=General
 
 通用-关于本机 App-Prefs:root=General&path=About
 
 通用-键盘 App-Prefs:root=General&path=Keyboard
 
 通用-辅助功能 App-Prefs:root=General&path=ACCESSIBILITY
 
 通用-语言与地区 App-Prefs:root=General&path=INTERNATIONAL
 
 通用-还原 App-Prefs:root=Reset
 
 墙纸 App-Prefs:root=Wallpaper
 
 Siri App-Prefs:root=SIRI
 
 隐私 App-Prefs:root=Privacy
 
 Safari App-Prefs:root=SAFARI
 
 音乐 App-Prefs:root=MUSIC
 
 音乐-均衡器 App-Prefs:root=MUSIC&path=com.apple.Music:EQ
 
 照片与相机 App-Prefs:root=Photos
 
 FaceTime App-Prefs:root=FACETIME
 

 
 
 */

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
