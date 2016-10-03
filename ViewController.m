//
//  ViewController.m
//  Palindrome
//
//  Created by Khalid Mohamed on 9/29/16.
//  Copyright © 2016 Khalid Mohamed. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    }
    

-(IBAction) hitit{
    
  NSString *word= self.entertext.text.lowercaseString;
   for(int i=4; i<word.length;i++) {
  char c = [word characterAtIndex:i];
   }
  NSString *reverseword=@"";
    for(int i=word.length-1; i>=0;i--) {
      
        char c = [word characterAtIndex:i];
        
        NSString *convertedCharToString = [NSString stringWithFormat:@"%c",c];
        
        reverseword = [reverseword stringByAppendingString:[NSString stringWithFormat:@"%c",[word characterAtIndex:i]]];
        
   // [reverseword appendString:[NSString stringWithFormat:@"%c",[word characterAtIndex:i]]];
  
    }
    
    if ([word isEqual:reverseword]) {
        self.answer.text= @"yes";
     }
    
        else {
            self.answer.text= @"no";
        }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
