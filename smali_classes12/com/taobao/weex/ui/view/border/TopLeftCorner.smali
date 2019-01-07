.class Lcom/taobao/weex/ui/view/border/TopLeftCorner;
.super Lcom/taobao/weex/ui/view/border/BorderCorner;
.source "TopLeftCorner.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/border/BorderCorner;-><init>()V

    return-void
.end method


# virtual methods
.method protected prepareOval()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v1, 0x3fc00000    # 1.5f

    const/high16 v2, 0x40000000    # 2.0f

    .line 32
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->hasInnerCorner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->getPreBorderWidth()F

    move-result v0

    div-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->setOvalLeft(F)V

    .line 34
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->getPostBorderWidth()F

    move-result v0

    div-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->setOvalTop(F)V

    .line 35
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->getOuterCornerRadius()F

    move-result v0

    mul-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->getPreBorderWidth()F

    move-result v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->setOvalRight(F)V

    .line 36
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->getOuterCornerRadius()F

    move-result v0

    mul-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->getPostBorderWidth()F

    move-result v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->setOvalBottom(F)V

    .line 43
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->getOuterCornerRadius()F

    move-result v0

    div-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->setOvalLeft(F)V

    .line 39
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->getOuterCornerRadius()F

    move-result v0

    div-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->setOvalTop(F)V

    .line 40
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->getOuterCornerRadius()F

    move-result v0

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->setOvalRight(F)V

    .line 41
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->getOuterCornerRadius()F

    move-result v0

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->setOvalBottom(F)V

    goto :goto_0
.end method

.method protected prepareRoundCorner()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 47
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->hasOuterCorner()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->getPreBorderWidth()F

    move-result v2

    div-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->setRoundCornerStartX(F)V

    .line 49
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->getOuterCornerRadius()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->setRoundCornerStartY(F)V

    .line 51
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->getOuterCornerRadius()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->setRoundCornerEndX(F)V

    .line 52
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->getPostBorderWidth()F

    move-result v2

    div-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->setRoundCornerEndY(F)V

    .line 63
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->getPreBorderWidth()F

    move-result v2

    div-float v0, v2, v3

    .line 55
    .local v0, "x":F
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->getPostBorderWidth()F

    move-result v2

    div-float v1, v2, v3

    .line 57
    .local v1, "y":F
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->setRoundCornerStartX(F)V

    .line 58
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->setRoundCornerStartY(F)V

    .line 60
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->setRoundCornerEndX(F)V

    .line 61
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->setRoundCornerEndY(F)V

    goto :goto_0
.end method

.method set(FFFLandroid/graphics/RectF;)V
    .locals 6
    .param p1, "cornerRadius"    # F
    .param p2, "preBorderWidth"    # F
    .param p3, "postBorderWidth"    # F
    .param p4, "borderBox"    # Landroid/graphics/RectF;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 27
    const/high16 v5, 0x43610000    # 225.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->set(FFFLandroid/graphics/RectF;F)V

    .line 28
    return-void
.end method
