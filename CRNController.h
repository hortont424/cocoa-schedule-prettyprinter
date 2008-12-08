//
//  CRNController.h
//  Scheduler
//
//  Created by Tim Horton on 2008.11.18.
//  Copyright 2008 Rensselaer Polytechnic Institute. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface CRNController : NSObject
{
    NSXMLDocument * xmlDoc;
}

- (void)loadCRNFile;
- (NSXMLElement *)getSectionForCRN:(int)crn;

@end
