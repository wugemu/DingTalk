.class public Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;
.super Landroid/widget/ImageView;
.source "AspectRatioImageView.java"


# instance fields
.field private a:F

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    sget-object v1, Lctk$k;->AspectRatioImageView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 33
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lctk$k;->AspectRatioImageView_heightWidthRatio:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;->a:F

    .line 34
    sget v1, Lctk$k;->AspectRatioImageView_heightWidthRatioEnabled:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;->b:Z

    .line 36
    sget v1, Lctk$k;->AspectRatioImageView_dominantMeasurement:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;->c:I

    .line 38
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    return-void
.end method


# virtual methods
.method public getAspectRatio()F
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;->a:F

    return v0
.end method

.method public getDominantMeasurement()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;->c:I

    return v0
.end method

.method public getHeightWidthRatioEnabled()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;->b:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 42
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 43
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;->b:Z

    if-nez v2, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    iget v2, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;->c:I

    packed-switch v2, :pswitch_data_0

    .line 63
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unknown measurement with ID "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 49
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;->getMeasuredWidth()I

    move-result v1

    .line 50
    .local v1, "newWidth":I
    int-to-float v2, v1

    iget v3, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;->a:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 66
    .local v0, "newHeight":I
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 54
    .end local v0    # "newHeight":I
    .end local v1    # "newWidth":I
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;->getMeasuredHeight()I

    move-result v0

    .line 55
    .restart local v0    # "newHeight":I
    iget v2, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;->a:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 58
    int-to-float v2, v0

    iget v3, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;->a:F

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 60
    .restart local v1    # "newWidth":I
    goto :goto_1

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDominantMeasurement(I)V
    .locals 2
    .param p1, "dominantMeasurement"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 110
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid measurement type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    iput p1, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;->c:I

    .line 114
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;->b:Z

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;->requestLayout()V

    .line 117
    :cond_1
    return-void
.end method

.method public setHeightWidthRatio(F)V
    .locals 1
    .param p1, "aspectRatio"    # F

    .prologue
    .line 76
    iget v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;->a:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iput p1, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;->a:F

    .line 80
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;->b:Z

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;->requestLayout()V

    goto :goto_0
.end method

.method public setHeightWidthRatioEnabled(Z)V
    .locals 1
    .param p1, "heightWidthRatioEnabled"    # Z

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;->b:Z

    if-eq v0, p1, :cond_0

    .line 93
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;->b:Z

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;->requestLayout()V

    .line 96
    :cond_0
    return-void
.end method
