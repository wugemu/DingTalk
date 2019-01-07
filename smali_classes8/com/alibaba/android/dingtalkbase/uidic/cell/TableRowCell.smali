.class public Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;
.super Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;
.source "TableRowCell.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/view/View;


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
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method protected final a(Landroid/content/res/TypedArray;)V
    .locals 7
    .param p1, "t"    # Landroid/content/res/TypedArray;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 66
    sget v2, Lcig$l;->TableRowCell_visibility_topDivider:I

    sget v3, Lcig$l;->TableRowCell_align_topDivider:I

    sget v4, Lcig$l;->TableRowCell_visibility_bottomDivider:I

    sget v5, Lcig$l;->TableRowCell_align_bottomDivider:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->a(Landroid/content/res/TypedArray;IIII)V

    .line 72
    sget v0, Lcig$f;->cell_middle_divider:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->m:Landroid/view/View;

    .line 73
    sget v0, Lcig$f;->cell_left_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->a:Landroid/widget/TextView;

    .line 74
    sget v0, Lcig$f;->cell_left_subTitle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->g:Landroid/widget/TextView;

    .line 75
    sget v0, Lcig$f;->cell_left_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->f:Landroid/widget/TextView;

    .line 76
    sget v0, Lcig$f;->cell_left_image:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->h:Landroid/widget/ImageView;

    .line 78
    sget v0, Lcig$f;->cell_right_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->i:Landroid/widget/TextView;

    .line 79
    sget v0, Lcig$f;->cell_right_subTitle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->k:Landroid/widget/TextView;

    .line 80
    sget v0, Lcig$f;->cell_right_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->j:Landroid/widget/TextView;

    .line 81
    sget v0, Lcig$f;->cell_right_image:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->l:Landroid/widget/ImageView;

    .line 83
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->a:Landroid/widget/TextView;

    sget v1, Lcig$l;->TableRowCell_leftTitle:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->g:Landroid/widget/TextView;

    sget v1, Lcig$l;->TableRowCell_leftSubTitle:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->f:Landroid/widget/TextView;

    sget v1, Lcig$l;->TableRowCell_leftTips:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->h:Landroid/widget/ImageView;

    sget v1, Lcig$l;->TableRowCell_left_image:I

    invoke-virtual {p1, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->a(Landroid/widget/ImageView;I)V

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->i:Landroid/widget/TextView;

    sget v1, Lcig$l;->TableRowCell_rightTitle:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->k:Landroid/widget/TextView;

    sget v1, Lcig$l;->TableRowCell_rightSubTitle:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->j:Landroid/widget/TextView;

    sget v1, Lcig$l;->TableRowCell_rightTips:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->l:Landroid/widget/ImageView;

    sget v1, Lcig$l;->TableRowCell_right_image:I

    invoke-virtual {p1, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->a(Landroid/widget/ImageView;I)V

    .line 92
    return-void
.end method

.method public final a(Lcnk;)V
    .locals 0
    .param p1, "model"    # Lcnk;

    .prologue
    .line 236
    return-void
.end method

.method protected getLayout()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lcig$h;->cell_layout_tablerow:I

    return v0
.end method

.method protected getStyleable()[I
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcig$l;->TableRowCell:[I

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v7, 0x8

    .line 159
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->getPaddingLeft()I

    move-result v0

    .line 161
    .local v0, "currentLeft":I
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->h:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-eq v5, v7, :cond_0

    .line 162
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->h:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->a(I)I

    move-result v1

    .line 163
    .local v1, "currentTop":I
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->h:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->a(Landroid/view/View;II)V

    .line 164
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->h:Landroid/widget/ImageView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->a(Landroid/view/View;)I

    move-result v5

    add-int/2addr v0, v5

    .line 167
    .end local v1    # "currentTop":I
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->setContentCoordinate(I)V

    .line 170
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->a:Landroid/widget/TextView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->c(Landroid/view/View;)I

    move-result v3

    .line 172
    .local v3, "titleMeasureHeight":I
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->g:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-eq v5, v7, :cond_8

    .line 173
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v5, v3

    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->g:Landroid/widget/TextView;

    .line 174
    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->c(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v5, v6

    shr-int/lit8 v4, v5, 0x1

    .line 175
    .local v4, "titleTop":I
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->f:Landroid/widget/TextView;

    .line 176
    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->c(Landroid/view/View;)I

    move-result v5

    sub-int v5, v3, v5

    shr-int/lit8 v5, v5, 0x1

    add-int v2, v4, v5

    .line 182
    .local v2, "tipsTop":I
    :goto_0
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->a:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-eq v5, v7, :cond_1

    .line 183
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v5, v0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->a(Landroid/view/View;II)V

    .line 186
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->g:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-eq v5, v7, :cond_2

    .line 187
    add-int/2addr v4, v3

    .line 188
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->g:Landroid/widget/TextView;

    invoke-virtual {p0, v5, v0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->a(Landroid/view/View;II)V

    .line 191
    :cond_2
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->f:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-eq v5, v7, :cond_3

    .line 192
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->a:Landroid/widget/TextView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->b(Landroid/view/View;)I

    move-result v5

    add-int/2addr v0, v5

    .line 193
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->f:Landroid/widget/TextView;

    invoke-virtual {p0, v5, v0, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->a(Landroid/view/View;II)V

    .line 196
    :cond_3
    sub-int v5, p4, p2

    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->m:Landroid/view/View;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->b(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v5, v6

    shr-int/lit8 v0, v5, 0x1

    .line 197
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->m:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->a(I)I

    move-result v1

    .line 198
    .restart local v1    # "currentTop":I
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->m:Landroid/view/View;

    invoke-virtual {p0, v5, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->a(Landroid/view/View;II)V

    .line 199
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->m:Landroid/view/View;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->b(Landroid/view/View;)I

    move-result v5

    add-int/2addr v0, v5

    .line 201
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->l:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-eq v5, v7, :cond_4

    .line 202
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->l:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->a(I)I

    move-result v1

    .line 203
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->l:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->a(Landroid/view/View;II)V

    .line 204
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->l:Landroid/widget/ImageView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->a(Landroid/view/View;)I

    move-result v5

    add-int/2addr v0, v5

    .line 207
    :cond_4
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->i:Landroid/widget/TextView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->c(Landroid/view/View;)I

    move-result v3

    .line 208
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->k:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-eq v5, v7, :cond_9

    .line 209
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v5, v3

    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->k:Landroid/widget/TextView;

    .line 210
    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->c(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v5, v6

    shr-int/lit8 v4, v5, 0x1

    .line 211
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->j:Landroid/widget/TextView;

    .line 212
    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->c(Landroid/view/View;)I

    move-result v5

    sub-int v5, v3, v5

    shr-int/lit8 v5, v5, 0x1

    add-int v2, v4, v5

    .line 218
    :goto_1
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->i:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-eq v5, v7, :cond_5

    .line 219
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->i:Landroid/widget/TextView;

    invoke-virtual {p0, v5, v0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->a(Landroid/view/View;II)V

    .line 222
    :cond_5
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->k:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-eq v5, v7, :cond_6

    .line 223
    add-int/2addr v4, v3

    .line 224
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->k:Landroid/widget/TextView;

    invoke-virtual {p0, v5, v0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->a(Landroid/view/View;II)V

    .line 227
    :cond_6
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->j:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-eq v5, v7, :cond_7

    .line 228
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->i:Landroid/widget/TextView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->b(Landroid/view/View;)I

    move-result v5

    add-int/2addr v0, v5

    .line 229
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->j:Landroid/widget/TextView;

    invoke-virtual {p0, v5, v0, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->a(Landroid/view/View;II)V

    .line 231
    :cond_7
    return-void

    .line 178
    .end local v1    # "currentTop":I
    .end local v2    # "tipsTop":I
    .end local v4    # "titleTop":I
    :cond_8
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->a:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->a(I)I

    move-result v4

    .line 179
    .restart local v4    # "titleTop":I
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->f:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->a(I)I

    move-result v2

    .restart local v2    # "tipsTop":I
    goto/16 :goto_0

    .line 214
    .restart local v1    # "currentTop":I
    :cond_9
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->i:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->a(I)I

    move-result v4

    .line 215
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->j:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->a(I)I

    move-result v2

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 101
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 107
    .local v14, "widthSize":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->h:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->a(Landroid/view/View;IIII)I

    move-result v0

    add-int/lit8 v3, v0, 0x0

    .line 111
    .local v3, "widthUsed":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->a:Landroid/widget/TextView;

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->b(Landroid/view/View;IIII)I

    move-result v0

    add-int/lit8 v5, v0, 0x0

    .line 115
    .local v5, "heightUsed":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->g:Landroid/widget/TextView;

    move-object v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->b(Landroid/view/View;IIII)I

    move-result v0

    add-int/2addr v5, v0

    .line 119
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->h:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->c(Landroid/view/View;)I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 121
    .local v13, "maxHeightUsed":I
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->a:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->b(Landroid/view/View;)I

    move-result v0

    add-int/2addr v3, v0

    .line 123
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->f:Landroid/widget/TextView;

    const/4 v11, 0x0

    move-object v6, p0

    move/from16 v8, p1

    move v9, v3

    move/from16 v10, p2

    invoke-virtual/range {v6 .. v11}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->a(Landroid/view/View;IIII)I

    move-result v0

    add-int/2addr v3, v0

    .line 127
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->m:Landroid/view/View;

    const/4 v11, 0x0

    move-object v6, p0

    move/from16 v8, p1

    move v9, v3

    move/from16 v10, p2

    invoke-virtual/range {v6 .. v11}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->a(Landroid/view/View;IIII)I

    move-result v0

    add-int/2addr v3, v0

    .line 131
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->l:Landroid/widget/ImageView;

    const/4 v11, 0x0

    move-object v6, p0

    move/from16 v8, p1

    move v9, v3

    move/from16 v10, p2

    invoke-virtual/range {v6 .. v11}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->a(Landroid/view/View;IIII)I

    move-result v0

    add-int/2addr v3, v0

    .line 135
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->i:Landroid/widget/TextView;

    const/4 v11, 0x0

    move-object v6, p0

    move/from16 v8, p1

    move v9, v3

    move/from16 v10, p2

    invoke-virtual/range {v6 .. v11}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->b(Landroid/view/View;IIII)I

    move-result v0

    add-int/lit8 v5, v0, 0x0

    .line 139
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->k:Landroid/widget/TextView;

    move-object v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->b(Landroid/view/View;IIII)I

    move-result v0

    add-int/2addr v5, v0

    .line 143
    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 145
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->i:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->b(Landroid/view/View;)I

    move-result v0

    add-int/2addr v3, v0

    .line 147
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->j:Landroid/widget/TextView;

    const/4 v11, 0x0

    move-object v6, p0

    move/from16 v8, p1

    move v9, v3

    move/from16 v10, p2

    invoke-virtual/range {v6 .. v11}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->a(Landroid/view/View;IIII)I

    .line 151
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->l:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->c(Landroid/view/View;)I

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 152
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v13

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->getPaddingBottom()I

    move-result v1

    add-int v12, v0, v1

    .line 153
    .local v12, "heightSize":I
    invoke-virtual {p0, v14, v12}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TableRowCell;->setMeasuredDimension(II)V

    .line 154
    return-void
.end method
