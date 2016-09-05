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
        
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        NSLog(@"Your input string was %@", inputString);
        
        
        do{
        
            NSLog(@"What would you like to do with your string? \n1)Uppercase \n2)Lowercase\n3)Numberize\n4)Canadianize\n5)Respond\n");
            fgets(&userChoice, 2, stdin);
        
        
            NSLog(@"%c", userChoice);
            
            userChoiceNumber = userChoice - '0';
            
            NSLog(@"%d", userChoiceNumber);
            
            if(5 < userChoiceNumber || userChoiceNumber < 1)
            {
                NSLog(@"Invalid input, please enter a number between 1 and 5\n");
            }
            
            
        
        }while(5 < userChoiceNumber || userChoiceNumber < 1);
        
       switch (userChoiceNumber)
        {
            case 1:
                NSLog(@"%@", [inputString uppercaseString]);
                break;
            case 2:
                NSLog(@"%@", [inputString lowercaseString]);
                break;
            case 3:
                NSLog(@"Numberize!");
                break;
            case 4:
                NSLog(@"%@", [inputString stringByAppendingString:@", eh?"]);
                break;
            case 5:
                NSLog(@"Well damn!");
                break;
            default:
                NSLog(@"Something went wrong, get to default case");
        }

        
                
        
        
        
    }
    return 0;
}
