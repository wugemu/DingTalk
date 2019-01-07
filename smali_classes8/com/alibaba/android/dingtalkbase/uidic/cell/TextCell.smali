.class public Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;
.super Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;
.source "TextCell.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 116
    sget v0, Lcig$f;->cell_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a:Landroid/widget/TextView;

    .line 117
    sget v0, Lcig$f;->cell_subTitle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->f:Landroid/widget/TextView;

    .line 118
    sget v0, Lcig$f;->cell_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->g:Landroid/widget/TextView;

    .line 119
    sget v0, Lcig$f;->cell_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->h:Landroid/widget/TextView;

    .line 120
    sget v0, Lcig$f;->cell_indicator:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->i:Landroid/widget/TextView;

    .line 121
    sget v0, Lcig$f;->cell_left_image:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->j:Landroid/widget/ImageView;

    .line 122
    sget v0, Lcig$f;->cell_right_image:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->k:Landroid/widget/ImageView;

    .line 123
    return-void
.end method

.method protected final a(Landroid/content/res/TypedArray;)V
    .locals 14
    .param p1, "t"    # Landroid/content/res/TypedArray;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 67
    sget v2, Lcig$l;->TextCell_visibility_topDivider:I

    sget v3, Lcig$l;->TextCell_align_topDivider:I

    sget v4, Lcig$l;->TextCell_visibility_bottomDivider:I

    sget v5, Lcig$l;->TextCell_align_bottomDivider:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(Landroid/content/res/TypedArray;IIII)V

    .line 74
    sget v0, Lcig$l;->TextCell_indicator:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 75
    .local v7, "indicator":Z
    sget v0, Lcig$l;->TextCell_indicator_type:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v11

    .line 76
    .local v11, "type":I
    sget v0, Lcig$l;->TextCell_indicator_count:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    .line 77
    .local v6, "count":I
    sget v0, Lcig$l;->TextCell_indicator_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 78
    .local v8, "text":Ljava/lang/String;
    invoke-static {v11}, Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;->fromValue(I)Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;

    move-result-object v12

    .line 79
    .local v12, "typeEnum":Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;
    invoke-static {v12, v7, v6, v8}, Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator;->a(Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;ZILjava/lang/String;)Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator;

    move-result-object v13

    .line 82
    .local v13, "unread":Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator;
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    invoke-virtual {v0, v13}, Lcnk;->a(Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator;)V

    .line 83
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    sget v1, Lcig$l;->TextCell_title:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcnk;->a(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    sget v1, Lcig$l;->TextCell_subTitle:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcnk;->b(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    sget v1, Lcig$l;->TextCell_tips:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcnk;->c(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    sget v1, Lcig$l;->TextCell_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcnk;->d(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    sget v1, Lcig$l;->TextCell_left_image:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcnk;->a(I)V

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    sget v1, Lcig$l;->TextCell_right_image:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcnk;->b(I)V

    .line 89
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcnk;->b(Z)V

    .line 90
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(Lcnk;)V

    .line 93
    sget v0, Lcig$l;->TextCell_titleSize:I

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    .line 94
    .local v10, "textSize":F
    sget v0, Lcig$l;->TextCell_titleColor:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 95
    .local v9, "textColor":Landroid/content/res/ColorStateList;
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a:Landroid/widget/TextView;

    invoke-static {v0, v10}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(Landroid/widget/TextView;F)V

    .line 96
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a:Landroid/widget/TextView;

    invoke-static {v0, v9}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 98
    sget v0, Lcig$l;->TextCell_subTitleSize:I

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    .line 99
    sget v0, Lcig$l;->TextCell_subTitleColor:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 100
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->f:Landroid/widget/TextView;

    invoke-static {v0, v10}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(Landroid/widget/TextView;F)V

    .line 101
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->f:Landroid/widget/TextView;

    invoke-static {v0, v9}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 103
    sget v0, Lcig$l;->TextCell_tipsSize:I

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    .line 104
    sget v0, Lcig$l;->TextCell_tipsColor:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 105
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->g:Landroid/widget/TextView;

    invoke-static {v0, v10}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(Landroid/widget/TextView;F)V

    .line 106
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->g:Landroid/widget/TextView;

    invoke-static {v0, v9}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 108
    sget v0, Lcig$l;->TextCell_contentSize:I

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    .line 109
    sget v0, Lcig$l;->TextCell_contentColor:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 110
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->h:Landroid/widget/TextView;

    invoke-static {v0, v10}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(Landroid/widget/TextView;F)V

    .line 111
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->h:Landroid/widget/TextView;

    invoke-static {v0, v9}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 112
    return-void

    .line 89
    .end local v9    # "textColor":Landroid/content/res/ColorStateList;
    .end local v10    # "textSize":F
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcnk;)V
    .locals 2
    .param p1, "model"    # Lcnk;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 285
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->a(Lcnk;)V

    .line 286
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    invoke-virtual {v1}, Lcnk;->e()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(Landroid/widget/ImageView;I)V

    .line 287
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    invoke-virtual {v0}, Lcnk;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    invoke-virtual {v1}, Lcnk;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->k:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    invoke-virtual {v1}, Lcnk;->f()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(Landroid/widget/ImageView;I)V

    .line 291
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    invoke-virtual {v0}, Lcnk;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->k:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    invoke-virtual {v1}, Lcnk;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    invoke-virtual {v1}, Lcnk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    invoke-virtual {v1}, Lcnk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    invoke-virtual {v1}, Lcnk;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    invoke-virtual {v1}, Lcnk;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->d:Lcnk;

    invoke-virtual {v1}, Lcnk;->i()Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(Landroid/widget/TextView;Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator;)V

    .line 299
    return-void
.end method

.method protected getLayout()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lcig$h;->cell_layout_text:I

    return v0
.end method

.method protected getStyleable()[I
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcig$l;->TextCell:[I

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

    .line 169
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->getPaddingLeft()I

    move-result v0

    .line 171
    .local v0, "currentLeft":I
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->j:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-eq v6, v8, :cond_0

    .line 172
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->j:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(I)I

    move-result v1

    .line 173
    .local v1, "currentTop":I
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->j:Landroid/widget/ImageView;

    invoke-virtual {p0, v6, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(Landroid/view/View;II)V

    .line 176
    .end local v1    # "currentTop":I
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->getPaddingRight()I

    move-result v2

    .line 177
    .local v2, "tempWidth":I
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->k:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-eq v6, v8, :cond_1

    .line 178
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->k:Landroid/widget/ImageView;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->b(Landroid/view/View;)I

    move-result v6

    add-int/2addr v2, v6

    .line 179
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->k:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(I)I

    move-result v1

    .line 180
    .restart local v1    # "currentTop":I
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->k:Landroid/widget/ImageView;

    sub-int v7, p4, p2

    sub-int/2addr v7, v2

    invoke-virtual {p0, v6, v7, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(Landroid/view/View;II)V

    .line 183
    .end local v1    # "currentTop":I
    :cond_1
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->i:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-eq v6, v8, :cond_2

    .line 184
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->i:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->b(Landroid/view/View;)I

    move-result v6

    add-int/2addr v2, v6

    .line 185
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->i:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(I)I

    move-result v1

    .line 186
    .restart local v1    # "currentTop":I
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->i:Landroid/widget/TextView;

    sub-int v7, p4, p2

    sub-int/2addr v7, v2

    invoke-virtual {p0, v6, v7, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(Landroid/view/View;II)V

    .line 189
    .end local v1    # "currentTop":I
    :cond_2
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->h:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-eq v6, v8, :cond_3

    .line 190
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->h:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->b(Landroid/view/View;)I

    move-result v6

    add-int/2addr v2, v6

    .line 191
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->h:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(I)I

    move-result v1

    .line 192
    .restart local v1    # "currentTop":I
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->h:Landroid/widget/TextView;

    sub-int v7, p4, p2

    sub-int/2addr v7, v2

    invoke-virtual {p0, v6, v7, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(Landroid/view/View;II)V

    .line 197
    .end local v1    # "currentTop":I
    :cond_3
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->c(Landroid/view/View;)I

    move-result v4

    .line 199
    .local v4, "titleMeasureHeight":I
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->f:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-eq v6, v8, :cond_6

    .line 200
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v6, v4

    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->f:Landroid/widget/TextView;

    .line 201
    invoke-static {v7}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->c(Landroid/view/View;)I

    move-result v7

    sub-int/2addr v6, v7

    shr-int/lit8 v5, v6, 0x1

    .line 202
    .local v5, "titleTop":I
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->g:Landroid/widget/TextView;

    .line 203
    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->c(Landroid/view/View;)I

    move-result v6

    sub-int v6, v4, v6

    shr-int/lit8 v6, v6, 0x1

    add-int v3, v5, v6

    .line 209
    .local v3, "tipsTop":I
    :goto_0
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->j:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-eq v6, v8, :cond_7

    .line 210
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->getPaddingLeft()I

    move-result v6

    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->j:Landroid/widget/ImageView;

    invoke-static {v7}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(Landroid/view/View;)I

    move-result v7

    add-int v0, v6, v7

    .line 215
    :goto_1
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v6, v0, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(Landroid/view/View;II)V

    .line 216
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->setContentCoordinate(I)V

    .line 218
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->f:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-eq v6, v8, :cond_4

    .line 219
    add-int/2addr v5, v4

    .line 220
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->f:Landroid/widget/TextView;

    invoke-virtual {p0, v6, v0, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(Landroid/view/View;II)V

    .line 223
    :cond_4
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->g:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-eq v6, v8, :cond_5

    .line 224
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->b(Landroid/view/View;)I

    move-result v6

    add-int/2addr v0, v6

    .line 225
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->g:Landroid/widget/TextView;

    invoke-virtual {p0, v6, v0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(Landroid/view/View;II)V

    .line 227
    :cond_5
    return-void

    .line 205
    .end local v3    # "tipsTop":I
    .end local v5    # "titleTop":I
    :cond_6
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(I)I

    move-result v5

    .line 206
    .restart local v5    # "titleTop":I
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->g:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(I)I

    move-result v3

    .restart local v3    # "tipsTop":I
    goto :goto_0

    .line 212
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->getPaddingLeft()I

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
    .line 127
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 132
    .local v13, "widthSize":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->j:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(Landroid/view/View;IIII)I

    move-result v0

    add-int/lit8 v3, v0, 0x0

    .line 136
    .local v3, "widthUsed":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->k:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(Landroid/view/View;IIII)I

    move-result v0

    add-int/2addr v3, v0

    .line 140
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->i:Landroid/widget/TextView;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(Landroid/view/View;IIII)I

    move-result v0

    add-int/2addr v3, v0

    .line 144
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->h:Landroid/widget/TextView;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(Landroid/view/View;IIII)I

    move-result v0

    add-int/2addr v3, v0

    .line 148
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a:Landroid/widget/TextView;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->b(Landroid/view/View;IIII)I

    move-result v0

    add-int/lit8 v5, v0, 0x0

    .line 152
    .local v5, "heightUsed":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->f:Landroid/widget/TextView;

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->b(Landroid/view/View;IIII)I

    move-result v0

    add-int/2addr v5, v0

    .line 156
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->b(Landroid/view/View;)I

    move-result v0

    add-int/2addr v3, v0

    .line 157
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->g:Landroid/widget/TextView;

    const/4 v11, 0x0

    move-object v6, p0

    move v8, p1

    move v9, v3

    move/from16 v10, p2

    invoke-virtual/range {v6 .. v11}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(Landroid/view/View;IIII)I

    .line 161
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->j:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->c(Landroid/view/View;)I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 162
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->getPaddingBottom()I

    move-result v1

    add-int v12, v0, v1

    .line 163
    .local v12, "heightSize":I
    invoke-virtual {p0, v13, v12}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->setMeasuredDimension(II)V

    .line 164
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->h:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public setIndicator(Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator;)V
    .locals 1
    .param p1, "indicator"    # Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->i:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(Landroid/widget/TextView;Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator;)V

    .line 281
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "subTitle"    # Ljava/lang/String;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->f:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public setTips(Ljava/lang/String;)V
    .locals 1
    .param p1, "tips"    # Ljava/lang/String;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->g:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 231
    return-void
.end method
