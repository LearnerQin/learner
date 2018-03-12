//
//  QinPrefixHeader.h
//  简易微信
//
//  Created by 秦 on 2018/3/5.
//  Copyright © 2018年 qiang. All rights reserved.
//

#ifndef QinPrefixHeader_h
#define QinPrefixHeader_h

#ifdef DEBUG
#define QinLog(format,...)  NSLog(format,##__VA_ARGS__)
#else
#deifne QinLog(format,...)
#endif

#import "QinConstants.h"


#endif /* QinPrefixHeader_h */
