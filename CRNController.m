//
//  CRNController.m
//  Scheduler
//
//  Created by Tim Horton on 2008.11.18.
//  Copyright 2008 Rensselaer Polytechnic Institute. All rights reserved.
//

#import "CRNController.h"

@implementation CRNController

- (void)loadCRNFile
{
	NSURL * furl = [NSURL URLWithString:@"http://rpischeduler.com/install/run/out.schedb"];
	NSError * err;
    xmlDoc = [[NSXMLDocument alloc] initWithContentsOfURL:furl
                                                  options:(NSXMLNodePreserveWhitespace | NSXMLNodePreserveCDATA)
                                                    error:&err];
	NSLog(@"Error, perhaps: %@", err);
}

- (NSXMLElement *)getSectionForCRN:(int)crn
{
    NSXMLElement * section = [[xmlDoc nodesForXPath:[NSString stringWithFormat:@"/schedb/dept/course/section[@crn=\"%d\"]", crn] error:nil] lastObject];
    
    if(!section)
        NSLog([NSString stringWithFormat:@"Could not find CRN %d! Schedule will be inaccurate!", crn]);
    
    return section;
}

@end
