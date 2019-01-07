.class public Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;
.super Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;
.source "C2A2AvatarCell.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/res/TypedArray;)V
    .locals 10
    .param p1, "t"    # Landroid/content/res/TypedArray;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/high16 v9, -0x40800000    # -1.0f

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 59
    sget v4, Lcig$f;->cell_left_avatar:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 60
    .local v0, "avatarImageView":Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    sget v4, Lcig$l;->C2A2AvatarCell_imageSize:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    sget v4, Lcig$l;->C2A2AvatarCell_imageSize:I

    invoke-virtual {p1, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-static {v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;->fromValue(I)Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

    move-result-object v3

    .line 62
    .local v3, "iconSize":Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;FLcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;)V

    .line 63
    const-string/jumbo v4, ""

    .line 1219
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    invoke-virtual {v5, v4, v8, v8}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 69
    .end local v3    # "iconSize":Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;
    :goto_0
    sget v4, Lcig$l;->C2A2AvatarCell_drawableLeftTitle:I

    invoke-virtual {p1, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 70
    .local v1, "drawableLeft":I
    sget v4, Lcig$l;->C2A2AvatarCell_drawableRightTitle:I

    invoke-virtual {p1, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 71
    .local v2, "drawableRight":I
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v5, Lcig$f;->cell_title:I

    sget v6, Lcig$l;->C2A2AvatarCell_titleSize:I

    invoke-virtual {p1, v6, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(IF)V

    .line 72
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v5, Lcig$f;->cell_title:I

    sget v6, Lcig$l;->C2A2AvatarCell_titleColor:I

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILandroid/content/res/ColorStateList;)V

    .line 73
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v5, Lcig$f;->cell_title:I

    sget v6, Lcig$l;->C2A2AvatarCell_title:I

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILjava/lang/String;)V

    .line 74
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v5, Lcig$f;->cell_title:I

    invoke-virtual {v4, v5, v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(III)V

    .line 76
    sget v4, Lcig$l;->C2A2AvatarCell_drawableLeftSubTitle:I

    invoke-virtual {p1, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 77
    sget v4, Lcig$l;->C2A2AvatarCell_drawableRightSubTitle:I

    invoke-virtual {p1, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 78
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v5, Lcig$f;->cell_subTitle:I

    sget v6, Lcig$l;->C2A2AvatarCell_subTitleSize:I

    invoke-virtual {p1, v6, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(IF)V

    .line 79
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v5, Lcig$f;->cell_subTitle:I

    sget v6, Lcig$l;->C2A2AvatarCell_subTitleColor:I

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILandroid/content/res/ColorStateList;)V

    .line 80
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v5, Lcig$f;->cell_subTitle:I

    sget v6, Lcig$l;->C2A2AvatarCell_subTitle:I

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILjava/lang/String;)V

    .line 81
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v5, Lcig$f;->cell_subTitle:I

    invoke-virtual {v4, v5, v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(III)V

    .line 83
    sget v4, Lcig$l;->C2A2AvatarCell_drawableLeftContent:I

    invoke-virtual {p1, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 84
    sget v4, Lcig$l;->C2A2AvatarCell_drawableRightContent:I

    invoke-virtual {p1, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 85
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v5, Lcig$f;->cell_content:I

    sget v6, Lcig$l;->C2A2AvatarCell_contentSize:I

    invoke-virtual {p1, v6, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(IF)V

    .line 86
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v5, Lcig$f;->cell_content:I

    sget v6, Lcig$l;->C2A2AvatarCell_contentColor:I

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILandroid/content/res/ColorStateList;)V

    .line 87
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v5, Lcig$f;->cell_content:I

    sget v6, Lcig$l;->C2A2AvatarCell_content:I

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILjava/lang/String;)V

    .line 88
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v5, Lcig$f;->cell_content:I

    invoke-virtual {v4, v5, v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(III)V

    .line 90
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v5, Lcig$f;->cell_right_image:I

    sget v6, Lcig$l;->C2A2AvatarCell_rightImage:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {v4, v5, v6, v8, v8}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(IILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 91
    return-void

    .line 65
    .end local v1    # "drawableLeft":I
    .end local v2    # "drawableRight":I
    :cond_0
    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setTextSize(F)V

    .line 66
    sget v4, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->c:I

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setTFSImageSize(I)V

    goto/16 :goto_0
.end method

.method protected getLayout()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lcig$h;->layout_cell_c2a2:I

    return v0
.end method

.method protected getStyleable()[I
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcig$l;->C2A2AvatarCell:[I

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v6, 0x8

    .line 126
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->getPaddingRight()I

    move-result v2

    .line 128
    .local v2, "tempWidth":I
    sget v4, Lcig$f;->cell_right_image:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a(I)Landroid/view/View;

    move-result-object v3

    .line 129
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_0

    .line 130
    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    .line 131
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->b(I)I

    move-result v0

    .line 132
    .local v0, "currentTop":I
    sub-int v4, p4, p2

    sub-int/2addr v4, v2

    invoke-virtual {p0, v3, v4, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a(Landroid/view/View;II)V

    .line 135
    .end local v0    # "currentTop":I
    :cond_0
    sget v4, Lcig$f;->cell_indicator:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a(I)Landroid/view/View;

    move-result-object v3

    .line 136
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_1

    .line 137
    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    .line 138
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->b(I)I

    move-result v0

    .line 139
    .restart local v0    # "currentTop":I
    sub-int v4, p4, p2

    sub-int/2addr v4, v2

    invoke-virtual {p0, v3, v4, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a(Landroid/view/View;II)V

    .line 142
    .end local v0    # "currentTop":I
    :cond_1
    sget v4, Lcig$f;->cell_content:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a(I)Landroid/view/View;

    move-result-object v3

    .line 143
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_2

    .line 144
    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    .line 145
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->b(I)I

    move-result v0

    .line 146
    .restart local v0    # "currentTop":I
    sub-int v4, p4, p2

    sub-int/2addr v4, v2

    invoke-virtual {p0, v3, v4, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a(Landroid/view/View;II)V

    .line 149
    .end local v0    # "currentTop":I
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->getPaddingLeft()I

    move-result v2

    .line 150
    sget v4, Lcig$f;->cell_left_avatar:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a(I)Landroid/view/View;

    move-result-object v3

    .line 151
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_3

    .line 152
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->b(I)I

    move-result v0

    .line 153
    .restart local v0    # "currentTop":I
    invoke-virtual {p0, v3, v2, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a(Landroid/view/View;II)V

    .line 154
    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    .line 157
    .end local v0    # "currentTop":I
    :cond_3
    sget v4, Lcig$f;->cell_title:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a(I)Landroid/view/View;

    move-result-object v3

    .line 158
    sget v4, Lcig$f;->cell_subTitle:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a(I)Landroid/view/View;

    move-result-object v1

    .line 159
    .local v1, "subTitleView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_6

    .line 160
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->getMeasuredHeight()I

    move-result v4

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->b(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v4, v5

    .line 161
    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->b(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v4, v5

    shr-int/lit8 v0, v4, 0x1

    .line 166
    .restart local v0    # "currentTop":I
    :goto_0
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_4

    .line 167
    invoke-virtual {p0, v3, v2, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a(Landroid/view/View;II)V

    .line 170
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_5

    .line 171
    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->b(Landroid/view/View;)I

    move-result v4

    add-int/2addr v0, v4

    .line 172
    invoke-virtual {p0, v1, v2, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a(Landroid/view/View;II)V

    .line 175
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->setContentCoordinate(I)V

    .line 176
    return-void

    .line 163
    .end local v0    # "currentTop":I
    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->b(I)I

    move-result v0

    .restart local v0    # "currentTop":I
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 100
    sget v0, Lcig$f;->cell_right_image:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a(I)Landroid/view/View;

    move-result-object v1

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->c(Landroid/view/View;IIII)Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    move-result-object v11

    .line 2166
    .local v11, "size":Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;
    iget v7, v11, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->a:I

    .line 2174
    .local v7, "widthUsed":I
    iget v10, v11, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->b:I

    .line 104
    .local v10, "maxHeight":I
    sget v0, Lcig$f;->cell_indicator:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a(I)Landroid/view/View;

    move-result-object v5

    move-object v4, p0

    move v6, p1

    move v8, p2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->c(Landroid/view/View;IIII)Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    move-result-object v11

    .line 3166
    iget v0, v11, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->a:I

    .line 105
    add-int/2addr v7, v0

    .line 3174
    iget v0, v11, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->b:I

    .line 106
    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 108
    sget v0, Lcig$f;->cell_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a(I)Landroid/view/View;

    move-result-object v5

    move-object v4, p0

    move v6, p1

    move v8, p2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a(Landroid/view/View;IIII)I

    move-result v0

    add-int/2addr v7, v0

    .line 110
    sget v0, Lcig$f;->cell_left_avatar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a(I)Landroid/view/View;

    move-result-object v5

    move-object v4, p0

    move v6, p1

    move v8, p2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->c(Landroid/view/View;IIII)Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    move-result-object v11

    .line 4166
    iget v0, v11, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->a:I

    .line 111
    add-int/2addr v7, v0

    .line 4174
    iget v0, v11, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->b:I

    .line 112
    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 114
    sget v0, Lcig$f;->cell_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a(I)Landroid/view/View;

    move-result-object v5

    move-object v4, p0

    move v6, p1

    move v8, p2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->b(Landroid/view/View;IIII)I

    move-result v9

    .line 116
    .local v9, "heightUsed":I
    sget v0, Lcig$f;->cell_subTitle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a(I)Landroid/view/View;

    move-result-object v5

    move-object v4, p0

    move v6, p1

    move v8, p2

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->b(Landroid/view/View;IIII)I

    move-result v0

    add-int/2addr v9, v0

    .line 117
    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 119
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v10

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->getPaddingBottom()I

    move-result v1

    add-int v10, v0, v1

    .line 120
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0, v0, v10}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->setMeasuredDimension(II)V

    .line 121
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 203
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_content:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILjava/lang/String;)V

    .line 204
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 191
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_subTitle:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILjava/lang/String;)V

    .line 192
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C2A2AvatarCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_title:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILjava/lang/String;)V

    .line 180
    return-void
.end method
