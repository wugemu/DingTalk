.class public Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;
.super Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;
.source "C4T1ToggleCell.java"


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
    .locals 8
    .param p1, "t"    # Landroid/content/res/TypedArray;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/high16 v7, -0x40800000    # -1.0f

    const/4 v6, 0x0

    .line 59
    sget v3, Lcig$l;->C4T1ToggleCell_drawableLeftTitle:I

    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 60
    .local v0, "drawableLeft":I
    sget v3, Lcig$l;->C4T1ToggleCell_drawableRightTitle:I

    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 61
    .local v1, "drawableRight":I
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v4, Lcig$f;->cell_title:I

    sget v5, Lcig$l;->C4T1ToggleCell_titleSize:I

    invoke-virtual {p1, v5, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(IF)V

    .line 62
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v4, Lcig$f;->cell_title:I

    sget v5, Lcig$l;->C4T1ToggleCell_titleColor:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILandroid/content/res/ColorStateList;)V

    .line 63
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v4, Lcig$f;->cell_title:I

    sget v5, Lcig$l;->C4T1ToggleCell_title:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILjava/lang/String;)V

    .line 64
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v4, Lcig$f;->cell_title:I

    invoke-virtual {v3, v4, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(III)V

    .line 66
    sget v3, Lcig$l;->C4T1ToggleCell_drawableLeftContent:I

    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 67
    sget v3, Lcig$l;->C4T1ToggleCell_drawableRightContent:I

    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 68
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v4, Lcig$f;->cell_content:I

    sget v5, Lcig$l;->C4T1ToggleCell_contentSize:I

    invoke-virtual {p1, v5, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(IF)V

    .line 69
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v4, Lcig$f;->cell_content:I

    sget v5, Lcig$l;->C4T1ToggleCell_contentColor:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILandroid/content/res/ColorStateList;)V

    .line 70
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v4, Lcig$f;->cell_content:I

    sget v5, Lcig$l;->C4T1ToggleCell_content:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILjava/lang/String;)V

    .line 71
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v4, Lcig$f;->cell_content:I

    invoke-virtual {v3, v4, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(III)V

    .line 73
    sget v3, Lcig$f;->cell_toggle:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    .line 74
    .local v2, "toggleButton":Landroid/widget/ToggleButton;
    sget v3, Lcig$l;->C4T1ToggleCell_checked:I

    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 76
    sget v3, Lcig$l;->C4T1ToggleCell_title:I

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method

.method protected getLayout()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lcig$h;->layout_cell_c4t1:I

    return v0
.end method

.method protected getStyleable()[I
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcig$l;->C4T1ToggleCell:[I

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

    .line 109
    const/4 v1, 0x0

    .line 111
    .local v1, "tempWidth":I
    sget v3, Lcig$f;->cell_toggle:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->a(I)Landroid/view/View;

    move-result-object v2

    .line 112
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 113
    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->a(Landroid/view/View;)I

    move-result v3

    add-int/lit8 v1, v3, 0x0

    .line 114
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->b(I)I

    move-result v0

    .line 115
    .local v0, "currentTop":I
    sub-int v3, p4, p2

    sub-int/2addr v3, v1

    invoke-virtual {p0, v2, v3, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->a(Landroid/view/View;II)V

    .line 118
    .end local v0    # "currentTop":I
    :cond_0
    sget v3, Lcig$f;->cell_indicator:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->a(I)Landroid/view/View;

    move-result-object v2

    .line 119
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 120
    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->a(Landroid/view/View;)I

    move-result v3

    add-int/2addr v1, v3

    .line 121
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->b(I)I

    move-result v0

    .line 122
    .restart local v0    # "currentTop":I
    sub-int v3, p4, p2

    sub-int/2addr v3, v1

    invoke-virtual {p0, v2, v3, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->a(Landroid/view/View;II)V

    .line 125
    .end local v0    # "currentTop":I
    :cond_1
    sget v3, Lcig$f;->cell_content:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->a(I)Landroid/view/View;

    move-result-object v2

    .line 126
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_2

    .line 127
    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->a(Landroid/view/View;)I

    move-result v3

    add-int/2addr v1, v3

    .line 128
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->b(I)I

    move-result v0

    .line 129
    .restart local v0    # "currentTop":I
    sub-int v3, p4, p2

    sub-int/2addr v3, v1

    invoke-virtual {p0, v2, v3, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->a(Landroid/view/View;II)V

    .line 132
    .end local v0    # "currentTop":I
    :cond_2
    sget v3, Lcig$f;->cell_title:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->a(I)Landroid/view/View;

    move-result-object v2

    .line 133
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_3

    .line 134
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->b(I)I

    move-result v0

    .line 135
    .restart local v0    # "currentTop":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->a(Landroid/view/View;II)V

    .line 138
    .end local v0    # "currentTop":I
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->setContentCoordinate(I)V

    .line 139
    return-void
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

    .line 85
    sget v0, Lcig$f;->cell_toggle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->a(I)Landroid/view/View;

    move-result-object v1

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->c(Landroid/view/View;IIII)Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    move-result-object v11

    .line 1166
    .local v11, "size":Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;
    iget v7, v11, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->a:I

    .line 1174
    .local v7, "widthUsed":I
    iget v10, v11, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->b:I

    .line 90
    .local v10, "maxHeight":I
    sget v0, Lcig$f;->cell_indicator:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->a(I)Landroid/view/View;

    move-result-object v5

    move-object v4, p0

    move v6, p1

    move v8, p2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->c(Landroid/view/View;IIII)Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    move-result-object v11

    .line 2166
    iget v0, v11, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->a:I

    .line 92
    add-int/2addr v7, v0

    .line 2174
    iget v0, v11, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->b:I

    .line 93
    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 95
    sget v0, Lcig$f;->cell_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->a(I)Landroid/view/View;

    move-result-object v5

    move-object v4, p0

    move v6, p1

    move v8, p2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->a(Landroid/view/View;IIII)I

    move-result v0

    add-int/2addr v7, v0

    .line 98
    sget v0, Lcig$f;->cell_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->a(I)Landroid/view/View;

    move-result-object v5

    move-object v4, p0

    move v6, p1

    move v8, p2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->b(Landroid/view/View;IIII)I

    move-result v0

    iput v0, v11, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->b:I

    .line 100
    iget v0, v11, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->b:I

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 102
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v10

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->getPaddingBottom()I

    move-result v1

    add-int v10, v0, v1

    .line 103
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0, v0, v10}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->setMeasuredDimension(II)V

    .line 104
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 157
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_content:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILjava/lang/String;)V

    .line 158
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 184
    sget v1, Lcig$f;->cell_toggle:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 185
    .local v0, "toggleButton":Landroid/widget/ToggleButton;
    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 186
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 142
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v2, Lcig$f;->cell_title:I

    invoke-virtual {v1, v2, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILjava/lang/String;)V

    .line 144
    sget v1, Lcig$f;->cell_toggle:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 145
    .local v0, "toggleButton":Landroid/widget/ToggleButton;
    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 146
    return-void
.end method

.method public setToggleChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 169
    sget v1, Lcig$f;->cell_toggle:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 170
    .local v0, "toggleButton":Landroid/widget/ToggleButton;
    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 171
    return-void
.end method

.method public setToggleEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 179
    sget v1, Lcig$f;->cell_toggle:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 180
    .local v0, "toggleButton":Landroid/widget/ToggleButton;
    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 181
    return-void
.end method
