//
//  StringsGenerator.m
//  Spendykins
//
//  Created by Chris Tibbs on 1/9/14.
//  Copyright (c) 2014 Chris Tibbs. All rights reserved.
//

#import "StringsGenerator.h"

@interface StringsGenerator()

+ (NSArray *)someCategories;
+ (NSArray *)ratingOneComments;
+ (NSArray *)ratingTwoComments;
+ (NSArray *)ratingThreeComments;
+ (NSArray *)ratingFourComments;
+ (NSArray *)ratingFiveComments;

@end

@implementation StringsGenerator

+ (NSArray *)ratingOneComments{
    return @[@"that was a cry for help",@"only up from here",@"definitely private",@"will donate blood",@"gonna cry tomorrow",@"I definitely have a problem"];
}

+ (NSArray *)ratingTwoComments{
    return @[@"#yolo",@"I've done worse",@"I think I have a problem",@"it gets better"];
}

+ (NSArray *)ratingThreeComments{
    return @[@"maybe shouldn't have done that",@"",@"will buy groceries tonight",@"we can build on this",@"shhh don't tell anyone"];
}

+ (NSArray *)ratingFourComments{
    return @[@"I deserve a pat on the back"];
}

+ (NSArray *)ratingFiveComments{
    return @[@"had to do it",@"whoo! great investment",@"started from the bottom",@"#winning",@"master of responsibility",@"feelin' like an adult"];
}

+(NSArray *)someCategories
{
    return @[@"Dating",@"Football",@"Rent",@"Entertainment",@"Books",@"Therapy",@"Medical",@"My Son",@"Education",@"Music",@"Theatre",@"Acting Classes",@"Utilities",@"Dating",@"Music Career",@"Movies",@"Travel",@"Rock Climbing",@"Boxing",@"Self Improvement",@"Myself",@"Networking",@"Job Hunt"];
}

+ (NSString *)randomCommentForRating:(NSInteger)rating
{
    NSArray *commentsArray;
    // int rate = [rating intValue];
    switch (rating) {
        case 1:
            commentsArray = [StringsGenerator ratingOneComments];
            break;
        case 2:
            commentsArray = [StringsGenerator ratingTwoComments];
            break;
        case 3:
            commentsArray = [StringsGenerator ratingThreeComments];
            break;
        case 4:
            commentsArray = [StringsGenerator ratingFourComments];
            break;
        case 5:
            commentsArray = [StringsGenerator ratingFiveComments];
            break;
    }
    int r = arc4random() % [commentsArray count];
    return commentsArray[r];
 }

+(NSString *)categoryExamplesString
{
    NSMutableArray *someCategories = [[StringsGenerator someCategories] copy];
    
    NSString *categoryExampleString = @"ex. ";
    
    int r1 = arc4random() % [someCategories count];
    categoryExampleString = [categoryExampleString stringByAppendingString:someCategories[r1]];
    // [someCategories removeObjectAtIndex:r1];
    categoryExampleString = [categoryExampleString stringByAppendingString:@","];
    
    int r2 = arc4random() % [someCategories count];
    categoryExampleString = [categoryExampleString stringByAppendingString:someCategories[r2]];
    // [someCategories removeObjectAtIndex:r2];
    categoryExampleString = [categoryExampleString stringByAppendingString:@","];
    
    int r3 = arc4random() % [someCategories count];
    categoryExampleString = [categoryExampleString stringByAppendingString:someCategories[r3]];
    
    return categoryExampleString;
}

@end