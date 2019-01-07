.class public Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;
.super Lcom/alibaba/android/dingtalkbase/uidic/cells/CheckableCell;
.source "C5C2CheckableTextCell.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/CheckableCell;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/CheckableCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/CheckableCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/res/TypedArray;)V
    .locals 8
    .param p1, "t"    # Landroid/content/res/TypedArray;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v5, 0x0

    .line 59
    sget v2, Lcig$l;->C5C2CheckableTextCell_drawableLeftTitle:I

    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 60
    .local v0, "drawableLeft":I
    sget v2, Lcig$l;->C5C2CheckableTextCell_drawableRightTitle:I

    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 61
    .local v1, "drawableRight":I
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v3, Lcig$f;->cell_title:I

    sget v4, Lcig$l;->C5C2CheckableTextCell_titleSize:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(IF)V

    .line 62
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v3, Lcig$f;->cell_title:I

    sget v4, Lcig$l;->C5C2CheckableTextCell_titleColor:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILandroid/content/res/ColorStateList;)V

    .line 63
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v3, Lcig$f;->cell_title:I

    sget v4, Lcig$l;->C5C2CheckableTextCell_title:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILjava/lang/String;)V

    .line 64
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v3, Lcig$f;->cell_title:I

    invoke-virtual {v2, v3, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(III)V

    .line 66
    sget v2, Lcig$l;->C5C2CheckableTextCell_drawableLeftSubTitle:I

    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 67
    sget v2, Lcig$l;->C5C2CheckableTextCell_drawableRightSubTitle:I

    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 68
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v3, Lcig$f;->cell_subTitle:I

    sget v4, Lcig$l;->C5C2CheckableTextCell_subTitleSize:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(IF)V

    .line 69
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v3, Lcig$f;->cell_subTitle:I

    sget v4, Lcig$l;->C5C2CheckableTextCell_subTitleColor:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILandroid/content/res/ColorStateList;)V

    .line 70
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v3, Lcig$f;->cell_subTitle:I

    sget v4, Lcig$l;->C5C2CheckableTextCell_subTitle:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILjava/lang/String;)V

    .line 71
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v3, Lcig$f;->cell_subTitle:I

    invoke-virtual {v2, v3, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(III)V

    .line 73
    sget v2, Lcig$l;->C5C2CheckableTextCell_drawableLeftContent:I

    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 74
    sget v2, Lcig$l;->C5C2CheckableTextCell_drawableRightContent:I

    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 75
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v3, Lcig$f;->cell_content:I

    sget v4, Lcig$l;->C5C2CheckableTextCell_contentSize:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(IF)V

    .line 76
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v3, Lcig$f;->cell_content:I

    sget v4, Lcig$l;->C5C2CheckableTextCell_contentColor:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILandroid/content/res/ColorStateList;)V

    .line 77
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v3, Lcig$f;->cell_content:I

    sget v4, Lcig$l;->C5C2CheckableTextCell_content:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILjava/lang/String;)V

    .line 78
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v3, Lcig$f;->cell_content:I

    invoke-virtual {v2, v3, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(III)V

    .line 80
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v3, Lcig$f;->cell_right_image:I

    sget v4, Lcig$l;->C5C2CheckableTextCell_rightImage:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v2, v3, v4, v7, v7}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(IILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 81
    return-void
.end method

.method protected getLayout()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcig$h;->layout_cell_c5c2:I

    return v0
.end method

.method protected getStyleable()[I
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcig$l;->C5C2CheckableTextCell:[I

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

    .line 120
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->getPaddingRight()I

    move-result v2

    .line 122
    .local v2, "tempWidth":I
    sget v4, Lcig$f;->cell_right_image:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->a(I)Landroid/view/View;

    move-result-object v3

    .line 123
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_0

    .line 124
    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->a(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    .line 125
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->b(I)I

    move-result v0

    .line 126
    .local v0, "currentTop":I
    sub-int v4, p4, p2

    sub-int/2addr v4, v2

    invoke-virtual {p0, v3, v4, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->a(Landroid/view/View;II)V

    .line 129
    .end local v0    # "currentTop":I
    :cond_0
    sget v4, Lcig$f;->cell_indicator:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->a(I)Landroid/view/View;

    move-result-object v3

    .line 130
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_1

    .line 131
    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->a(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    .line 132
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->b(I)I

    move-result v0

    .line 133
    .restart local v0    # "currentTop":I
    sub-int v4, p4, p2

    sub-int/2addr v4, v2

    invoke-virtual {p0, v3, v4, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->a(Landroid/view/View;II)V

    .line 136
    .end local v0    # "currentTop":I
    :cond_1
    sget v4, Lcig$f;->cell_content:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->a(I)Landroid/view/View;

    move-result-object v3

    .line 137
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_2

    .line 138
    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->a(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    .line 139
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->b(I)I

    move-result v0

    .line 140
    .restart local v0    # "currentTop":I
    sub-int v4, p4, p2

    sub-int/2addr v4, v2

    invoke-virtual {p0, v3, v4, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->a(Landroid/view/View;II)V

    .line 143
    .end local v0    # "currentTop":I
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->getPaddingLeft()I

    move-result v2

    .line 144
    sget v4, Lcig$f;->cell_checkbox:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->a(I)Landroid/view/View;

    move-result-object v3

    .line 145
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_3

    .line 146
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->b(I)I

    move-result v0

    .line 147
    .restart local v0    # "currentTop":I
    invoke-virtual {p0, v3, v2, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->a(Landroid/view/View;II)V

    .line 148
    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->a(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    .line 151
    .end local v0    # "currentTop":I
    :cond_3
    sget v4, Lcig$f;->cell_title:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->a(I)Landroid/view/View;

    move-result-object v3

    .line 152
    sget v4, Lcig$f;->cell_subTitle:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->a(I)Landroid/view/View;

    move-result-object v1

    .line 153
    .local v1, "subTitleView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_6

    .line 154
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->getMeasuredHeight()I

    move-result v4

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->b(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v4, v5

    .line 155
    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->b(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v4, v5

    shr-int/lit8 v0, v4, 0x1

    .line 160
    .restart local v0    # "currentTop":I
    :goto_0
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_4

    .line 161
    invoke-virtual {p0, v3, v2, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->a(Landroid/view/View;II)V

    .line 164
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_5

    .line 165
    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->b(Landroid/view/View;)I

    move-result v4

    add-int/2addr v0, v4

    .line 166
    invoke-virtual {p0, v1, v2, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->a(Landroid/view/View;II)V

    .line 169
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->setContentCoordinate(I)V

    .line 170
    return-void

    .line 157
    .end local v0    # "currentTop":I
    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->b(I)I

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

    .line 90
    sget v0, Lcig$f;->cell_right_image:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->a(I)Landroid/view/View;

    move-result-object v1

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->c(Landroid/view/View;IIII)Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    move-result-object v11

    .line 1166
    .local v11, "size":Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;
    iget v7, v11, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->a:I

    .line 1174
    .local v7, "widthUsed":I
    iget v10, v11, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->b:I

    .line 95
    .local v10, "maxHeight":I
    sget v0, Lcig$f;->cell_indicator:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->a(I)Landroid/view/View;

    move-result-object v5

    move-object v4, p0

    move v6, p1

    move v8, p2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->c(Landroid/view/View;IIII)Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    move-result-object v11

    .line 2166
    iget v0, v11, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->a:I

    .line 97
    add-int/2addr v7, v0

    .line 2174
    iget v0, v11, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->b:I

    .line 98
    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 100
    sget v0, Lcig$f;->cell_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->a(I)Landroid/view/View;

    move-result-object v5

    move-object v4, p0

    move v6, p1

    move v8, p2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->a(Landroid/view/View;IIII)I

    move-result v0

    add-int/2addr v7, v0

    .line 103
    sget v0, Lcig$f;->cell_checkbox:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->a(I)Landroid/view/View;

    move-result-object v5

    move-object v4, p0

    move v6, p1

    move v8, p2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->a(Landroid/view/View;IIII)I

    move-result v0

    add-int/2addr v7, v0

    .line 106
    sget v0, Lcig$f;->cell_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->a(I)Landroid/view/View;

    move-result-object v5

    move-object v4, p0

    move v6, p1

    move v8, p2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->b(Landroid/view/View;IIII)I

    move-result v9

    .line 109
    .local v9, "heightUsed":I
    sget v0, Lcig$f;->cell_subTitle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->a(I)Landroid/view/View;

    move-result-object v5

    move-object v4, p0

    move v6, p1

    move v8, p2

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->b(Landroid/view/View;IIII)I

    move-result v0

    add-int/2addr v9, v0

    .line 111
    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 113
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v10

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->getPaddingBottom()I

    move-result v1

    add-int v10, v0, v1

    .line 114
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0, v0, v10}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->setMeasuredDimension(II)V

    .line 115
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 197
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_content:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILjava/lang/String;)V

    .line 198
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_subTitle:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILjava/lang/String;)V

    .line 186
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 173
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C5C2CheckableTextCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_title:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILjava/lang/String;)V

    .line 174
    return-void
.end method
