.class public final Lkfd;
.super Landroid/view/animation/Animation;
.source "StoreHouseBarItem.java"


# instance fields
.field public a:F

.field public final b:Landroid/graphics/Paint;

.field private c:F

.field private d:F


# virtual methods
.method public final a(F)V
    .locals 2
    .param p1, "alpha"    # F

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 68
    iget-object v0, p0, Lkfd;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 69
    return-void
.end method

.method public final a(FF)V
    .locals 0
    .param p1, "fromAlpha"    # F
    .param p2, "toAlpha"    # F

    .prologue
    .line 62
    iput p1, p0, Lkfd;->c:F

    .line 63
    iput p2, p0, Lkfd;->d:F

    .line 64
    invoke-super {p0}, Landroid/view/animation/Animation;->start()V

    .line 65
    return-void
.end method

.method public final a(I)V
    .locals 3
    .param p1, "horizontalRandomness"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 49
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 50
    .local v0, "random":Ljava/util/Random;
    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    neg-int v2, v2

    add-int v1, v2, p1

    .line 51
    .local v1, "randomNumber":I
    int-to-float v2, v1

    iput v2, p0, Lkfd;->a:F

    .line 52
    return-void
.end method

.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 56
    iget v0, p0, Lkfd;->c:F

    .line 57
    .local v0, "alpha":F
    iget v1, p0, Lkfd;->d:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 58
    invoke-virtual {p0, v0}, Lkfd;->a(F)V

    .line 59
    return-void
.end method
