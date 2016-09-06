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
        char userChoice = '1';
        int userChoiceNumber = 0;
        NSString *inputString = [[NSString alloc] init];
        
        
        while(YES)
        {
        
            
        //String input
        if(userChoice == '1')
        {
            printf("Input a string: ");
            do
            {
                fgets(inputChars, 255, stdin);
            }while(inputChars[0] == '\n');
            
            printf("Your input characters are: %s\n", inputChars);
            
            //convert to NSString and remove new line
            inputString = [NSString stringWithUTF8String:inputChars];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
        }
        
        
        
        
        NSLog(@"The string you're working with is: %@", inputString);
        
        
        do{
        
            NSLog(@"What would you like to do with your string? \n1)Uppercase \n2)Lowercase\n3)Numberize\n4)Canadianize\n5)Respond\n6)De-Space\n");
            do
            {
                fgets(&userChoice,2,stdin);
            }while(userChoice == '\n');
        
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
                inputString = [inputString uppercaseString];
                NSLog(@"Resulting string: %@", inputString);
                break;
                
            //Make lower case
            case 2:
                inputString = [inputString lowercaseString];
                NSLog(@"Resulting string: %@", inputString);
                break;
                
            //Numberize
            case 3:
                if([inputString intValue]!=0 || [inputString  isEqual: @"0"])
                {
                NSLog(@"%d", [inputString intValue]);
                }
                else
                {
                    NSLog(@"String does not begin with an integer");
                }
                break;
                
            //Canadianize
            case 4:
                inputString = [inputString stringByAppendingString:@", eh?"];
                NSLog(@"Resulting string: %@", inputString);
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
                inputString = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                NSLog(@"Resulting string: %@", inputString);
                break;
            
            //If it gets to default it indicates a problem
            default:
                NSLog(@"Something went wrong, switch got to default case");
        }
        
        NSLog(@"What would you like to do?\n1)Input a new string\n2)Do another operation on the resultant string\n3)Exit\n");
        
        do
        {
            do
            {
                fgets(&userChoice,2,stdin);
            }while(userChoice == '\n');
                
            if('1'>userChoice || userChoice>'3')
            {
                NSLog(@"Please input a valid choice");
            }
            
            
        }while('1'>userChoice || userChoice>'3');
        
        if(userChoice=='3')
        {
            return 0;
        }
        
        
        
        
        
    }
    
    }
    return 0;
}
