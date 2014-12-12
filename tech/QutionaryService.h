//
//  QutionaryService.h
//  Learning Zone
//
//  Created by icsnk on 6/8/14.
//  Copyright (c) 2014 ShinPleZ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QutionaryService : NSObject<NSXMLParserDelegate>{
    NSMutableData *JSONData;
    
    NSXMLParser *parser;
    
    NSString *currentElement;
    NSMutableString *_url;
    
}

@property (nonatomic,retain) NSString *result;

-(void)initial;
@end
