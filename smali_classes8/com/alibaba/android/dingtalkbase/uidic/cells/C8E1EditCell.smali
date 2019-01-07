.class public Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;
.super Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;
.source "C8E1EditCell.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/res/TypedArray;)V
    .locals 6
    .param p1, "t"    # Landroid/content/res/TypedArray;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    .line 57
    sget v2, Lcig$l;->C8E1EditCell_drawableLeftTitle:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 58
    .local v0, "drawableLeft":I
    sget v2, Lcig$l;->C8E1EditCell_drawableRightTitle:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 59
    .local v1, "drawableRight":I
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v3, Lcig$f;->cell_title:I

    sget v4, Lcig$l;->C8E1EditCell_titleSize:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(IF)V

    .line 60
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v3, Lcig$f;->cell_title:I

    sget v4, Lcig$l;->C8E1EditCell_titleColor:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILandroid/content/res/ColorStateList;)V

    .line 61
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v3, Lcig$f;->cell_title:I

    sget v4, Lcig$l;->C8E1EditCell_title:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILjava/lang/String;)V

    .line 62
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v3, Lcig$f;->cell_title:I

    invoke-virtual {v2, v3, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(III)V

    .line 64
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v3, Lcig$f;->cell_content:I

    sget v4, Lcig$l;->C8E1EditCell_editSize:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->b(IF)V

    .line 65
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v3, Lcig$f;->cell_content:I

    sget v4, Lcig$l;->C8E1EditCell_editColor:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->b(ILandroid/content/res/ColorStateList;)V

    .line 66
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v3, Lcig$f;->cell_content:I

    sget v4, Lcig$l;->C8E1EditCell_editText:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->b(ILjava/lang/String;)V

    .line 67
    sget v2, Lcig$l;->C8E1EditCell_editMaxLen:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    sget v2, Lcig$l;->C8E1EditCell_editMaxLen:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;->setEditTextMaxLen(I)V

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v3, Lcig$f;->cell_content:I

    sget v4, Lcig$l;->C8E1EditCell_hint:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->c(ILjava/lang/String;)V

    .line 72
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v3, Lcig$f;->cell_content:I

    sget v4, Lcig$l;->C8E1EditCell_hintColor:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->c(ILandroid/content/res/ColorStateList;)V

    .line 73
    return-void
.end method

.method public getEditText()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_content:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLayout()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcig$h;->layout_cell_c8e1:I

    return v0
.end method

.method protected getStyleable()[I
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcig$l;->C8E1EditCell:[I

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

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;->getPaddingLeft()I

    move-result v1

    .line 96
    .local v1, "tempWidth":I
    sget v3, Lcig$f;->cell_title:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;->a(I)Landroid/view/View;

    move-result-object v2

    .line 97
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 98
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;->b(I)I

    move-result v0

    .line 99
    .local v0, "currentTop":I
    invoke-virtual {p0, v2, v1, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;->a(Landroid/view/View;II)V

    .line 100
    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;->a(Landroid/view/View;)I

    move-result v3

    add-int/2addr v1, v3

    .line 103
    .end local v0    # "currentTop":I
    :cond_0
    sget v3, Lcig$f;->cell_content:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;->a(I)Landroid/view/View;

    move-result-object v2

    .line 104
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 105
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;->b(I)I

    move-result v0

    .line 106
    .restart local v0    # "currentTop":I
    invoke-virtual {p0, v2, v1, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;->a(Landroid/view/View;II)V

    .line 109
    .end local v0    # "currentTop":I
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;->setContentCoordinate(I)V

    .line 110
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

    .line 80
    sget v0, Lcig$f;->cell_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;->a(I)Landroid/view/View;

    move-result-object v1

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;->c(Landroid/view/View;IIII)Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    move-result-object v12

    .line 83
    .local v12, "size":Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;
    sget v0, Lcig$f;->cell_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;->a(I)Landroid/view/View;

    move-result-object v5

    .line 1166
    iget v7, v12, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->a:I

    move-object v4, p0

    move v6, p1

    move v8, p2

    move v9, v3

    .line 83
    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;->b(Landroid/view/View;IIII)I

    move-result v11

    .line 1174
    .local v11, "heightUsed":I
    iget v0, v12, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->b:I

    .line 86
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 87
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v11

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;->getPaddingBottom()I

    move-result v1

    add-int v10, v0, v1

    .line 88
    .local v10, "heightSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0, v0, v10}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;->setMeasuredDimension(II)V

    .line 89
    return-void
.end method

.method public setEditHint(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_content:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->c(ILjava/lang/String;)V

    .line 134
    return-void
.end method

.method public setEditHintColor(I)V
    .locals 2
    .param p1, "textColor"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_content:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(II)V

    .line 138
    return-void
.end method

.method public setEditOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 149
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_content:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILandroid/view/View$OnFocusChangeListener;)V

    .line 150
    return-void
.end method

.method public setEditText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_content:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->b(ILjava/lang/String;)V

    .line 126
    return-void
.end method

.method public setEditTextMaxLen(I)V
    .locals 2
    .param p1, "maxLen"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_content:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->b(II)V

    .line 146
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_title:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILjava/lang/String;)V

    .line 114
    return-void
.end method
