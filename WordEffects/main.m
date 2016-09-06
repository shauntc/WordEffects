//
//  main.m
//  WordEffects
//
//  Created by Shaun Campbell on 2016-09-05.
//  Copyright © 2016 Shaun Campbell. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char inputChars[255];
        char userChoice;
        int userChoiceNumber;
        
        printf("Input a string: ");
        fgets(inputChars, 255, stdin);
        
        printf("Your string is: %s\n", inputChars);
        
        //convert to NSString and remove new line
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        inputString = [inputString substringToIndex:[inputString length]-1];
        
        NSLog(@"Your input string was %@", inputString);
        
        
        do{
        
            NSLog(@"What would you like to do with your string? \n1)Uppercase \n2)Lowercase\n3)Numberize\n4)Canadianize\n5)Respond\n6)De-Space\n");
            fgets(&userChoice, 2, stdin);
        
        
           // NSLog(@"%c", userChoice);
            
            userChoiceNumber = userChoice - '0';
            
           // NSLog(@"%d", userChoiceNumber);
            
            if(6 < userChoiceNumber || userChoiceNumber < 1)
            {
                NSLog(@"Invalid input, please enter a number between 1 and 6\n");
            }
            
            
        
        }while(6 < userChoiceNumber || userChoiceNumber < 1);
        
       switch (userChoiceNumber)
        {
            //Make UPPER CASE
            case 1:
                NSLog(@"%@", [inputString uppercaseString]);
                break;
                
            //Make lower case
            case 2:
                NSLog(@"%@", [inputString lowercaseString]);
                break;
                
            //Numberize
            case 3:
                NSLog(@"Numberize!");
                break;
                
            //Canadianize
            case 4:
                NSLog(@"%@", [inputString stringByAppendingString:@", eh?"]);
                break;
                
            //Respond
            case 5:
                if([inputString hasSuffix:@"?"])
                {
                    NSLog(@"I Dont Know");
                }
                else if ([inputString hasSuffix:@"!"])
                {
                    NSLog(@"Whoa, calm down!");
                }
                else
                {
                    NSLog(@"I'm not really sure what to do with this");
                }
                break;
            
                //De-Space
            case 6:
                NSLog(@"De-Space it");
                break;
                
            default:
                NSLog(@"Something went wrong, get to default case");
        }

        
                
        
        
        
    }
    return 0;
}
