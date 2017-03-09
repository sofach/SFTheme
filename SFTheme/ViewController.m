//
//  ViewController.m
//  IMVTheme
//
//  Created by 陈少华 on 15/4/13.
//  Copyright (c) 2015年 inmovation. All rights reserved.
//

#import "ViewController.h"
#import "SFThemeManager.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
- (IBAction)theme1Clicked:(id)sender;
- (IBAction)theme2Clicked:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setTheme];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(setTheme) name:SFNotificationThemeChanged object:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)setTheme
{
    _label.font = [UIFont fontForTitle1WithFontFamily:SFFontFamilyPingFangSCMedium];
    _label.textColor = [UIColor colorForBorder];
}

- (IBAction)theme1Clicked:(id)sender {
    
    _imgView.image = [UIImage imageNamed:@"default_user"];
    
    [[SFThemeManager sharedInstence] switchToTheme:[SFTheme themeWithBundleName:@"ThemeDefault"]];
}

- (IBAction)theme2Clicked:(id)sender {
    _imgView.image = [UIImage imageNamed:@"theme2_default_user"];
    [[SFThemeManager sharedInstence] switchToTheme:[SFTheme themeWithBundleName:@"ThemeDefault2"]];
    
    //[[SFThemeManager sharedInstence].theme addStylesWithBundleName:@"ThemeDefault2"];
    //[self setTheme];

}
@end
