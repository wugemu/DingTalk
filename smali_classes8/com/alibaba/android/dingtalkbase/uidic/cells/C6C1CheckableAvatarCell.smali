.class public Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;
.super Lcom/alibaba/android/dingtalkbase/uidic/cells/CheckableCell;
.source "C6C1CheckableAvatarCell.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/CheckableCell;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/CheckableCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/CheckableCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 60
    sget v4, Lcig$f;->cell_left_avatar:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 61
    .local v0, "avatarImageView":Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    sget v4, Lcig$l;->C6C1CheckableAvatarCell_imageSize:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 62
    sget v4, Lcig$l;->C6C1CheckableAvatarCell_imageSize:I

    invoke-virtual {p1, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-static {v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;->fromValue(I)Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

    move-result-object v3

    .line 63
    .local v3, "iconSize":Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;FLcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;)V

    .line 64
    const-string/jumbo v4, ""

    invoke-virtual {p0, v4, v8, v8}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 70
    .end local v3    # "iconSize":Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;
    :goto_0
    sget v4, Lcig$l;->C6C1CheckableAvatarCell_drawableLeftTitle:I

    invoke-virtual {p1, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 71
    .local v1, "drawableLeft":I
    sget v4, Lcig$l;->C6C1CheckableAvatarCell_drawableRightTitle:I

    invoke-virtual {p1, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 72
    .local v2, "drawableRight":I
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v5, Lcig$f;->cell_title:I

    sget v6, Lcig$l;->C6C1CheckableAvatarCell_titleSize:I

    invoke-virtual {p1, v6, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(IF)V

    .line 73
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v5, Lcig$f;->cell_title:I

    sget v6, Lcig$l;->C6C1CheckableAvatarCell_titleColor:I

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILandroid/content/res/ColorStateList;)V

    .line 74
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v5, Lcig$f;->cell_title:I

    sget v6, Lcig$l;->C6C1CheckableAvatarCell_title:I

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILjava/lang/String;)V

    .line 75
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v5, Lcig$f;->cell_title:I

    invoke-virtual {v4, v5, v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(III)V

    .line 77
    sget v4, Lcig$l;->C6C1CheckableAvatarCell_drawableLeftContent:I

    invoke-virtual {p1, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 78
    sget v4, Lcig$l;->C6C1CheckableAvatarCell_drawableRightContent:I

    invoke-virtual {p1, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 79
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v5, Lcig$f;->cell_content:I

    sget v6, Lcig$l;->C6C1CheckableAvatarCell_contentSize:I

    invoke-virtual {p1, v6, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(IF)V

    .line 80
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v5, Lcig$f;->cell_content:I

    sget v6, Lcig$l;->C6C1CheckableAvatarCell_contentColor:I

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILandroid/content/res/ColorStateList;)V

    .line 81
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v5, Lcig$f;->cell_content:I

    sget v6, Lcig$l;->C6C1CheckableAvatarCell_content:I

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILjava/lang/String;)V

    .line 82
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v5, Lcig$f;->cell_content:I

    invoke-virtual {v4, v5, v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(III)V

    .line 84
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v5, Lcig$f;->cell_right_image:I

    sget v6, Lcig$l;->C6C1CheckableAvatarCell_rightImage:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {v4, v5, v6, v8, v8}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(IILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 85
    return-void

    .line 66
    .end local v1    # "drawableLeft":I
    .end local v2    # "drawableRight":I
    :cond_0
    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setTextSize(F)V

    .line 67
    sget v4, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->c:I

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setTFSImageSize(I)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V
    .locals 1
    .param p1, "nick"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;
    .param p3, "parent"    # Landroid/widget/AbsListView;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 200
    return-void
.end method

.method protected getLayout()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lcig$h;->layout_cell_c6c1:I

    return v0
.end method

.method protected getStyleable()[I
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcig$l;->C6C1CheckableAvatarCell:[I

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v4, 0x8

    .line 124
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->getPaddingRight()I

    move-result v1

    .line 126
    .local v1, "tempWidth":I
    sget v3, Lcig$f;->cell_right_image:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a(I)Landroid/view/View;

    move-result-object v2

    .line 127
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 128
    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a(Landroid/view/View;)I

    move-result v3

    add-int/2addr v1, v3

    .line 129
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->b(I)I

    move-result v0

    .line 130
    .local v0, "currentTop":I
    sub-int v3, p4, p2

    sub-int/2addr v3, v1

    invoke-virtual {p0, v2, v3, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a(Landroid/view/View;II)V

    .line 133
    .end local v0    # "currentTop":I
    :cond_0
    sget v3, Lcig$f;->cell_indicator:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a(I)Landroid/view/View;

    move-result-object v2

    .line 134
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 135
    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a(Landroid/view/View;)I

    move-result v3

    add-int/2addr v1, v3

    .line 136
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->b(I)I

    move-result v0

    .line 137
    .restart local v0    # "currentTop":I
    sub-int v3, p4, p2

    sub-int/2addr v3, v1

    invoke-virtual {p0, v2, v3, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a(Landroid/view/View;II)V

    .line 140
    .end local v0    # "currentTop":I
    :cond_1
    sget v3, Lcig$f;->cell_content:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a(I)Landroid/view/View;

    move-result-object v2

    .line 141
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_2

    .line 142
    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a(Landroid/view/View;)I

    move-result v3

    add-int/2addr v1, v3

    .line 143
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->b(I)I

    move-result v0

    .line 144
    .restart local v0    # "currentTop":I
    sub-int v3, p4, p2

    sub-int/2addr v3, v1

    invoke-virtual {p0, v2, v3, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a(Landroid/view/View;II)V

    .line 147
    .end local v0    # "currentTop":I
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->getPaddingLeft()I

    move-result v1

    .line 148
    sget v3, Lcig$f;->cell_checkbox:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a(I)Landroid/view/View;

    move-result-object v2

    .line 149
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_3

    .line 150
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->b(I)I

    move-result v0

    .line 151
    .restart local v0    # "currentTop":I
    invoke-virtual {p0, v2, v1, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a(Landroid/view/View;II)V

    .line 152
    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a(Landroid/view/View;)I

    move-result v3

    add-int/2addr v1, v3

    .line 155
    .end local v0    # "currentTop":I
    :cond_3
    sget v3, Lcig$f;->cell_left_avatar:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a(I)Landroid/view/View;

    move-result-object v2

    .line 156
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_4

    .line 157
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->b(I)I

    move-result v0

    .line 158
    .restart local v0    # "currentTop":I
    invoke-virtual {p0, v2, v1, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a(Landroid/view/View;II)V

    .line 159
    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a(Landroid/view/View;)I

    move-result v3

    add-int/2addr v1, v3

    .line 162
    .end local v0    # "currentTop":I
    :cond_4
    sget v3, Lcig$f;->cell_title:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a(I)Landroid/view/View;

    move-result-object v2

    .line 163
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_5

    .line 164
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->b(I)I

    move-result v0

    .line 165
    .restart local v0    # "currentTop":I
    invoke-virtual {p0, v2, v1, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a(Landroid/view/View;II)V

    .line 167
    .end local v0    # "currentTop":I
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->setContentCoordinate(I)V

    .line 168
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 93
    sget v0, Lcig$f;->cell_right_image:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a(I)Landroid/view/View;

    move-result-object v1

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->c(Landroid/view/View;IIII)Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    move-result-object v12

    .line 1166
    .local v12, "size":Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;
    iget v7, v12, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->a:I

    .line 1174
    .local v7, "widthUsed":I
    iget v11, v12, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->b:I

    .line 98
    .local v11, "heightUsed":I
    sget v0, Lcig$f;->cell_indicator:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a(I)Landroid/view/View;

    move-result-object v5

    move-object v4, p0

    move v6, p1

    move v8, p2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->c(Landroid/view/View;IIII)Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    move-result-object v12

    .line 2166
    iget v0, v12, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->a:I

    .line 100
    add-int/2addr v7, v0

    .line 2174
    iget v0, v12, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->b:I

    .line 101
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 103
    sget v0, Lcig$f;->cell_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a(I)Landroid/view/View;

    move-result-object v5

    move-object v4, p0

    move v6, p1

    move v8, p2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a(Landroid/view/View;IIII)I

    move-result v0

    add-int/2addr v7, v0

    .line 106
    sget v0, Lcig$f;->cell_checkbox:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a(I)Landroid/view/View;

    move-result-object v5

    move-object v4, p0

    move v6, p1

    move v8, p2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a(Landroid/view/View;IIII)I

    move-result v0

    add-int/2addr v7, v0

    .line 109
    sget v0, Lcig$f;->cell_left_avatar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a(I)Landroid/view/View;

    move-result-object v5

    move-object v4, p0

    move v6, p1

    move v8, p2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->c(Landroid/view/View;IIII)Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    move-result-object v12

    .line 3166
    iget v0, v12, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->a:I

    .line 111
    add-int/2addr v7, v0

    .line 3174
    iget v0, v12, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->b:I

    .line 112
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 114
    sget v0, Lcig$f;->cell_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a(I)Landroid/view/View;

    move-result-object v5

    move-object v4, p0

    move v6, p1

    move v8, p2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->b(Landroid/view/View;IIII)I

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 117
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v11

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->getPaddingBottom()I

    move-result v1

    add-int v10, v0, v1

    .line 118
    .local v10, "heightSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0, v0, v10}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->setMeasuredDimension(II)V

    .line 119
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 183
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_content:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILjava/lang/String;)V

    .line 184
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 171
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_title:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILjava/lang/String;)V

    .line 172
    return-void
.end method
