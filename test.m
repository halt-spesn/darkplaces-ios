//
//  test.m
//  DPiOS
//
//  Created by HALt on 27.07.2024.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface GameViewController : UIViewController

@end

@implementation GameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupControls];
}

- (void)setupControls {
    // Setup Joystick
    UIView *joystick = [[UIView alloc] initWithFrame:CGRectMake(50, self.view.frame.size.height - 150, 100, 100)];
    joystick.backgroundColor = [UIColor blueColor];
    UIPanGestureRecognizer *joystickPan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handleJoystick:)];
    [joystick addGestureRecognizer:joystickPan];
    [self.view addSubview:joystick];
    
    // Setup Shoot Button
    UIButton *shootButton = [UIButton buttonWithType:UIButtonTypeSystem];
    shootButton.frame = CGRectMake(self.view.frame.size.width - 150, self.view.frame.size.height - 150, 100, 100);
    [shootButton setTitle:@"Shoot" forState:UIControlStateNormal];
    [shootButton addTarget:self action:@selector(shootButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:shootButton];
    
    // Setup Jump Button
    UIButton *jumpButton = [UIButton buttonWithType:UIButtonTypeSystem];
    jumpButton.frame = CGRectMake(self.view.frame.size.width - 150, self.view.frame.size.height - 300, 100, 100);
    [jumpButton setTitle:@"Jump" forState:UIControlStateNormal];
    [jumpButton addTarget:self action:@selector(jumpButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:jumpButton];
    
    // Add more buttons and controls as needed
}

- (void)handleJoystick:(UIPanGestureRecognizer *)recognizer {
    CGPoint translation = [recognizer translationInView:self.view];
    // Handle joystick movement
    NSLog(@"Joystick moved: %@", NSStringFromCGPoint(translation));
    [recognizer setTranslation:CGPointZero inView:self.view];
}

- (void)shootButtonPressed:(UIButton *)sender {
    // Handle shoot button press
    NSLog(@"Shoot button pressed");
}

- (void)jumpButtonPressed:(UIButton *)sender {
    // Handle jump button press
    NSLog(@"Jump button pressed");
}

@end
