.class public Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;
.super Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;
.source "ToggleCell.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ToggleButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 108
    sget v0, Lcig$f;->cell_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->a:Landroid/widget/TextView;

    .line 109
    sget v0, Lcig$f;->cell_subTitle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->f:Landroid/widget/TextView;

    .line 110
    sget v0, Lcig$f;->cell_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->g:Landroid/widget/TextView;

    .line 111
    sget v0, Lcig$f;->cell_left_image:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->h:Landroid/widget/ImageView;

    .line 112
    sget v0, Lcig$f;->cell_toggle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->i:Landroid/widget/ToggleButton;

    .line 114
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->a(Lcnk;)V

    .line 115
    return-void
.end method

.method protected final a(Landroid/content/res/TypedArray;)V
    .locals 10
    .param p1, "t"    # Landroid/content/res/TypedArray;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/high16 v9, -0x40800000    # -1.0f

    .line 68
    sget v2, Lcig$l;->ToggleCell_visibility_topDivider:I

    sget v3, Lcig$l;->ToggleCell_align_topDivider:I

    sget v4, Lcig$l;->ToggleCell_visibility_bottomDivider:I

    sget v5, Lcig$l;->ToggleCell_align_bottomDivider:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->a(Landroid/content/res/TypedArray;IIII)V

    .line 82
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    sget v1, Lcig$l;->ToggleCell_title:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcnk;->a(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    sget v1, Lcig$l;->ToggleCell_subTitle:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcnk;->b(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    sget v1, Lcig$l;->ToggleCell_tips:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcnk;->c(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    sget v1, Lcig$l;->ToggleCell_left_image:I

    invoke-virtual {p1, v1, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcnk;->a(I)V

    .line 86
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    sget v1, Lcig$l;->ToggleCell_checked:I

    invoke-virtual {p1, v1, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcnk;->a(Z)V

    .line 87
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcnk;->b(Z)V

    .line 90
    sget v0, Lcig$l;->ToggleCell_titleSize:I

    invoke-virtual {p1, v0, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    .line 91
    .local v7, "textSize":F
    sget v0, Lcig$l;->ToggleCell_titleColor:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 92
    .local v6, "textColor":Landroid/content/res/ColorStateList;
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->a:Landroid/widget/TextView;

    invoke-static {v0, v7}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->a(Landroid/widget/TextView;F)V

    .line 93
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->a:Landroid/widget/TextView;

    invoke-static {v0, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->a(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 95
    sget v0, Lcig$l;->ToggleCell_subTitleSize:I

    invoke-virtual {p1, v0, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    .line 96
    sget v0, Lcig$l;->ToggleCell_subTitleColor:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 97
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->f:Landroid/widget/TextView;

    invoke-static {v0, v7}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->a(Landroid/widget/TextView;F)V

    .line 98
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->f:Landroid/widget/TextView;

    invoke-static {v0, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->a(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 100
    sget v0, Lcig$l;->ToggleCell_tipsSize:I

    invoke-virtual {p1, v0, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    .line 101
    sget v0, Lcig$l;->ToggleCell_tipsColor:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 102
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->g:Landroid/widget/TextView;

    invoke-static {v0, v7}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->a(Landroid/widget/TextView;F)V

    .line 103
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->g:Landroid/widget/TextView;

    invoke-static {v0, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->a(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 104
    return-void

    .end local v6    # "textColor":Landroid/content/res/ColorStateList;
    .end local v7    # "textSize":F
    :cond_0
    move v0, v8

    .line 87
    goto :goto_0
.end method

.method public final a(Lcnk;)V
    .locals 4
    .param p1, "model"    # Lcnk;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 222
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->a(Lcnk;)V

    .line 223
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->h:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    invoke-virtual {v2}, Lcnk;->e()I

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->a(Landroid/widget/ImageView;I)V

    .line 224
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    invoke-virtual {v1}, Lcnk;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->h:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    invoke-virtual {v2}, Lcnk;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    invoke-virtual {v2}, Lcnk;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    invoke-virtual {v2}, Lcnk;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    invoke-virtual {v2}, Lcnk;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->i:Landroid/widget/ToggleButton;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    invoke-virtual {v2}, Lcnk;->j()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 232
    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->setFocusable(Z)V

    .line 233
    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->setFocusableInTouchMode(Z)V

    .line 235
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 236
    .local v0, "contentDescription":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    invoke-virtual {v1}, Lcnk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 237
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    invoke-virtual {v1}, Lcnk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 240
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    invoke-virtual {v1}, Lcnk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 241
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    invoke-virtual {v1}, Lcnk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 244
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    invoke-virtual {v1}, Lcnk;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 245
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    invoke-virtual {v1}, Lcnk;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 248
    :cond_3
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 250
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    invoke-virtual {v1}, Lcnk;->j()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 251
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcig$j;->dt_accessibility_toggle_status_open:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 256
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 257
    return-void

    .line 253
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcig$j;->dt_accessibility_toggle_status_close:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0
.end method

.method protected getLayout()I
    .locals 1

    .prologue
    .line 63
    sget v0, Lcig$h;->cell_layout_toggle:I

    return v0
.end method

.method protected getStyleable()[I
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcig$l;->ToggleCell:[I

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v8, 0x8

    .line 153
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->getPaddingLeft()I

    move-result v0

    .line 155
    .local v0, "currentLeft":I
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->h:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-eq v6, v8, :cond_0

    .line 156
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->h:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->a(I)I

    move-result v1

    .line 157
    .local v1, "currentTop":I
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->h:Landroid/widget/ImageView;

    invoke-virtual {p0, v6, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->a(Landroid/view/View;II)V

    .line 160
    .end local v1    # "currentTop":I
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->getPaddingRight()I

    move-result v2

    .line 161
    .local v2, "tempWidth":I
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->i:Landroid/widget/ToggleButton;

    invoke-virtual {v6}, Landroid/widget/ToggleButton;->getVisibility()I

    move-result v6

    if-eq v6, v8, :cond_1

    .line 162
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->i:Landroid/widget/ToggleButton;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->b(Landroid/view/View;)I

    move-result v6

    add-int/2addr v2, v6

    .line 163
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->i:Landroid/widget/ToggleButton;

    invoke-virtual {v6}, Landroid/widget/ToggleButton;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->a(I)I

    move-result v1

    .line 164
    .restart local v1    # "currentTop":I
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->i:Landroid/widget/ToggleButton;

    sub-int v7, p4, p2

    sub-int/2addr v7, v2

    invoke-virtual {p0, v6, v7, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->a(Landroid/view/View;II)V

    .line 169
    .end local v1    # "currentTop":I
    :cond_1
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->a:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->c(Landroid/view/View;)I

    move-result v4

    .line 171
    .local v4, "titleMeasureHeight":I
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->f:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-eq v6, v8, :cond_4

    .line 172
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v6, v4

    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->f:Landroid/widget/TextView;

    .line 173
    invoke-static {v7}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->c(Landroid/view/View;)I

    move-result v7

    sub-int/2addr v6, v7

    shr-int/lit8 v5, v6, 0x1

    .line 174
    .local v5, "titleTop":I
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->g:Landroid/widget/TextView;

    .line 175
    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->c(Landroid/view/View;)I

    move-result v6

    sub-int v6, v4, v6

    shr-int/lit8 v6, v6, 0x1

    add-int v3, v5, v6

    .line 181
    .local v3, "tipsTop":I
    :goto_0
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->h:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-eq v6, v8, :cond_5

    .line 182
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->getPaddingLeft()I

    move-result v6

    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->h:Landroid/widget/ImageView;

    invoke-static {v7}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->a(Landroid/view/View;)I

    move-result v7

    add-int v0, v6, v7

    .line 187
    :goto_1
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v6, v0, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->a(Landroid/view/View;II)V

    .line 188
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->setContentCoordinate(I)V

    .line 190
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->f:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-eq v6, v8, :cond_2

    .line 191
    add-int/2addr v5, v4

    .line 192
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->f:Landroid/widget/TextView;

    invoke-virtual {p0, v6, v0, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->a(Landroid/view/View;II)V

    .line 195
    :cond_2
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->g:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-eq v6, v8, :cond_3

    .line 196
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->a:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->b(Landroid/view/View;)I

    move-result v6

    add-int/2addr v0, v6

    .line 197
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->g:Landroid/widget/TextView;

    invoke-virtual {p0, v6, v0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->a(Landroid/view/View;II)V

    .line 199
    :cond_3
    return-void

    .line 177
    .end local v3    # "tipsTop":I
    .end local v5    # "titleTop":I
    :cond_4
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->a:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->a(I)I

    move-result v5

    .line 178
    .restart local v5    # "titleTop":I
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->g:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->a(I)I

    move-result v3

    .restart local v3    # "tipsTop":I
    goto :goto_0

    .line 184
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->getPaddingLeft()I

    move-result v0

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 119
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 124
    .local v13, "widthSize":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->h:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->a(Landroid/view/View;IIII)I

    move-result v0

    add-int/lit8 v3, v0, 0x0

    .line 128
    .local v3, "widthUsed":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->i:Landroid/widget/ToggleButton;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->a(Landroid/view/View;IIII)I

    move-result v0

    add-int/2addr v3, v0

    .line 132
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->a:Landroid/widget/TextView;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->b(Landroid/view/View;IIII)I

    move-result v0

    add-int/lit8 v5, v0, 0x0

    .line 136
    .local v5, "heightUsed":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->f:Landroid/widget/TextView;

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->b(Landroid/view/View;IIII)I

    move-result v0

    add-int/2addr v5, v0

    .line 140
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->a:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->b(Landroid/view/View;)I

    move-result v0

    add-int/2addr v3, v0

    .line 141
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->g:Landroid/widget/TextView;

    const/4 v11, 0x0

    move-object v6, p0

    move v8, p1

    move v9, v3

    move/from16 v10, p2

    invoke-virtual/range {v6 .. v11}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->a(Landroid/view/View;IIII)I

    .line 145
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->h:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->c(Landroid/view/View;)I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 146
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->getPaddingBottom()I

    move-result v1

    add-int v12, v0, v1

    .line 147
    .local v12, "heightSize":I
    invoke-virtual {p0, v13, v12}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->setMeasuredDimension(II)V

    .line 148
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->i:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 203
    return-void
.end method
