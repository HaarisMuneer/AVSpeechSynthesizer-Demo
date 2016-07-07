//
//  ViewController.m
//  TextToSpeech
//
//  Created by Haaris Muneer on 10/25/15.
//  Copyright © 2015 Haaris Muneer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.rateSlider.minimumValue = AVSpeechUtteranceMinimumSpeechRate;
    self.rateSlider.maximumValue = AVSpeechUtteranceMaximumSpeechRate;
    self.pitchSlider.minimumValue = 0.5;
    self.pitchSlider.maximumValue = 2.0;
    self.synthesizer = [[AVSpeechSynthesizer alloc]init];
    self.pitch = 1.0;
    self.rate = AVSpeechUtteranceDefaultSpeechRate;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)speakButtonTapped:(id)sender {
    NSString *sentence = self.sentenceField.text;
    self.pitch = self.pitchSlider.value;
    self.rate = self.rateSlider.value;
    self.sentenceUtterance = [AVSpeechUtterance speechUtteranceWithString:sentence];
    self.sentenceUtterance.pitchMultiplier = self.pitch;
    self.sentenceUtterance.rate = self.rate;
//    [self.sentenceUtterance setVoice:[AVSpeechSynthesisVoice voiceWithLanguage:@"en-AU"]];
//    [self.sentenceUtterance setVoice:[AVSpeechSynthesisVoice voiceWithLanguage:@"hi-IN"]];
//    [self.sentenceUtterance setVoice:[AVSpeechSynthesisVoice voiceWithLanguage:@"ru-RU"]];
    [self.synthesizer speakUtterance:self.sentenceUtterance];
}

@end
