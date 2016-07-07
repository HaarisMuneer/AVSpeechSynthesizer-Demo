//
//  ViewController.h
//  TextToSpeech
//
//  Created by Haaris Muneer on 10/25/15.
//  Copyright © 2015 Haaris Muneer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *sentenceField;
@property (weak, nonatomic) IBOutlet UISlider *pitchSlider;
@property (weak, nonatomic) IBOutlet UISlider *rateSlider;
@property (nonatomic, strong) AVSpeechSynthesizer *synthesizer;
@property (nonatomic, strong) AVSpeechUtterance *sentenceUtterance;
@property (nonatomic, assign) CGFloat pitch;
@property (nonatomic, assign) CGFloat rate;

@end

