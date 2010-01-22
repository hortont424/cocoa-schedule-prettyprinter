//
//  ScheduleView.m
//  Scheduler
//
//  Created by Tim Horton on 2008.11.18.
//  Copyright 2008 Rensselaer Polytechnic Institute. All rights reserved.
//

#import "ScheduleView.h"

@implementation ScheduleView

int ci = 0;
NSArray * roomNames;

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
	

    return self;
}

- (void)awakeFromNib
{
	classes = [NSMutableArray new];
	colors = [NSMutableArray new];
	classNames = [NSMutableDictionary new];

	// Carol:
	//roomNames = [[NSArray arrayWithObjects:@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"11",@"12",@"13",@"14",@"15",@"16",@"17",@"18",@"19",@"20",@"21",@"22",NULL] retain];
	// Tim:
	roomNames = [[NSArray arrayWithObjects:@"DCC 308",@"DCC 308",@"DCC 308",@"WALKER 6113",@"SAGE 2411",@"SAGE 2411",@"EATON 215",@"EATON 215",@"GREENE 120",@"GREENE 120",@"SAGE 3101",@"SAGE 3101",@"13",@"14",@"15",@"16",@"17",@"18",@"19",@"20",@"21",@"22",NULL] retain];
	// Matt:
	//roomNames = [[NSArray arrayWithObjects:@"SAGE 5510",@"SAGE 5510",@"CARNEGIE 112",@"CARNEGIE 112",@"LALLY 102",@"LALLY 102",@"DCC 318",@"DCC 318",@"EATON 216",@"CARNEGIE 201",@"CARNEGIE 201",@"LOW 4050",@"13",@"14",@"15",@"DCC 308",@"DCC 308",@"JEC 4104",@"SAGE 3510",@"SAGE 5101",@"SAGE 5101",@"DCC 324",@"DCC 324",@"DCC 324",@"SAGE 2704",@"SAGE 2704",@"DCC 330",@"DCC 330",@"SAGE 3303",@"CARNEGIE 101",NULL] retain];
	// Tristan:
	//roomNames = [[NSArray arrayWithObjects:@"DCC 308",@"DCC 308",@"LALLY 104",@"LALLY 104",@"EATON 216",@"EATON 216",@"EATON 216",@"WALKER 3109",@"WALKER 3109",@"CARNEGIE 112",@"CARNEGIE 112",@"DCC 330",@"DCC 330",@"RICKETTS 211",@"RICKETTS 211",@"16",@"17",@"18",@"19",@"20",@"21",@"22",NULL] retain];
	// Template:
	// roomNames = [[NSArray arrayWithObjects:@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"11",@"12",@"13",@"14",@"15",@"16",@"17",@"18",@"19",@"20",@"21",@"22",NULL] retain];

	[crns loadCRNFile];
	ci = 0;
	
	// TODO: Check if null BEFORE we add

	// Carol:
	/*[classes addObject:[crns getSectionForCRN:42575]];
	[classes addObject:[crns getSectionForCRN:43013]];
	[classes addObject:[crns getSectionForCRN:42708]];
	[classes addObject:[crns getSectionForCRN:43400]];
	[classes addObject:[crns getSectionForCRN:42923]];*/
	
	// Tristan:
	/*[classes addObject:[crns getSectionForCRN:42575]];
	[classes addObject:[crns getSectionForCRN:43013]];
	[classes addObject:[crns getSectionForCRN:42708]];
	[classes addObject:[crns getSectionForCRN:43400]];
	[classes addObject:[crns getSectionForCRN:42923]];*/
	
	// Tim:
	[classes addObject:[crns getSectionForCRN:50896]];
	[classes addObject:[crns getSectionForCRN:50629]];
	[classes addObject:[crns getSectionForCRN:52486]];
	[classes addObject:[crns getSectionForCRN:51738]];
	[classes addObject:[crns getSectionForCRN:52601]];
	
	// Matt:
	/*[classes addObject:[crns getSectionForCRN:43117]];
	[classes addObject:[crns getSectionForCRN:42695]];
	[classes addObject:[crns getSectionForCRN:42600]];
	[classes addObject:[crns getSectionForCRN:42580]];
	[classes addObject:[crns getSectionForCRN:45174]];
	[classes addObject:[crns getSectionForCRN:42585]];*/
	
	
	[colors addObject:[NSColor colorWithDeviceRed:(250.0/255) green:(245.0/255) blue:(156.0/255) alpha:1.0]];
	[colors addObject:[NSColor colorWithDeviceRed:(120.0/255) green:(185.0/255) blue:(255.0/255) alpha:1.0]];
	[colors addObject:[NSColor colorWithDeviceRed:(136.0/255) green:(252.0/255) blue:(152.0/255) alpha:1.0]];
	[colors addObject:[NSColor colorWithDeviceRed:(249.0/255) green:(190.0/255) blue:(120.0/255) alpha:1.0]];
	[colors addObject:[NSColor colorWithDeviceRed:(246.0/255) green:(160.0/255) blue:(160.0/255) alpha:1.0]];
	[colors addObject:[NSColor colorWithDeviceRed:(246.0/255) green:(150.0/255) blue:(246.0/255) alpha:1.0]];
	[colors addObject:[NSColor colorWithDeviceRed:(184.0/255) green:(115.0/255) blue:(065.0/255) alpha:1.0]];
	[colors addObject:[NSColor colorWithDeviceRed:(140.0/255) green:(140.0/255) blue:(140.0/255) alpha:1.0]];
	
	[classNames setObject:@"Intro to Electronics" forKey:@"INTRODUCTION TO ELECTRONI"];
	[classNames setObject:@"Discrete Structures" forKey:@"INTRO DISCRETE STRUCTURES"];
	[classNames setObject:@"Operating Systems" forKey:@"OPERATING SYSTEMS"];
	[classNames setObject:@"Fundamentals of Optics" forKey:@"FUNDAMENTALS OF OPTICS"];
	[classNames setObject:@"Multivariable Calculus" forKey:@"MULTIVAR CALC & MATRIX AL"];
	[classNames setObject:@"Signals & Systems" forKey:@"SIGNALS & SYSTEMS"];
	[classNames setObject:@"Drugs" forKey:@"DRUGS SOCIETY & BEHAVIOR"];
	[classNames setObject:@"PD II" forKey:@"PROFESSIONAL DEVELOPMENT"];
	[classNames setObject:@"Intermediate Mechanics" forKey:@"INTERMEDIATE MECHANICS"];
	[classNames setObject:@"Advanced Calculus" forKey:@"ADVANCED CALCULUS"];
	[classNames setObject:@"Quantum Physics" forKey:@"QUANTUM PHYSICS"];
	[classNames setObject:@"Intro to Algorithms" forKey:@"INTRODUCTION TO ALGORITHM"];
	[classNames setObject:@"Religious Belief & Disbelief" forKey:@"RELIGIOUS BELIEF & DISBEL"];
	[classNames setObject:@"Intermediate Video" forKey:@"INTERMEDIATE VIDEO"];
	[classNames setObject:@"Programming Languages" forKey:@"PROGRAMMING LANGUAGES"];
	[classNames setObject:@"Machine Learning" forKey:@"MACHINE LEARNING"];
	[classNames setObject:@"Intro to AI" forKey:@"INTRO TO ARTIFICIAL INTE"];
	[classNames setObject:@"Quasars & Cosmology" forKey:@"QUASARS & COSMOLOGY"];
	[classNames setObject:@"A Passion for Physics" forKey:@"A PASSION FOR PHYSICS"];
	[classNames setObject:@"Computer Science I" forKey:@"COMPUTER SCIENCE I"];
	[classNames setObject:@"Modern Chemistry" forKey:@"MODERN TECHNIQUES IN CHEM"];
	[classNames setObject:@"Macroscopic Physical Chemistry" forKey:@"MACROSCOPIC PHYSICAL CHEM"];
	[classNames setObject:@"Transport Phenomena I" forKey:@"TRANSPORT PHENOMENA I"];
	[classNames setObject:@"ODEs and Dynamics" forKey:@"ORDINARY DIFFEQ AND DYNAM"];
	[classNames setObject:@"Intro to Biology" forKey:@"INTRODUCTION TO BIOLOGY"];
	[classNames setObject:@"Typography" forKey:@"TYPOGRAPHY"];
	[classNames setObject:@"Parallel Programming" forKey:@"PARALLEL PROGRAMMING"];
	[classNames setObject:@"Intro to Economics" forKey:@"INTRODUCTORY ECONOMICS"];
	[classNames setObject:@"Advanced Computer Graphics" forKey:@"ADVANCED COMPUTER GRAPHIC"];
	
	ci = 0;
	NSBitmapImageRep * bmap = [self bitmapImageRepForCachingDisplayInRect:[self visibleRect]];
	[self cacheDisplayInRect:[self visibleRect] toBitmapImageRep:bmap];
	[[bmap representationUsingType:NSPNGFileType properties:nil] writeToFile:@"/Users/hortont/Desktop/schedule.png" atomically:TRUE];
}

- (void)drawText:(NSString *)str withFont:(NSString *)fname atSize:(int)fsize inRect:(CGRect)rect fromCenterX:(int)xoff Y:(int)yoff align:(int)align opacity:(float)opac
{
	CGContextRef ctx = [[NSGraphicsContext currentContext] graphicsPort];
	
	CTFontRef font = CTFontCreateWithName(fname, fsize, NULL);

	// Create an attributed string
	CFStringRef keys[] = { kCTFontAttributeName, kCTForegroundColorAttributeName };
	CFTypeRef values[] = { font, CGColorCreateGenericGray(0,opac) };
	CFDictionaryRef attr = CFDictionaryCreate(NULL, (const void **)&keys, (const void **)&values,
						  sizeof(keys) / sizeof(keys[0]), &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
	CFAttributedStringRef attrString = CFAttributedStringCreate(NULL, str, attr);
	CFRelease(attr);
	
	NSLog(@"%@", str);
	
	CTLineRef line = CTLineCreateWithAttributedString(attrString);
	CGContextSetTextMatrix(ctx, CGAffineTransformIdentity);
	CGRect textSize = CTLineGetImageBounds(line, ctx);
	if(!align)
		CGContextSetTextPosition(ctx, rect.origin.x + (rect.size.width/2.0) - (textSize.size.width/2.0) + xoff,
		 							  rect.origin.y + (rect.size.height/2) - (textSize.size.height/2.0) + yoff);
	else
		CGContextSetTextPosition(ctx, rect.origin.x + xoff, rect.origin.y + yoff);
	
	CTLineDraw(line, ctx);

	// Clean up
	CFRelease(line);
	CFRelease(attrString);
	CFRelease(font);
}

- (void)drawClassBox:(CGRect)rect withColor:(NSColor *)col forClass:(NSXMLElement *)el period:(NSXMLElement *)period
{
	CGContextRef ctx = [[NSGraphicsContext currentContext] graphicsPort];
	
	CGContextSetInterpolationQuality(ctx, kCGInterpolationHigh);
	CGContextSetRenderingIntent(ctx, kCGRenderingIntentRelativeColorimetric);

	// Background rectangle
	
	CGContextSaveGState(ctx);
	CGContextSetRGBStrokeColor(ctx, 0.8, 0.8, 0.8, 1.0);
	CGContextAddRect(ctx, rect);
	CGContextSetShadowWithColor(ctx, CGSizeMake(0,0), 5, CGColorCreateGenericGray(0,1));
	CGContextStrokePath(ctx);
	CGContextRestoreGState(ctx);
	
	CGContextSaveGState(ctx);
	CGContextSetRGBFillColor(ctx, 1.0, 1.0, 1.0, 1.0);
	CGContextAddRect(ctx, rect);
	CGContextFillPath(ctx);
	CGContextRestoreGState(ctx);
	
	CGContextSaveGState(ctx);
	CGContextSetRGBStrokeColor(ctx, 0.5, 0.5, 0.5, 0.8);
	CGContextSetRGBFillColor(ctx, [col redComponent], 
								  [col greenComponent],
								  [col blueComponent], 0.8);
	CGContextAddRect(ctx, rect);
	CGContextFillPath(ctx);
	CGContextAddRect(ctx, rect);
	CGContextStrokePath(ctx);
	CGContextRestoreGState(ctx);
	
	// Highlight rectangle
	
	CGContextSaveGState(ctx);
	CGContextAddRect(ctx, rect);
	CGContextClip(ctx);
	
	CGFloat locations[2] = { 0.0, 1.0 };
	CGFloat components[8] = { 1.0, 1.0, 1.0, 0.7,
	                          1.0, 1.0, 1.0, 0.0 };
	CGColorSpaceRef myColorspace = CGColorSpaceCreateWithName(kCGColorSpaceGenericRGB);
	CGGradientRef myGradient = CGGradientCreateWithColorComponents(myColorspace, components, locations, 2);
	CGPoint myStartPoint, myEndPoint;
	myStartPoint.x = 0.0;
	myStartPoint.y = rect.origin.y + rect.size.height;
	myEndPoint.x = 0.0;
	myEndPoint.y = rect.origin.y;
	CGContextDrawLinearGradient (ctx, myGradient, myStartPoint, myEndPoint, 0);
	CGContextRestoreGState(ctx);
	
	// Text Fields
	
	NSXMLElement * pel = [el parent];
	NSString * classid = [NSString stringWithFormat:@"%@-%02d",
											[[pel attributeForName:@"number"] objectValue],
											[[[el attributeForName:@"number"] objectValue] intValue]];
											
	NSString * name = [[pel attributeForName:@"name"] objectValue];
	NSString * modName = [classNames objectForKey:name];
	
	if(modName)
		name = modName;
	
	NSString * prof = [[period attributeForName:@"professor"] objectValue];
	NSString * classType = [[period attributeForName:@"type"] objectValue];
	
	prof = [roomNames objectAtIndex:ci++];
	NSLog(@"%i", ci);
	
	[self drawText:name withFont:@"Gill Sans" atSize:14 inRect:rect fromCenterX:0 Y:12 align:FALSE opacity:1.0];
	[self drawText:prof withFont:@"Gill Sans Light" atSize:12 inRect:rect fromCenterX:0 Y:-7 align:FALSE opacity:1.0];
	[self drawText:classid withFont:@"Gill Sans" atSize:9 inRect:rect fromCenterX:3 Y:5 align:TRUE opacity:1.0];
	
	if([classType isEqualToString:@"recitation"])
		[self drawText:@"REC" withFont:@"Gill Sans Bold" atSize:11 inRect:rect fromCenterX:3 Y:(rect.size.height - 11) align:TRUE opacity:0.4];
	if([classType isEqualToString:@"lab"])
		[self drawText:@"LAB" withFont:@"Gill Sans Bold" atSize:11 inRect:rect fromCenterX:3 Y:(rect.size.height - 11) align:TRUE opacity:0.4];
}

float convertTime(NSString * timeStr)
{
	float time = 0;
	
	if([timeStr hasSuffix:@"PM"])
		time = 12;
	
	NSArray * parts = [timeStr componentsSeparatedByString:@":"];
	time += [[parts objectAtIndex:0] intValue];
	
	if(time >= 24)
		time -= 12;
	
	time += [[parts objectAtIndex:1] intValue] / 60.0;
	
	return time;
}

- (void)drawRect:(NSRect)rect
{
    [[NSColor whiteColor] setFill];
    NSRectFill(rect);
	ci = 0;
	
	int hoursWidth = 60;

	NSRect bigRect = rect;	
	rect.size.height -= hoursWidth;
	
	int dayWidth = (rect.size.width - hoursWidth) / 5;
	int dayNum;
	
	int earliestStart = 1000;
	int latestEnd = 0;
	
	for(NSXMLElement * currentClass in classes)
	{
		for(NSXMLElement * period in [currentClass children])
		{
			NSString * startTime = [[period attributeForName:@"starts"] objectValue];
			NSString * endTime = [[period attributeForName:@"ends"] objectValue];
			
			float startTimeNum = convertTime(startTime);
			float endTimeNum = convertTime(endTime);
			
			if(startTimeNum < earliestStart)
				earliestStart = startTimeNum;
			if(endTimeNum > latestEnd)
				latestEnd = endTimeNum;
		}
	}
	
	float dayLength = latestEnd - earliestStart + 1.0;
	float dayStart = earliestStart;
	
	float hourHeight = rect.size.height / dayLength;
	
	CGContextRef ctx = [[NSGraphicsContext currentContext] graphicsPort];
	NSDictionary * attr = [[NSDictionary alloc] initWithObjectsAndKeys:
                        [NSFont fontWithName:@"Gill Sans" size:42], NSFontAttributeName, nil];
	int i;
	for(i = 0; i < dayLength; i++)
	{
		int chour = (int)ceil(dayStart + i);
		int loc = rect.size.height - (i*hourHeight) - 4;
		
		CGContextMoveToPoint(ctx, 0, loc);
		CGContextAddLineToPoint(ctx, rect.size.width, loc);
		CGContextSetRGBStrokeColor(ctx, 0, 0, 0, 0.3);
		CGContextStrokePath(ctx);
		
		[[NSString stringWithFormat:@"%d",chour > 12 ? chour - 12 : chour] drawAtPoint:NSMakePoint(5,loc - 26) withAttributes:attr];
	}
	
	int currentColor = 0;
	
	for(NSXMLElement * currentClass in classes)
	{
		for(NSXMLElement * period in [currentClass children])
		{
			NSString * startTime = [[period attributeForName:@"starts"] objectValue];
			NSString * endTime = [[period attributeForName:@"ends"] objectValue];
			for(NSString * day in [[[period attributeForName:@"days"] objectValue] componentsSeparatedByString:@","])
			{
				if([day isEqualToString:@"mon"])
					dayNum = 0;
				else if([day isEqualToString:@"tue"])
					dayNum = 1;
				else if([day isEqualToString:@"wed"])
					dayNum = 2;
				else if([day isEqualToString:@"thu"])
					dayNum = 3;
				else if([day isEqualToString:@"fri"])
					dayNum = 4;
			
				float startTimeNum = convertTime(startTime) - dayStart;
				float endTimeNum = convertTime(endTime) - dayStart;
			
				[self drawClassBox:CGRectInset(CGRectMake((dayWidth * dayNum) + hoursWidth,
											  rect.size.height - (startTimeNum*hourHeight) - ((endTimeNum - startTimeNum)*hourHeight),
											  dayWidth,
											(endTimeNum - startTimeNum)*hourHeight), 5, 5)
						 withColor:[colors objectAtIndex:currentColor]
						  forClass:currentClass
							period:period];
			}
		}
		
		currentColor++;
	}
	
	attr = [[NSDictionary alloc] initWithObjectsAndKeys:
                        [NSFont fontWithName:@"Gill Sans Light" size:32], NSFontAttributeName, nil];
	NSRect br = [@"Tim" boundingRectWithSize:bigRect.size options:0 attributes:attr];
	[@"Tim" drawAtPoint:NSMakePoint((bigRect.size.width/2)-(br.size.width/2),bigRect.size.height - 40) withAttributes:attr];
}

@end
