//  Created by Alexander Skorulis on 24/03/2015.
//  Copyright (c) 2015 com.skorulis. All rights reserved.

#import <Mantle/Mantle.h>

@interface TestModel : MTLModel <MTLJSONSerializing>

@property (nonatomic, strong) NSString* name;

@end
