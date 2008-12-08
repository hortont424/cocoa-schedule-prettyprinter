//
//  ScheduleView.h
//  Scheduler
//
//  Created by Tim Horton on 2008.11.18.
//  Copyright 2008 Rensselaer Polytechnic Institute. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "CRNController.h"

@interface ScheduleView : NSView
{
    IBOutlet id crns;
	NSMutableArray * classes, * colors;
	NSMutableDictionary * classNames;
}

@end
