.class public Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;
.super Lcom/alibaba/android/dingtalkbase/uidic/cells/CheckableCell;
.source "C7C2CheckableImageCell.java"


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
    .locals 9
    .param p1, "t"    # Landroid/content/res/TypedArray;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/high16 v8, -0x40800000    # -1.0f

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 60
    sget v3, Lcig$l;->C7C2CheckableImageCell_imageSize:I

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    sget v3, Lcig$l;->C7C2CheckableImageCell_imageSize:I

    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;->fromValue(I)Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

    move-result-object v2

    .line 62
    .local v2, "size":Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v3, Lcig$f;->cell_left_image:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v4, v3, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(Landroid/widget/ImageView;Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;)V

    .line 64
    .end local v2    # "size":Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;
    :cond_0
    sget v3, Lcig$l;->C7C2CheckableImageCell_leftImage:I

    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 1232
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v5, Lcig$f;->cell_left_image:I

    invoke-virtual {v4, v5, v3, v7, v7}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(IILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 66
    sget v3, Lcig$l;->C7C2CheckableImageCell_drawableLeftTitle:I

    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 67
    .local v0, "drawableLeft":I
    sget v3, Lcig$l;->C7C2CheckableImageCell_drawableRightTitle:I

    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 68
    .local v1, "drawableRight":I
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v4, Lcig$f;->cell_title:I

    sget v5, Lcig$l;->C7C2CheckableImageCell_titleSize:I

    invoke-virtual {p1, v5, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(IF)V

    .line 69
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v4, Lcig$f;->cell_title:I

    sget v5, Lcig$l;->C7C2CheckableImageCell_titleColor:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILandroid/content/res/ColorStateList;)V

    .line 70
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v4, Lcig$f;->cell_title:I

    sget v5, Lcig$l;->C7C2CheckableImageCell_title:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILjava/lang/String;)V

    .line 71
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v4, Lcig$f;->cell_title:I

    invoke-virtual {v3, v4, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(III)V

    .line 73
    sget v3, Lcig$l;->C7C2CheckableImageCell_drawableLeftSubTitle:I

    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 74
    sget v3, Lcig$l;->C7C2CheckableImageCell_drawableRightSubTitle:I

    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 75
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v4, Lcig$f;->cell_subTitle:I

    sget v5, Lcig$l;->C7C2CheckableImageCell_subTitleSize:I

    invoke-virtual {p1, v5, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(IF)V

    .line 76
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v4, Lcig$f;->cell_subTitle:I

    sget v5, Lcig$l;->C7C2CheckableImageCell_subTitleColor:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILandroid/content/res/ColorStateList;)V

    .line 77
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v4, Lcig$f;->cell_subTitle:I

    sget v5, Lcig$l;->C7C2CheckableImageCell_subTitle:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILjava/lang/String;)V

    .line 78
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v4, Lcig$f;->cell_subTitle:I

    invoke-virtual {v3, v4, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(III)V

    .line 80
    sget v3, Lcig$l;->C7C2CheckableImageCell_drawableLeftContent:I

    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 81
    sget v3, Lcig$l;->C7C2CheckableImageCell_drawableRightContent:I

    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 82
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v4, Lcig$f;->cell_content:I

    sget v5, Lcig$l;->C7C2CheckableImageCell_contentSize:I

    invoke-virtual {p1, v5, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(IF)V

    .line 83
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v4, Lcig$f;->cell_content:I

    sget v5, Lcig$l;->C7C2CheckableImageCell_contentColor:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILandroid/content/res/ColorStateList;)V

    .line 84
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v4, Lcig$f;->cell_content:I

    sget v5, Lcig$l;->C7C2CheckableImageCell_content:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILjava/lang/String;)V

    .line 85
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v4, Lcig$f;->cell_content:I

    invoke-virtual {v3, v4, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(III)V

    .line 87
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v4, Lcig$f;->cell_right_image:I

    sget v5, Lcig$l;->C7C2CheckableImageCell_rightImage:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {v3, v4, v5, v7, v7}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(IILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 88
    return-void
.end method

.method protected getLayout()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lcig$h;->layout_cell_c7c2:I

    return v0
.end method

.method protected getStyleable()[I
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcig$l;->C7C2CheckableImageCell:[I

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

    .line 132
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->getPaddingRight()I

    move-result v2

    .line 134
    .local v2, "tempWidth":I
    sget v4, Lcig$f;->cell_right_image:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a(I)Landroid/view/View;

    move-result-object v3

    .line 135
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_0

    .line 136
    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    .line 137
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->b(I)I

    move-result v0

    .line 138
    .local v0, "currentTop":I
    sub-int v4, p4, p2

    sub-int/2addr v4, v2

    invoke-virtual {p0, v3, v4, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a(Landroid/view/View;II)V

    .line 141
    .end local v0    # "currentTop":I
    :cond_0
    sget v4, Lcig$f;->cell_indicator:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a(I)Landroid/view/View;

    move-result-object v3

    .line 142
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_1

    .line 143
    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    .line 144
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->b(I)I

    move-result v0

    .line 145
    .restart local v0    # "currentTop":I
    sub-int v4, p4, p2

    sub-int/2addr v4, v2

    invoke-virtual {p0, v3, v4, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a(Landroid/view/View;II)V

    .line 148
    .end local v0    # "currentTop":I
    :cond_1
    sget v4, Lcig$f;->cell_content:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a(I)Landroid/view/View;

    move-result-object v3

    .line 149
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_2

    .line 150
    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    .line 151
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->b(I)I

    move-result v0

    .line 152
    .restart local v0    # "currentTop":I
    sub-int v4, p4, p2

    sub-int/2addr v4, v2

    invoke-virtual {p0, v3, v4, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a(Landroid/view/View;II)V

    .line 155
    .end local v0    # "currentTop":I
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->getPaddingLeft()I

    move-result v2

    .line 156
    sget v4, Lcig$f;->cell_checkbox:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a(I)Landroid/view/View;

    move-result-object v3

    .line 157
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_3

    .line 158
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->b(I)I

    move-result v0

    .line 159
    .restart local v0    # "currentTop":I
    invoke-virtual {p0, v3, v2, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a(Landroid/view/View;II)V

    .line 160
    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    .line 163
    .end local v0    # "currentTop":I
    :cond_3
    sget v4, Lcig$f;->cell_left_image:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a(I)Landroid/view/View;

    move-result-object v3

    .line 164
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_4

    .line 165
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->b(I)I

    move-result v0

    .line 166
    .restart local v0    # "currentTop":I
    invoke-virtual {p0, v3, v2, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a(Landroid/view/View;II)V

    .line 167
    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    .line 170
    .end local v0    # "currentTop":I
    :cond_4
    sget v4, Lcig$f;->cell_title:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a(I)Landroid/view/View;

    move-result-object v3

    .line 171
    sget v4, Lcig$f;->cell_subTitle:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a(I)Landroid/view/View;

    move-result-object v1

    .line 172
    .local v1, "subTitleView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_7

    .line 173
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->getMeasuredHeight()I

    move-result v4

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->b(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v4, v5

    .line 174
    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->b(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v4, v5

    shr-int/lit8 v0, v4, 0x1

    .line 179
    .restart local v0    # "currentTop":I
    :goto_0
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_5

    .line 180
    invoke-virtual {p0, v3, v2, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a(Landroid/view/View;II)V

    .line 183
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_6

    .line 184
    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->b(Landroid/view/View;)I

    move-result v4

    add-int/2addr v0, v4

    .line 185
    invoke-virtual {p0, v1, v2, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a(Landroid/view/View;II)V

    .line 188
    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->setContentCoordinate(I)V

    .line 189
    return-void

    .line 176
    .end local v0    # "currentTop":I
    :cond_7
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->b(I)I

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

    .line 97
    sget v0, Lcig$f;->cell_right_image:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a(I)Landroid/view/View;

    move-result-object v1

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->c(Landroid/view/View;IIII)Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    move-result-object v11

    .line 2166
    .local v11, "size":Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;
    iget v7, v11, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->a:I

    .line 2174
    .local v7, "widthUsed":I
    iget v10, v11, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->b:I

    .line 102
    .local v10, "maxHeight":I
    sget v0, Lcig$f;->cell_indicator:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a(I)Landroid/view/View;

    move-result-object v5

    move-object v4, p0

    move v6, p1

    move v8, p2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->c(Landroid/view/View;IIII)Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    move-result-object v11

    .line 3166
    iget v0, v11, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->a:I

    .line 104
    add-int/2addr v7, v0

    .line 3174
    iget v0, v11, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->b:I

    .line 105
    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 107
    sget v0, Lcig$f;->cell_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a(I)Landroid/view/View;

    move-result-object v5

    move-object v4, p0

    move v6, p1

    move v8, p2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a(Landroid/view/View;IIII)I

    move-result v0

    add-int/2addr v7, v0

    .line 110
    sget v0, Lcig$f;->cell_checkbox:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a(I)Landroid/view/View;

    move-result-object v5

    move-object v4, p0

    move v6, p1

    move v8, p2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a(Landroid/view/View;IIII)I

    move-result v0

    add-int/2addr v7, v0

    .line 113
    sget v0, Lcig$f;->cell_left_image:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a(I)Landroid/view/View;

    move-result-object v5

    move-object v4, p0

    move v6, p1

    move v8, p2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->c(Landroid/view/View;IIII)Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    move-result-object v11

    .line 4166
    iget v0, v11, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->a:I

    .line 115
    add-int/2addr v7, v0

    .line 4174
    iget v0, v11, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->b:I

    .line 116
    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 118
    sget v0, Lcig$f;->cell_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a(I)Landroid/view/View;

    move-result-object v5

    move-object v4, p0

    move v6, p1

    move v8, p2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->b(Landroid/view/View;IIII)I

    move-result v9

    .line 121
    .local v9, "heightUsed":I
    sget v0, Lcig$f;->cell_subTitle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a(I)Landroid/view/View;

    move-result-object v5

    move-object v4, p0

    move v6, p1

    move v8, p2

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->b(Landroid/view/View;IIII)I

    move-result v0

    add-int/2addr v9, v0

    .line 123
    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 125
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v10

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->getPaddingBottom()I

    move-result v1

    add-int v10, v0, v1

    .line 126
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0, v0, v10}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->setMeasuredDimension(II)V

    .line 127
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 216
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_content:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILjava/lang/String;)V

    .line 217
    return-void
.end method

.method public setLeftImageSize(Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;)V
    .locals 2
    .param p1, "size"    # Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 228
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v0, Lcig$f;->cell_left_image:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v0, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(Landroid/widget/ImageView;Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;)V

    .line 229
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 204
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_subTitle:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILjava/lang/String;)V

    .line 205
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 192
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C7C2CheckableImageCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_title:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILjava/lang/String;)V

    .line 193
    return-void
.end method
