.class public Lcom/alibaba/alimei/widget/tab/utils/UnreadMsgUtils;
.super Ljava/lang/Object;
.source "UnreadMsgUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setSize(Landroid/widget/TextView;I)V
    .locals 1
    .param p0, "rtv"    # Landroid/widget/TextView;
    .param p1, "size"    # I

    .prologue
    .line 48
    if-nez p0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 52
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 53
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 54
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public static show(Landroid/widget/TextView;I)V
    .locals 8
    .param p0, "rtv"    # Landroid/widget/TextView;
    .param p1, "num"    # I

    .prologue
    const/4 v7, -0x2

    const/high16 v6, 0x41900000    # 18.0f

    const/high16 v3, 0x40a00000    # 5.0f

    const/high16 v5, 0x40c00000    # 6.0f

    const/4 v4, 0x0

    .line 17
    if-nez p0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 21
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 22
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    if-gtz p1, :cond_1

    .line 24
    const-string/jumbo v2, ""

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 27
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 43
    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 30
    :cond_1
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v6

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 31
    if-lez p1, :cond_2

    const/16 v2, 0xa

    if-ge p1, v2, :cond_2

    .line 32
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v6

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 34
    :cond_2
    const/16 v2, 0x9

    if-le p1, v2, :cond_3

    const/16 v2, 0x64

    if-ge p1, v2, :cond_3

    .line 35
    iput v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 36
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {p0, v2, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 39
    :cond_3
    iput v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 40
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {p0, v2, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 41
    const-string/jumbo v2, "99+"

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
