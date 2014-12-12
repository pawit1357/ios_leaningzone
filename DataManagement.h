//
//  DataManagement.h
//  Learning Zone
//
//  Created by icsnk on 6/9/14.
//  Copyright (c) 2014 ShinPleZ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataManagement : NSObject{
    NSManagedObjectContext *_context;
    NSMutableArray *questionList;
    
}
@property(nonatomic,retain)NSMutableArray *questionList;
@property(nonatomic,retain)NSManagedObjectContext *_context;


+(id)DatabaseManagement;
-(void)saveQuestion:(NSMutableDictionary*)_data;
-(NSMutableArray*)getQuestionary;



@end
