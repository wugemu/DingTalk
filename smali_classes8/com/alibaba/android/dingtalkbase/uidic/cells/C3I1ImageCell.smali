.class public Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;
.super Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;
.source "C3I1ImageCell.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 3
    .param p1, "textSize"    # I
    .param p2, "textColor"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 162
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_title:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, p2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->b(III)V

    .line 163
    return-void
.end method

.method public final a(ILjava/lang/String;Landroid/widget/AbsListView;)V
    .locals 3
    .param p1, "drawable"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "parent"    # Landroid/widget/AbsListView;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 186
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_left_image:I

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(IILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 187
    return-void
.end method

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
    sget v3, Lcig$l;->C3I1ImageCell_imageSize:I

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    sget v3, Lcig$l;->C3I1ImageCell_imageSize:I

    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;->fromValue(I)Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

    move-result-object v2

    .line 62
    .local v2, "size":Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v3, Lcig$f;->cell_left_image:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v4, v3, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(Landroid/widget/ImageView;Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;)V

    .line 64
    .end local v2    # "size":Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;
    :cond_0
    sget v3, Lcig$l;->C3I1ImageCell_leftImage:I

    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {p0, v3, v7, v7}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a(ILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 66
    sget v3, Lcig$l;->C3I1ImageCell_drawableLeftTitle:I

    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 67
    .local v0, "drawableLeft":I
    sget v3, Lcig$l;->C3I1ImageCell_drawableRightTitle:I

    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 68
    .local v1, "drawableRight":I
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v4, Lcig$f;->cell_title:I

    sget v5, Lcig$l;->C3I1ImageCell_titleSize:I

    invoke-virtual {p1, v5, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(IF)V

    .line 69
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v4, Lcig$f;->cell_title:I

    sget v5, Lcig$l;->C3I1ImageCell_titleColor:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILandroid/content/res/ColorStateList;)V

    .line 70
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v4, Lcig$f;->cell_title:I

    sget v5, Lcig$l;->C3I1ImageCell_title:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILjava/lang/String;)V

    .line 71
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v4, Lcig$f;->cell_title:I

    invoke-virtual {v3, v4, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(III)V

    .line 73
    sget v3, Lcig$l;->C3I1ImageCell_drawableLeftContent:I

    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 74
    sget v3, Lcig$l;->C3I1ImageCell_drawableRightContent:I

    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 75
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v4, Lcig$f;->cell_content:I

    sget v5, Lcig$l;->C3I1ImageCell_contentSize:I

    invoke-virtual {p1, v5, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(IF)V

    .line 76
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v4, Lcig$f;->cell_content:I

    sget v5, Lcig$l;->C3I1ImageCell_contentColor:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILandroid/content/res/ColorStateList;)V

    .line 77
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v4, Lcig$f;->cell_content:I

    sget v5, Lcig$l;->C3I1ImageCell_content:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILjava/lang/String;)V

    .line 78
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v4, Lcig$f;->cell_content:I

    invoke-virtual {v3, v4, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(III)V

    .line 80
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v4, Lcig$f;->cell_right_image:I

    sget v5, Lcig$l;->C3I1ImageCell_rightImage:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {v3, v4, v5, v7, v7}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(IILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 81
    return-void
.end method

.method public final b(II)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "right"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 166
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_title:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(III)V

    .line 167
    return-void
.end method

.method public final b(ILjava/lang/String;Landroid/widget/AbsListView;)V
    .locals 3
    .param p1, "drawable"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "parent"    # Landroid/widget/AbsListView;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 194
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_right_image:I

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(IILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 195
    return-void
.end method

.method protected getLayout()I
    .locals 1

    .prologue
    .line 50
    sget v0, Lcig$h;->layout_cell_c3i1:I

    return v0
.end method

.method protected getStyleable()[I
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcig$l;->C3I1ImageCell:[I

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

    .line 117
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->getPaddingRight()I

    move-result v1

    .line 119
    .local v1, "tempWidth":I
    sget v3, Lcig$f;->cell_right_image:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a(I)Landroid/view/View;

    move-result-object v2

    .line 120
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 121
    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a(Landroid/view/View;)I

    move-result v3

    add-int/2addr v1, v3

    .line 122
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->b(I)I

    move-result v0

    .line 123
    .local v0, "currentTop":I
    sub-int v3, p4, p2

    sub-int/2addr v3, v1

    invoke-virtual {p0, v2, v3, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a(Landroid/view/View;II)V

    .line 126
    .end local v0    # "currentTop":I
    :cond_0
    sget v3, Lcig$f;->cell_indicator:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a(I)Landroid/view/View;

    move-result-object v2

    .line 127
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 128
    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a(Landroid/view/View;)I

    move-result v3

    add-int/2addr v1, v3

    .line 129
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->b(I)I

    move-result v0

    .line 130
    .restart local v0    # "currentTop":I
    sub-int v3, p4, p2

    sub-int/2addr v3, v1

    invoke-virtual {p0, v2, v3, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a(Landroid/view/View;II)V

    .line 133
    .end local v0    # "currentTop":I
    :cond_1
    sget v3, Lcig$f;->cell_content:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a(I)Landroid/view/View;

    move-result-object v2

    .line 134
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_2

    .line 135
    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a(Landroid/view/View;)I

    move-result v3

    add-int/2addr v1, v3

    .line 136
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->b(I)I

    move-result v0

    .line 137
    .restart local v0    # "currentTop":I
    sub-int v3, p4, p2

    sub-int/2addr v3, v1

    invoke-virtual {p0, v2, v3, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a(Landroid/view/View;II)V

    .line 140
    .end local v0    # "currentTop":I
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->getPaddingLeft()I

    move-result v1

    .line 141
    sget v3, Lcig$f;->cell_left_image:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a(I)Landroid/view/View;

    move-result-object v2

    .line 142
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_3

    .line 143
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->b(I)I

    move-result v0

    .line 144
    .restart local v0    # "currentTop":I
    invoke-virtual {p0, v2, v1, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a(Landroid/view/View;II)V

    .line 145
    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a(Landroid/view/View;)I

    move-result v3

    add-int/2addr v1, v3

    .line 148
    .end local v0    # "currentTop":I
    :cond_3
    sget v3, Lcig$f;->cell_title:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a(I)Landroid/view/View;

    move-result-object v2

    .line 149
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_4

    .line 150
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->b(I)I

    move-result v0

    .line 151
    .restart local v0    # "currentTop":I
    invoke-virtual {p0, v2, v1, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a(Landroid/view/View;II)V

    .line 154
    .end local v0    # "currentTop":I
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->setContentCoordinate(I)V

    .line 155
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

    .line 89
    sget v0, Lcig$f;->cell_right_image:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a(I)Landroid/view/View;

    move-result-object v1

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->c(Landroid/view/View;IIII)Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    move-result-object v12

    .line 1166
    .local v12, "size":Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;
    iget v7, v12, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->a:I

    .line 1174
    .local v7, "widthUsed":I
    iget v11, v12, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->b:I

    .line 94
    .local v11, "heightUsed":I
    sget v0, Lcig$f;->cell_indicator:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a(I)Landroid/view/View;

    move-result-object v5

    move-object v4, p0

    move v6, p1

    move v8, p2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->c(Landroid/view/View;IIII)Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    move-result-object v12

    .line 2166
    iget v0, v12, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->a:I

    .line 96
    add-int/2addr v7, v0

    .line 2174
    iget v0, v12, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->b:I

    .line 97
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 99
    sget v0, Lcig$f;->cell_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a(I)Landroid/view/View;

    move-result-object v5

    move-object v4, p0

    move v6, p1

    move v8, p2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a(Landroid/view/View;IIII)I

    move-result v0

    add-int/2addr v7, v0

    .line 102
    sget v0, Lcig$f;->cell_left_image:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a(I)Landroid/view/View;

    move-result-object v5

    move-object v4, p0

    move v6, p1

    move v8, p2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->c(Landroid/view/View;IIII)Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    move-result-object v12

    .line 3166
    iget v0, v12, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->a:I

    .line 104
    add-int/2addr v7, v0

    .line 3174
    iget v0, v12, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->b:I

    .line 105
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 107
    sget v0, Lcig$f;->cell_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a(I)Landroid/view/View;

    move-result-object v5

    move-object v4, p0

    move v6, p1

    move v8, p2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->b(Landroid/view/View;IIII)I

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 110
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v11

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->getPaddingBottom()I

    move-result v1

    add-int v10, v0, v1

    .line 111
    .local v10, "heightSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0, v0, v10}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->setMeasuredDimension(II)V

    .line 112
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 170
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_content:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILjava/lang/String;)V

    .line 171
    return-void
.end method

.method public setLeftImage(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 190
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_left_image:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILandroid/graphics/drawable/Drawable;)V

    .line 191
    return-void
.end method

.method public setLeftImageOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 202
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_left_image:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->b(ILandroid/view/View$OnClickListener;)V

    .line 203
    return-void
.end method

.method public setLeftImageSize(Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;)V
    .locals 2
    .param p1, "size"    # Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 182
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v0, Lcig$f;->cell_left_image:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v0, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(Landroid/widget/ImageView;Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;)V

    .line 183
    return-void
.end method

.method public setRightImage(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 198
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_right_image:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILandroid/graphics/drawable/Drawable;)V

    .line 199
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_title:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILjava/lang/String;)V

    .line 159
    return-void
.end method
