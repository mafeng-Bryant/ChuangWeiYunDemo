//
//  UserInfoCell.m
//  cw
//
//  Created by yunlai on 13-8-31.
//
//

#import "UserInfoCell.h"

@implementation UserInfoCell

@synthesize taglabel=_taglabel;
@synthesize separatorline=_separatorline;
@synthesize contentlable=_contentlable;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {

        UILabel *line=[[UILabel alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, 1)];
        line.backgroundColor=[UIColor colorWithRed:213/255.0 green:213/255.0 blue:213/255.0 alpha:1];
        [self.contentView addSubview:line];
        RELEASE_SAFE(line);
        
        _taglabel=[[UILabel alloc]initWithFrame:CGRectMake(5, 5, 60, 40)];
        _taglabel.textColor=[UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:1];
        _taglabel.textAlignment=NSTextAlignmentCenter;
        _taglabel.font=[UIFont systemFontOfSize:15];
        [self.contentView addSubview:_taglabel];
        
        _separatorline=[[UILabel alloc]initWithFrame:CGRectMake(70, 15, 1, 20)];
        _separatorline.backgroundColor=[UIColor colorWithRed:213/255.0 green:213/255.0 blue:213/255.0 alpha:1];
         [self.contentView addSubview:_separatorline];
        
        _contentlable=[[UITextField alloc]initWithFrame:CGRectMake(90, 5, 200, 40)];
        _contentlable.font=[UIFont systemFontOfSize:15];
        _contentlable.textColor=[UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:1];
        [_contentlable setClearButtonMode:UITextFieldViewModeWhileEditing];
        [_contentlable setContentVerticalAlignment:UIControlContentVerticalAlignmentCenter];
         [self.contentView addSubview:_contentlable];
        
    }
    return self;
}

- (void)dealloc
{
    RELEASE_SAFE(_taglabel);
    RELEASE_SAFE(_contentlable);
    RELEASE_SAFE(_separatorline);
    [super dealloc];
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
