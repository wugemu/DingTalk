.class public Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;
.super Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;
.source "AvatarCell.java"


# instance fields
.field public a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ImageView;


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
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 112
    sget v0, Lcig$f;->cell_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->f:Landroid/widget/TextView;

    .line 113
    sget v0, Lcig$f;->cell_subTitle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->g:Landroid/widget/TextView;

    .line 114
    sget v0, Lcig$f;->cell_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->h:Landroid/widget/TextView;

    .line 115
    sget v0, Lcig$f;->cell_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->i:Landroid/widget/TextView;

    .line 116
    sget v0, Lcig$f;->cell_indicator:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->j:Landroid/widget/TextView;

    .line 117
    sget v0, Lcig$f;->cell_left_avatar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 118
    sget v0, Lcig$f;->cell_right_image:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->k:Landroid/widget/ImageView;

    .line 120
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setTextSize(F)V

    .line 121
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v1, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->c:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setTFSImageSize(I)V

    .line 122
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 2
    .param p1, "res"    # I
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 278
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->k:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(Landroid/widget/ImageView;I)V

    .line 279
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->k:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 282
    :cond_0
    return-void
.end method

.method protected final a(Landroid/content/res/TypedArray;)V
    .locals 14
    .param p1, "t"    # Landroid/content/res/TypedArray;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 68
    sget v2, Lcig$l;->AvatarCell_visibility_topDivider:I

    sget v3, Lcig$l;->AvatarCell_align_topDivider:I

    sget v4, Lcig$l;->AvatarCell_visibility_bottomDivider:I

    sget v5, Lcig$l;->AvatarCell_align_bottomDivider:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(Landroid/content/res/TypedArray;IIII)V

    .line 74
    sget v0, Lcig$l;->AvatarCell_indicator:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 75
    .local v7, "indicator":Z
    sget v0, Lcig$l;->AvatarCell_indicator_type:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v11

    .line 76
    .local v11, "type":I
    sget v0, Lcig$l;->AvatarCell_indicator_count:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    .line 77
    .local v6, "count":I
    sget v0, Lcig$l;->AvatarCell_indicator_text:I

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

    .line 81
    .local v13, "unreadIndicator":Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator;
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->j:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v13}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(Landroid/widget/TextView;Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator;)V

    .line 82
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->k:Landroid/widget/ImageView;

    sget v1, Lcig$l;->AvatarCell_right_image:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(Landroid/widget/ImageView;I)V

    .line 83
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->f:Landroid/widget/TextView;

    sget v1, Lcig$l;->AvatarCell_title:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->g:Landroid/widget/TextView;

    sget v1, Lcig$l;->AvatarCell_subTitle:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->h:Landroid/widget/TextView;

    sget v1, Lcig$l;->AvatarCell_tips:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->i:Landroid/widget/TextView;

    sget v1, Lcig$l;->AvatarCell_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 89
    sget v0, Lcig$l;->AvatarCell_titleSize:I

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    .line 90
    .local v10, "textSize":F
    sget v0, Lcig$l;->AvatarCell_titleColor:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 91
    .local v9, "textColor":Landroid/content/res/ColorStateList;
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->f:Landroid/widget/TextView;

    invoke-static {v0, v10}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(Landroid/widget/TextView;F)V

    .line 92
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->f:Landroid/widget/TextView;

    invoke-static {v0, v9}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 94
    sget v0, Lcig$l;->AvatarCell_subTitleSize:I

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    .line 95
    sget v0, Lcig$l;->AvatarCell_subTitleColor:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 96
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->g:Landroid/widget/TextView;

    invoke-static {v0, v10}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(Landroid/widget/TextView;F)V

    .line 97
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->g:Landroid/widget/TextView;

    invoke-static {v0, v9}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 99
    sget v0, Lcig$l;->AvatarCell_tipsSize:I

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    .line 100
    sget v0, Lcig$l;->AvatarCell_tipsColor:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 101
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->h:Landroid/widget/TextView;

    invoke-static {v0, v10}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(Landroid/widget/TextView;F)V

    .line 102
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->h:Landroid/widget/TextView;

    invoke-static {v0, v9}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 104
    sget v0, Lcig$l;->AvatarCell_contentSize:I

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    .line 105
    sget v0, Lcig$l;->AvatarCell_contentColor:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 106
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->i:Landroid/widget/TextView;

    invoke-static {v0, v10}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(Landroid/widget/TextView;F)V

    .line 107
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->i:Landroid/widget/TextView;

    invoke-static {v0, v9}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 108
    return-void
.end method

.method protected getLayout()I
    .locals 1

    .prologue
    .line 63
    sget v0, Lcig$h;->cell_layout_avatar:I

    return v0
.end method

.method protected getStyleable()[I
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcig$l;->AvatarCell:[I

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

    .line 168
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->getPaddingLeft()I

    move-result v0

    .line 170
    .local v0, "currentLeft":I
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getVisibility()I

    move-result v6

    if-eq v6, v8, :cond_0

    .line 171
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(I)I

    move-result v1

    .line 172
    .local v1, "currentTop":I
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {p0, v6, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(Landroid/view/View;II)V

    .line 175
    .end local v1    # "currentTop":I
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->getPaddingRight()I

    move-result v2

    .line 176
    .local v2, "tempWidth":I
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->k:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-eq v6, v8, :cond_1

    .line 177
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->k:Landroid/widget/ImageView;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->b(Landroid/view/View;)I

    move-result v6

    add-int/2addr v2, v6

    .line 178
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->k:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(I)I

    move-result v1

    .line 179
    .restart local v1    # "currentTop":I
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->k:Landroid/widget/ImageView;

    sub-int v7, p4, p2

    sub-int/2addr v7, v2

    invoke-virtual {p0, v6, v7, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(Landroid/view/View;II)V

    .line 182
    .end local v1    # "currentTop":I
    :cond_1
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->j:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-eq v6, v8, :cond_2

    .line 183
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->j:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->b(Landroid/view/View;)I

    move-result v6

    add-int/2addr v2, v6

    .line 184
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->j:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(I)I

    move-result v1

    .line 185
    .restart local v1    # "currentTop":I
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->j:Landroid/widget/TextView;

    sub-int v7, p4, p2

    sub-int/2addr v7, v2

    invoke-virtual {p0, v6, v7, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(Landroid/view/View;II)V

    .line 188
    .end local v1    # "currentTop":I
    :cond_2
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->i:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-eq v6, v8, :cond_3

    .line 189
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->i:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->b(Landroid/view/View;)I

    move-result v6

    add-int/2addr v2, v6

    .line 190
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->i:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(I)I

    move-result v1

    .line 191
    .restart local v1    # "currentTop":I
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->i:Landroid/widget/TextView;

    sub-int v7, p4, p2

    sub-int/2addr v7, v2

    invoke-virtual {p0, v6, v7, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(Landroid/view/View;II)V

    .line 196
    .end local v1    # "currentTop":I
    :cond_3
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->f:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->c(Landroid/view/View;)I

    move-result v4

    .line 198
    .local v4, "titleMeasureHeight":I
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->g:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-eq v6, v8, :cond_6

    .line 199
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v6, v4

    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->g:Landroid/widget/TextView;

    .line 200
    invoke-static {v7}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->c(Landroid/view/View;)I

    move-result v7

    sub-int/2addr v6, v7

    shr-int/lit8 v5, v6, 0x1

    .line 201
    .local v5, "titleTop":I
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->h:Landroid/widget/TextView;

    .line 202
    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->c(Landroid/view/View;)I

    move-result v6

    sub-int v6, v4, v6

    shr-int/lit8 v6, v6, 0x1

    add-int v3, v5, v6

    .line 208
    .local v3, "tipsTop":I
    :goto_0
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getVisibility()I

    move-result v6

    if-eq v6, v8, :cond_7

    .line 209
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->getPaddingLeft()I

    move-result v6

    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-static {v7}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(Landroid/view/View;)I

    move-result v7

    add-int v0, v6, v7

    .line 214
    :goto_1
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->f:Landroid/widget/TextView;

    invoke-virtual {p0, v6, v0, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(Landroid/view/View;II)V

    .line 215
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->setContentCoordinate(I)V

    .line 217
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->g:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-eq v6, v8, :cond_4

    .line 218
    add-int/2addr v5, v4

    .line 219
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->g:Landroid/widget/TextView;

    invoke-virtual {p0, v6, v0, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(Landroid/view/View;II)V

    .line 222
    :cond_4
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->h:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-eq v6, v8, :cond_5

    .line 223
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->f:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->b(Landroid/view/View;)I

    move-result v6

    add-int/2addr v0, v6

    .line 224
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->h:Landroid/widget/TextView;

    invoke-virtual {p0, v6, v0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(Landroid/view/View;II)V

    .line 226
    :cond_5
    return-void

    .line 204
    .end local v3    # "tipsTop":I
    .end local v5    # "titleTop":I
    :cond_6
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->f:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(I)I

    move-result v5

    .line 205
    .restart local v5    # "titleTop":I
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->h:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(I)I

    move-result v3

    .restart local v3    # "tipsTop":I
    goto :goto_0

    .line 211
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->getPaddingLeft()I

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
    .line 126
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 131
    .local v13, "widthSize":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(Landroid/view/View;IIII)I

    move-result v0

    add-int/lit8 v3, v0, 0x0

    .line 135
    .local v3, "widthUsed":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->k:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(Landroid/view/View;IIII)I

    move-result v0

    add-int/2addr v3, v0

    .line 139
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->j:Landroid/widget/TextView;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(Landroid/view/View;IIII)I

    move-result v0

    add-int/2addr v3, v0

    .line 143
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->i:Landroid/widget/TextView;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(Landroid/view/View;IIII)I

    move-result v0

    add-int/2addr v3, v0

    .line 147
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->f:Landroid/widget/TextView;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->b(Landroid/view/View;IIII)I

    move-result v0

    add-int/lit8 v5, v0, 0x0

    .line 151
    .local v5, "heightUsed":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->g:Landroid/widget/TextView;

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->b(Landroid/view/View;IIII)I

    move-result v0

    add-int/2addr v5, v0

    .line 155
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->f:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->b(Landroid/view/View;)I

    move-result v0

    add-int/2addr v3, v0

    .line 156
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->h:Landroid/widget/TextView;

    const/4 v11, 0x0

    move-object v6, p0

    move v8, p1

    move v9, v3

    move/from16 v10, p2

    invoke-virtual/range {v6 .. v11}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(Landroid/view/View;IIII)I

    .line 160
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->c(Landroid/view/View;)I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 161
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->getPaddingBottom()I

    move-result v1

    add-int v12, v0, v1

    .line 162
    .local v12, "heightSize":I
    invoke-virtual {p0, v13, v12}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->setMeasuredDimension(II)V

    .line 163
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->i:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public setIndicator(Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator;)V
    .locals 1
    .param p1, "indicator"    # Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->j:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(Landroid/widget/TextView;Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator;)V

    .line 286
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "subTitle"    # Ljava/lang/String;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->g:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public setTips(Ljava/lang/String;)V
    .locals 1
    .param p1, "tips"    # Ljava/lang/String;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->h:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->f:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/AvatarCell;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 263
    return-void
.end method
