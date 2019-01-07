.class final Landroid/support/transition/ChangeTransform$c;
.super Ljava/lang/Object;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field final a:F

.field final b:F

.field final c:F

.field final d:F

.field final e:F

.field final f:F

.field final g:F

.field final h:F


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeTransform$c;->a:F

    .line 464
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeTransform$c;->b:F

    .line 465
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->o(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeTransform$c;->c:F

    .line 466
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeTransform$c;->d:F

    .line 467
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeTransform$c;->e:F

    .line 468
    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeTransform$c;->f:F

    .line 469
    invoke-virtual {p1}, Landroid/view/View;->getRotationY()F

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeTransform$c;->g:F

    .line 470
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeTransform$c;->h:F

    .line 471
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 474
    iget v1, p0, Landroid/support/transition/ChangeTransform$c;->a:F

    iget v2, p0, Landroid/support/transition/ChangeTransform$c;->b:F

    iget v3, p0, Landroid/support/transition/ChangeTransform$c;->c:F

    iget v4, p0, Landroid/support/transition/ChangeTransform$c;->d:F

    iget v5, p0, Landroid/support/transition/ChangeTransform$c;->e:F

    iget v6, p0, Landroid/support/transition/ChangeTransform$c;->f:F

    iget v7, p0, Landroid/support/transition/ChangeTransform$c;->g:F

    iget v8, p0, Landroid/support/transition/ChangeTransform$c;->h:F

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Landroid/support/transition/ChangeTransform;->a(Landroid/view/View;FFFFFFFF)V

    .line 476
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 480
    instance-of v2, p1, Landroid/support/transition/ChangeTransform$c;

    if-nez v2, :cond_1

    .line 484
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 483
    check-cast v0, Landroid/support/transition/ChangeTransform$c;

    .line 484
    .local v0, "thatTransform":Landroid/support/transition/ChangeTransform$c;
    iget v2, v0, Landroid/support/transition/ChangeTransform$c;->a:F

    iget v3, p0, Landroid/support/transition/ChangeTransform$c;->a:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, v0, Landroid/support/transition/ChangeTransform$c;->b:F

    iget v3, p0, Landroid/support/transition/ChangeTransform$c;->b:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, v0, Landroid/support/transition/ChangeTransform$c;->c:F

    iget v3, p0, Landroid/support/transition/ChangeTransform$c;->c:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, v0, Landroid/support/transition/ChangeTransform$c;->d:F

    iget v3, p0, Landroid/support/transition/ChangeTransform$c;->d:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, v0, Landroid/support/transition/ChangeTransform$c;->e:F

    iget v3, p0, Landroid/support/transition/ChangeTransform$c;->e:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, v0, Landroid/support/transition/ChangeTransform$c;->f:F

    iget v3, p0, Landroid/support/transition/ChangeTransform$c;->f:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, v0, Landroid/support/transition/ChangeTransform$c;->g:F

    iget v3, p0, Landroid/support/transition/ChangeTransform$c;->g:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, v0, Landroid/support/transition/ChangeTransform$c;->h:F

    iget v3, p0, Landroid/support/transition/ChangeTransform$c;->h:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 496
    iget v2, p0, Landroid/support/transition/ChangeTransform$c;->a:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/support/transition/ChangeTransform$c;->a:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 497
    .local v0, "code":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget v2, p0, Landroid/support/transition/ChangeTransform$c;->b:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/support/transition/ChangeTransform$c;->b:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 498
    mul-int/lit8 v3, v0, 0x1f

    iget v2, p0, Landroid/support/transition/ChangeTransform$c;->c:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/support/transition/ChangeTransform$c;->c:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 499
    mul-int/lit8 v3, v0, 0x1f

    iget v2, p0, Landroid/support/transition/ChangeTransform$c;->d:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_4

    iget v2, p0, Landroid/support/transition/ChangeTransform$c;->d:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 500
    mul-int/lit8 v3, v0, 0x1f

    iget v2, p0, Landroid/support/transition/ChangeTransform$c;->e:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_5

    iget v2, p0, Landroid/support/transition/ChangeTransform$c;->e:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 501
    mul-int/lit8 v3, v0, 0x1f

    iget v2, p0, Landroid/support/transition/ChangeTransform$c;->f:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_6

    iget v2, p0, Landroid/support/transition/ChangeTransform$c;->f:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :goto_5
    add-int v0, v3, v2

    .line 502
    mul-int/lit8 v3, v0, 0x1f

    iget v2, p0, Landroid/support/transition/ChangeTransform$c;->g:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_7

    iget v2, p0, Landroid/support/transition/ChangeTransform$c;->g:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :goto_6
    add-int v0, v3, v2

    .line 503
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Landroid/support/transition/ChangeTransform$c;->h:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    iget v1, p0, Landroid/support/transition/ChangeTransform$c;->h:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 504
    return v0

    .end local v0    # "code":I
    :cond_1
    move v0, v1

    .line 496
    goto :goto_0

    .restart local v0    # "code":I
    :cond_2
    move v2, v1

    .line 497
    goto :goto_1

    :cond_3
    move v2, v1

    .line 498
    goto :goto_2

    :cond_4
    move v2, v1

    .line 499
    goto :goto_3

    :cond_5
    move v2, v1

    .line 500
    goto :goto_4

    :cond_6
    move v2, v1

    .line 501
    goto :goto_5

    :cond_7
    move v2, v1

    .line 502
    goto :goto_6
.end method
