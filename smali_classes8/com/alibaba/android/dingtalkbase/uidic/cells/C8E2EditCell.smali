.class public Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;
.super Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;
.source "C8E2EditCell.java"


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
.method public final a(ILjava/lang/String;Landroid/widget/AbsListView;)V
    .locals 3
    .param p1, "drawable"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "parent"    # Landroid/widget/AbsListView;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_left_image:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(IILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 180
    return-void
.end method

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
    sget v3, Lcig$l;->C8E2EditCell_imageSize:I

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    sget v3, Lcig$l;->C8E2EditCell_imageSize:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;->fromValue(I)Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

    move-result-object v2

    .line 61
    .local v2, "size":Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v3, Lcig$f;->cell_left_image:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->a(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v4, v3, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(Landroid/widget/ImageView;Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;)V

    .line 63
    .end local v2    # "size":Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;
    :cond_0
    sget v3, Lcig$l;->C8E2EditCell_leftImage:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {p0, v3, v7, v7}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->a(ILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 65
    sget v3, Lcig$l;->C8E2EditCell_drawableLeftTitle:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 66
    .local v0, "drawableLeft":I
    sget v3, Lcig$l;->C8E2EditCell_drawableRightTitle:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 67
    .local v1, "drawableRight":I
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v4, Lcig$f;->cell_title:I

    sget v5, Lcig$l;->C8E2EditCell_titleSize:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(IF)V

    .line 68
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v4, Lcig$f;->cell_title:I

    sget v5, Lcig$l;->C8E2EditCell_titleColor:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILandroid/content/res/ColorStateList;)V

    .line 69
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v4, Lcig$f;->cell_title:I

    sget v5, Lcig$l;->C8E2EditCell_title:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILjava/lang/String;)V

    .line 70
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v4, Lcig$f;->cell_title:I

    invoke-virtual {v3, v4, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(III)V

    .line 72
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v4, Lcig$f;->cell_content:I

    sget v5, Lcig$l;->C8E2EditCell_editSize:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->b(IF)V

    .line 73
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v4, Lcig$f;->cell_content:I

    sget v5, Lcig$l;->C8E2EditCell_editColor:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->b(ILandroid/content/res/ColorStateList;)V

    .line 74
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v4, Lcig$f;->cell_content:I

    sget v5, Lcig$l;->C8E2EditCell_editText:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->b(ILjava/lang/String;)V

    .line 75
    sget v3, Lcig$l;->C8E1EditCell_editMaxLen:I

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 76
    sget v3, Lcig$l;->C8E1EditCell_editMaxLen:I

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->setEditTextMaxLen(I)V

    .line 79
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v4, Lcig$f;->cell_content:I

    sget v5, Lcig$l;->C8E2EditCell_hint:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->c(ILjava/lang/String;)V

    .line 80
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v4, Lcig$f;->cell_content:I

    sget v5, Lcig$l;->C8E2EditCell_hintColor:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->c(ILandroid/content/res/ColorStateList;)V

    .line 81
    return-void
.end method

.method public getEditText()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_content:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLayout()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lcig$h;->layout_cell_c8e2:I

    return v0
.end method

.method protected getStyleable()[I
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcig$l;->C8E2EditCell:[I

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

    .line 110
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->getPaddingLeft()I

    move-result v1

    .line 112
    .local v1, "tempWidth":I
    sget v3, Lcig$f;->cell_left_image:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->a(I)Landroid/view/View;

    move-result-object v2

    .line 113
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 114
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->b(I)I

    move-result v0

    .line 115
    .local v0, "currentTop":I
    invoke-virtual {p0, v2, v1, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->a(Landroid/view/View;II)V

    .line 116
    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->a(Landroid/view/View;)I

    move-result v3

    add-int/2addr v1, v3

    .line 119
    .end local v0    # "currentTop":I
    :cond_0
    sget v3, Lcig$f;->cell_title:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->a(I)Landroid/view/View;

    move-result-object v2

    .line 120
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 121
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->b(I)I

    move-result v0

    .line 122
    .restart local v0    # "currentTop":I
    invoke-virtual {p0, v2, v1, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->a(Landroid/view/View;II)V

    .line 123
    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->a(Landroid/view/View;)I

    move-result v3

    add-int/2addr v1, v3

    .line 125
    .end local v0    # "currentTop":I
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->setContentCoordinate(I)V

    .line 127
    sget v3, Lcig$f;->cell_content:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->a(I)Landroid/view/View;

    move-result-object v2

    .line 128
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_2

    .line 129
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->b(I)I

    move-result v0

    .line 130
    .restart local v0    # "currentTop":I
    invoke-virtual {p0, v2, v1, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->a(Landroid/view/View;II)V

    .line 132
    .end local v0    # "currentTop":I
    :cond_2
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
    sget v0, Lcig$f;->cell_left_image:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->a(I)Landroid/view/View;

    move-result-object v1

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->c(Landroid/view/View;IIII)Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    move-result-object v12

    .line 1166
    .local v12, "size":Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;
    iget v7, v12, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->a:I

    .line 1174
    .local v7, "widthUsed":I
    iget v11, v12, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->b:I

    .line 94
    .local v11, "heightUsed":I
    sget v0, Lcig$f;->cell_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->a(I)Landroid/view/View;

    move-result-object v5

    move-object v4, p0

    move v6, p1

    move v8, p2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->c(Landroid/view/View;IIII)Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

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

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->a(I)Landroid/view/View;

    move-result-object v5

    move-object v4, p0

    move v6, p1

    move v8, p2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->c(Landroid/view/View;IIII)Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    move-result-object v12

    .line 3174
    iget v0, v12, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->b:I

    .line 101
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 103
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v11

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->getPaddingBottom()I

    move-result v1

    add-int v10, v0, v1

    .line 104
    .local v10, "heightSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0, v0, v10}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->setMeasuredDimension(II)V

    .line 105
    return-void
.end method

.method public setEditHint(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_content:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->c(ILjava/lang/String;)V

    .line 156
    return-void
.end method

.method public setEditHintColor(I)V
    .locals 2
    .param p1, "textColor"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_content:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(II)V

    .line 160
    return-void
.end method

.method public setEditOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 171
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_content:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILandroid/view/View$OnFocusChangeListener;)V

    .line 172
    return-void
.end method

.method public setEditText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_content:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->b(ILjava/lang/String;)V

    .line 148
    return-void
.end method

.method public setEditTextMaxLen(I)V
    .locals 2
    .param p1, "maxLen"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 167
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_content:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->b(II)V

    .line 168
    return-void
.end method

.method public setLeftImageOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 183
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_left_image:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->b(ILandroid/view/View$OnClickListener;)V

    .line 184
    return-void
.end method

.method public setLeftImageSize(Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;)V
    .locals 2
    .param p1, "size"    # Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 175
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v0, Lcig$f;->cell_left_image:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v0, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(Landroid/widget/ImageView;Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;)V

    .line 176
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 135
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_title:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILjava/lang/String;)V

    .line 136
    return-void
.end method
