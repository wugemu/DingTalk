.class public Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;
.super Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell;
.source "C1L1LinearLayoutCell.java"


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
.method public final a(II)V
    .locals 3
    .param p1, "textSize"    # I
    .param p2, "textColor"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 177
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_title:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2, p2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->b(III)V

    .line 178
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

    .line 229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_right_image:I

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(IILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 230
    return-void
.end method

.method protected final a(Landroid/content/res/TypedArray;)V
    .locals 9
    .param p1, "t"    # Landroid/content/res/TypedArray;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v6, 0x0

    .line 59
    sget v2, Lcig$l;->C1T2TextCell_drawableLeftTitle:I

    invoke-virtual {p1, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 60
    .local v0, "drawableLeft":I
    sget v2, Lcig$l;->C1T2TextCell_drawableRightTitle:I

    invoke-virtual {p1, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 61
    .local v1, "drawableRight":I
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v3, Lcig$f;->cell_title:I

    sget v4, Lcig$l;->C1T2TextCell_titleSize:I

    invoke-virtual {p1, v4, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(IF)V

    .line 62
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v3, Lcig$f;->cell_title:I

    sget v4, Lcig$l;->C1T2TextCell_titleColor:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILandroid/content/res/ColorStateList;)V

    .line 63
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v3, Lcig$f;->cell_title:I

    sget v4, Lcig$l;->C1T2TextCell_title:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILjava/lang/String;)V

    .line 64
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v3, Lcig$f;->cell_title:I

    invoke-virtual {v2, v3, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(III)V

    .line 66
    sget v2, Lcig$l;->C1T2TextCell_drawableLeftSubTitle:I

    invoke-virtual {p1, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 67
    sget v2, Lcig$l;->C1T2TextCell_drawableRightSubTitle:I

    invoke-virtual {p1, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 68
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v3, Lcig$f;->cell_subTitle:I

    sget v4, Lcig$l;->C1T2TextCell_subTitleSize:I

    invoke-virtual {p1, v4, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(IF)V

    .line 69
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v3, Lcig$f;->cell_subTitle:I

    sget v4, Lcig$l;->C1T2TextCell_subTitleColor:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILandroid/content/res/ColorStateList;)V

    .line 70
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v3, Lcig$f;->cell_subTitle:I

    sget v4, Lcig$l;->C1T2TextCell_subTitleSingleLine:I

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(IZ)V

    .line 71
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v3, Lcig$f;->cell_subTitle:I

    sget v4, Lcig$l;->C1T2TextCell_subTitle:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILjava/lang/String;)V

    .line 72
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v3, Lcig$f;->cell_subTitle:I

    invoke-virtual {v2, v3, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(III)V

    .line 74
    sget v2, Lcig$l;->C1T2TextCell_drawableLeftContent:I

    invoke-virtual {p1, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 75
    sget v2, Lcig$l;->C1T2TextCell_drawableRightContent:I

    invoke-virtual {p1, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 76
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v3, Lcig$f;->cell_content:I

    sget v4, Lcig$l;->C1T2TextCell_contentSize:I

    invoke-virtual {p1, v4, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(IF)V

    .line 77
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v3, Lcig$f;->cell_content:I

    sget v4, Lcig$l;->C1T2TextCell_contentColor:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILandroid/content/res/ColorStateList;)V

    .line 78
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v3, Lcig$f;->cell_content:I

    sget v4, Lcig$l;->C1T2TextCell_content:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILjava/lang/String;)V

    .line 79
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v3, Lcig$f;->cell_content:I

    invoke-virtual {v2, v3, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(III)V

    .line 81
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v3, Lcig$f;->cell_right_image:I

    sget v4, Lcig$l;->C1T2TextCell_rightImage:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v2, v3, v4, v8, v8}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(IILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 82
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 233
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    const/4 v2, 0x0

    .line 2887
    sget v0, Lcig$f;->cell_custom_content:I

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2888
    if-nez v0, :cond_0

    .line 2889
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " The cell has no cell_custom_content."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2892
    :cond_0
    if-eqz p1, :cond_2

    .line 2893
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 2894
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2896
    :cond_1
    if-nez v2, :cond_3

    .line 2897
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void

    .line 2899
    :cond_3
    invoke-virtual {v0, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public final b(II)V
    .locals 3
    .param p1, "textSize"    # I
    .param p2, "textColor"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 193
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_subTitle:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, p2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->b(III)V

    .line 194
    return-void
.end method

.method public final c(II)V
    .locals 3
    .param p1, "textSize"    # I
    .param p2, "textColor"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 205
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_subTitle_right:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, p2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->b(III)V

    .line 206
    return-void
.end method

.method protected getLayout()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lcig$h;->layout_cell_c1l1:I

    return v0
.end method

.method protected getStyleable()[I
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcig$l;->C1T2TextCell:[I

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

    .line 115
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->getPaddingRight()I

    move-result v2

    .line 117
    .local v2, "tempWidth":I
    sget v4, Lcig$f;->cell_right_image:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a(I)Landroid/view/View;

    move-result-object v3

    .line 118
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_0

    .line 119
    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    .line 120
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->b(I)I

    move-result v0

    .line 121
    .local v0, "currentTop":I
    sub-int v4, p4, p2

    sub-int/2addr v4, v2

    invoke-virtual {p0, v3, v4, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a(Landroid/view/View;II)V

    .line 124
    .end local v0    # "currentTop":I
    :cond_0
    sget v4, Lcig$f;->cell_indicator:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a(I)Landroid/view/View;

    move-result-object v3

    .line 125
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_1

    .line 126
    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    .line 127
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->b(I)I

    move-result v0

    .line 128
    .restart local v0    # "currentTop":I
    sub-int v4, p4, p2

    sub-int/2addr v4, v2

    invoke-virtual {p0, v3, v4, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a(Landroid/view/View;II)V

    .line 131
    .end local v0    # "currentTop":I
    :cond_1
    sget v4, Lcig$f;->cell_content:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a(I)Landroid/view/View;

    move-result-object v3

    .line 132
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_2

    .line 133
    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    .line 134
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->b(I)I

    move-result v0

    .line 135
    .restart local v0    # "currentTop":I
    sub-int v4, p4, p2

    sub-int/2addr v4, v2

    invoke-virtual {p0, v3, v4, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a(Landroid/view/View;II)V

    .line 138
    .end local v0    # "currentTop":I
    :cond_2
    sget v4, Lcig$f;->cell_title:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a(I)Landroid/view/View;

    move-result-object v3

    .line 147
    sget v4, Lcig$f;->cell_custom_content:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a(I)Landroid/view/View;

    move-result-object v1

    .line 148
    .local v1, "customView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_5

    .line 149
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->getMeasuredHeight()I

    move-result v4

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->b(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v4, v5

    .line 150
    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->b(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v4, v5

    shr-int/lit8 v0, v4, 0x1

    .line 155
    .restart local v0    # "currentTop":I
    :goto_0
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_3

    .line 156
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0, v3, v4, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a(Landroid/view/View;II)V

    .line 164
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_4

    .line 165
    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->b(Landroid/view/View;)I

    move-result v4

    add-int/2addr v0, v4

    .line 166
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0, v1, v4, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a(Landroid/view/View;II)V

    .line 169
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->setContentCoordinate(I)V

    .line 170
    return-void

    .line 152
    .end local v0    # "currentTop":I
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->b(I)I

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

    .line 91
    sget v0, Lcig$f;->cell_right_image:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a(I)Landroid/view/View;

    move-result-object v1

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->c(Landroid/view/View;IIII)Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

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

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a(I)Landroid/view/View;

    move-result-object v5

    move-object v4, p0

    move v6, p1

    move v8, p2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->c(Landroid/view/View;IIII)Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    move-result-object v11

    .line 2166
    iget v0, v11, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->a:I

    .line 96
    add-int/2addr v7, v0

    .line 2174
    iget v0, v11, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->b:I

    .line 97
    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 99
    sget v0, Lcig$f;->cell_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a(I)Landroid/view/View;

    move-result-object v5

    move-object v4, p0

    move v6, p1

    move v8, p2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a(Landroid/view/View;IIII)I

    move-result v0

    add-int/2addr v7, v0

    .line 100
    sget v0, Lcig$f;->cell_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a(I)Landroid/view/View;

    move-result-object v5

    move-object v4, p0

    move v6, p1

    move v8, p2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->b(Landroid/view/View;IIII)I

    move-result v9

    .line 102
    .local v9, "heightUsed":I
    sget v0, Lcig$f;->cell_custom_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a(I)Landroid/view/View;

    move-result-object v5

    move-object v4, p0

    move v6, p1

    move v8, p2

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->b(Landroid/view/View;IIII)I

    move-result v0

    add-int/2addr v9, v0

    .line 103
    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 108
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v10

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->getPaddingBottom()I

    move-result v1

    add-int v10, v0, v1

    .line 109
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0, v0, v10}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->setMeasuredDimension(II)V

    .line 110
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 213
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_content:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILjava/lang/String;)V

    .line 214
    return-void
.end method

.method public setContentClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 221
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_content:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILandroid/view/View$OnClickListener;)V

    .line 222
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
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_subTitle:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILjava/lang/String;)V

    .line 186
    return-void
.end method

.method public setSubTitleRight(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 201
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_subTitle_right:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILjava/lang/String;)V

    .line 202
    return-void
.end method

.method public setSubTitleRightClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 209
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_subTitle_right:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILandroid/view/View$OnClickListener;)V

    .line 210
    return-void
.end method

.method public setSubTitleSingleLine(Z)V
    .locals 2
    .param p1, "singleLine"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_subTitle:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(IZ)V

    .line 190
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
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1L1LinearLayoutCell;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;

    sget v1, Lcig$f;->cell_title:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/BaseCell$a;->a(ILjava/lang/String;)V

    .line 174
    return-void
.end method
