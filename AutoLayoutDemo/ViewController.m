//
//  ViewController.m
//  AutoLayoutDemo
//
//  Created by Mason on 2021/3/3.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIButton *updateButton;

@property (nonatomic, strong) UILabel *mainLabel;

@end

@implementation ViewController

- (UIButton *)updateButton
{
    if (!_updateButton) {
        _updateButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_updateButton setBackgroundColor:[UIColor greenColor]];
        [_updateButton setTitle:@"更新文字" forState:UIControlStateNormal];
        [_updateButton setTranslatesAutoresizingMaskIntoConstraints:NO]; // 这是一个重点, 没有添加会报错
        [_updateButton addTarget:self
                          action:@selector(clickedUpdateButton:)
                forControlEvents:UIControlEventTouchUpInside];
    }
    return _updateButton;
}

- (UILabel *)mainLabel
{
    if (!_mainLabel) {
        _mainLabel = [[UILabel alloc] init];
        _mainLabel.text = @"更新文档";
        [_mainLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
        [_mainLabel setBackgroundColor:[UIColor greenColor]];
        _mainLabel.numberOfLines = 0;
    }
    return _mainLabel;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view addSubview:self.mainLabel];
    UILayoutGuide *margin = self.view.layoutMarginsGuide;
    [self.mainLabel.topAnchor constraintEqualToAnchor:margin.topAnchor constant:50.0].active = YES;
    [self.mainLabel.leftAnchor constraintEqualToAnchor:margin.leftAnchor].active = YES;
    [self.mainLabel.rightAnchor constraintEqualToAnchor:margin.rightAnchor].active = YES;
    
    [self.view addSubview:self.updateButton];
    UILayoutGuide *mainLabelMargin = self.mainLabel.layoutMarginsGuide;
    [self.updateButton.topAnchor constraintEqualToAnchor:mainLabelMargin.bottomAnchor constant:10].active = YES;
    [self.updateButton.centerXAnchor constraintEqualToAnchor:mainLabelMargin.centerXAnchor].active = YES;
}

- (void)clickedUpdateButton:(UIButton *)sender
{
    NSString *newStr = @"新的标签在这里新的标签在这里新的标签在这里新的标签在这里新的标签在这里新的标签在这里新的标签在这里新的标签在这里新的标签在这里新的标签在这里新的标签在这里新的标签在这里新的标签在这里";
    NSString *oldStr = @"更新文档";
    NSString *titleStr = [self.mainLabel text];
    if ([titleStr isEqualToString:newStr]) {
        [self.mainLabel setText:oldStr];
    } else {
        [self.mainLabel setText:newStr];
    }
}

@end
