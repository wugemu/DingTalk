.class abstract Lcom/taobao/weex/ui/view/border/BorderCorner;
.super Ljava/lang/Object;
.source "BorderCorner.java"


# static fields
.field static final SWEEP_ANGLE:F = 45.0f


# instance fields
.field private hasInnerCorner:Z

.field private hasOuterCorner:Z

.field protected mAngleBisector:F

.field private mBorderBox:Landroid/graphics/RectF;

.field private mCornerRadius:F

.field private mOvalBottom:F

.field private mOvalLeft:F

.field private mOvalRight:F

.field private mOvalTop:F

.field private mPostBorderWidth:F

.field private mPreBorderWidth:F

.field private mRoundCornerEndX:F

.field private mRoundCornerEndY:F

.field private mRoundCornerStartX:F

.field private mRoundCornerStartY:F


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mCornerRadius:F

    .line 34
    iput v0, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mPreBorderWidth:F

    .line 35
    iput v0, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mPostBorderWidth:F

    .line 43
    iput-boolean v1, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->hasInnerCorner:Z

    .line 48
    iput-boolean v1, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->hasOuterCorner:Z

    .line 56
    return-void
.end method


# virtual methods
.method public final drawRoundedCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "paint"    # Landroid/graphics/Paint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "startAngle"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x42340000    # 45.0f

    .line 95
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderCorner;->hasOuterCorner()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 104
    iget v1, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mOvalLeft:F

    iget v2, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mOvalTop:F

    iget v3, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mOvalRight:F

    iget v4, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mOvalBottom:F

    move-object v0, p1

    move v5, p3

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 114
    :goto_0
    return-void

    .line 107
    :cond_0
    new-instance v4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mOvalLeft:F

    iget v1, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mOvalTop:F

    iget v2, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mOvalRight:F

    iget v3, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mOvalBottom:F

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v3, p1

    move v5, p3

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderCorner;->getRoundCornerStartX()F

    move-result v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderCorner;->getRoundCornerStartY()F

    move-result v2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderCorner;->getRoundCornerEndX()F

    move-result v3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderCorner;->getRoundCornerEndY()F

    move-result v4

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected final getAngleBisectorDegree()F
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mAngleBisector:F

    return v0
.end method

.method protected final getBorderBox()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mBorderBox:Landroid/graphics/RectF;

    return-object v0
.end method

.method protected final getOuterCornerRadius()F
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mCornerRadius:F

    return v0
.end method

.method protected final getPostBorderWidth()F
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mPostBorderWidth:F

    return v0
.end method

.method protected final getPreBorderWidth()F
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mPreBorderWidth:F

    return v0
.end method

.method public final getRoundCornerEndX()F
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mRoundCornerEndX:F

    return v0
.end method

.method public final getRoundCornerEndY()F
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mRoundCornerEndY:F

    return v0
.end method

.method public final getRoundCornerStartX()F
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mRoundCornerStartX:F

    return v0
.end method

.method public final getRoundCornerStartY()F
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mRoundCornerStartY:F

    return v0
.end method

.method hasInnerCorner()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->hasInnerCorner:Z

    return v0
.end method

.method hasOuterCorner()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->hasOuterCorner:Z

    return v0
.end method

.method protected abstract prepareOval()V
.end method

.method protected abstract prepareRoundCorner()V
.end method

.method final set(FFFLandroid/graphics/RectF;F)V
    .locals 5
    .param p1, "cornerRadius"    # F
    .param p2, "preBorderWidth"    # F
    .param p3, "postBorderWidth"    # F
    .param p4, "borderBox"    # Landroid/graphics/RectF;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "angleBisector"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 60
    iget v1, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mCornerRadius:F

    invoke-static {v1, p1}, Lcom/taobao/weex/base/FloatUtil;->floatsEqual(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mPreBorderWidth:F

    .line 61
    invoke-static {v1, p2}, Lcom/taobao/weex/base/FloatUtil;->floatsEqual(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mPostBorderWidth:F

    .line 62
    invoke-static {v1, p3}, Lcom/taobao/weex/base/FloatUtil;->floatsEqual(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mAngleBisector:F

    .line 63
    invoke-static {v1, p5}, Lcom/taobao/weex/base/FloatUtil;->floatsEqual(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mBorderBox:Landroid/graphics/RectF;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mBorderBox:Landroid/graphics/RectF;

    .line 64
    invoke-virtual {v1, p4}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    move v0, v2

    .line 66
    .local v0, "dirty":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 67
    iput p1, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mCornerRadius:F

    .line 68
    iput p2, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mPreBorderWidth:F

    .line 69
    iput p3, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mPostBorderWidth:F

    .line 70
    iput-object p4, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mBorderBox:Landroid/graphics/RectF;

    .line 71
    iput p5, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mAngleBisector:F

    .line 73
    iget v1, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mCornerRadius:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_4

    iget v1, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mCornerRadius:F

    invoke-static {v4, v1}, Lcom/taobao/weex/base/FloatUtil;->floatsEqual(FF)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->hasOuterCorner:Z

    .line 75
    iget-boolean v1, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->hasOuterCorner:Z

    if-eqz v1, :cond_5

    .line 76
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderCorner;->getPreBorderWidth()F

    move-result v1

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_5

    .line 77
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderCorner;->getPostBorderWidth()F

    move-result v1

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_5

    .line 78
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderCorner;->getOuterCornerRadius()F

    move-result v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderCorner;->getPreBorderWidth()F

    move-result v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_5

    .line 79
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderCorner;->getOuterCornerRadius()F

    move-result v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderCorner;->getPostBorderWidth()F

    move-result v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_5

    :goto_2
    iput-boolean v2, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->hasInnerCorner:Z

    .line 81
    iget-boolean v1, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->hasOuterCorner:Z

    if-eqz v1, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderCorner;->prepareOval()V

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderCorner;->prepareRoundCorner()V

    .line 86
    :cond_2
    return-void

    .end local v0    # "dirty":Z
    :cond_3
    move v0, v3

    .line 64
    goto :goto_0

    .restart local v0    # "dirty":Z
    :cond_4
    move v1, v3

    .line 73
    goto :goto_1

    :cond_5
    move v2, v3

    .line 79
    goto :goto_2
.end method

.method final setOvalBottom(F)V
    .locals 0
    .param p1, "mOvalBottom"    # F

    .prologue
    .line 162
    iput p1, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mOvalBottom:F

    .line 163
    return-void
.end method

.method final setOvalLeft(F)V
    .locals 0
    .param p1, "mOvalLeft"    # F

    .prologue
    .line 150
    iput p1, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mOvalLeft:F

    .line 151
    return-void
.end method

.method final setOvalRight(F)V
    .locals 0
    .param p1, "mOvalRight"    # F

    .prologue
    .line 158
    iput p1, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mOvalRight:F

    .line 159
    return-void
.end method

.method final setOvalTop(F)V
    .locals 0
    .param p1, "mOvalTop"    # F

    .prologue
    .line 154
    iput p1, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mOvalTop:F

    .line 155
    return-void
.end method

.method final setRoundCornerEndX(F)V
    .locals 0
    .param p1, "mRoundCornerEndX"    # F

    .prologue
    .line 138
    iput p1, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mRoundCornerEndX:F

    .line 139
    return-void
.end method

.method final setRoundCornerEndY(F)V
    .locals 0
    .param p1, "mRoundCornerEndY"    # F

    .prologue
    .line 146
    iput p1, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mRoundCornerEndY:F

    .line 147
    return-void
.end method

.method final setRoundCornerStartX(F)V
    .locals 0
    .param p1, "roundCornerStartX"    # F

    .prologue
    .line 122
    iput p1, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mRoundCornerStartX:F

    .line 123
    return-void
.end method

.method final setRoundCornerStartY(F)V
    .locals 0
    .param p1, "roundCornerStartY"    # F

    .prologue
    .line 130
    iput p1, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mRoundCornerStartY:F

    .line 131
    return-void
.end method
