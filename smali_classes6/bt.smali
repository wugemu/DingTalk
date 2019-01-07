.class Lbt;
.super Ljava/lang/Object;
.source "ViewUtilsApi14.java"

# interfaces
.implements Lby;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation


# instance fields
.field private a:[F


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Lcc;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 37
    new-instance v0, Lca;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, v1}, Lca;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public a(Landroid/view/View;F)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "alpha"    # F

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 42
    sget v1, Lay$a;->save_non_transition_alpha:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 43
    .local v0, "savedAlpha":Ljava/lang/Float;
    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, p2

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 145
    invoke-virtual {p1, p2}, Landroid/view/View;->setLeft(I)V

    .line 146
    invoke-virtual {p1, p3}, Landroid/view/View;->setTop(I)V

    .line 147
    invoke-virtual {p1, p4}, Landroid/view/View;->setRight(I)V

    .line 148
    invoke-virtual {p1, p5}, Landroid/view/View;->setBottom(I)V

    .line 149
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "matrix"    # Landroid/graphics/Matrix;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 79
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 80
    check-cast v2, Landroid/view/View;

    .line 81
    .local v2, "vp":Landroid/view/View;
    invoke-virtual {p0, v2, p2}, Lbt;->a(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 82
    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 84
    .end local v2    # "vp":Landroid/view/View;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 86
    .local v1, "vm":Landroid/graphics/Matrix;
    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v3

    if-nez v3, :cond_1

    .line 87
    invoke-virtual {p2, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 89
    :cond_1
    return-void
.end method

.method public b(Landroid/view/View;)F
    .locals 3
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 52
    sget v1, Lay$a;->save_non_transition_alpha:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 53
    .local v0, "savedAlpha":Ljava/lang/Float;
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float/2addr v1, v2

    .line 56
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    goto :goto_0
.end method

.method public b(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "matrix"    # Landroid/graphics/Matrix;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 94
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v4, v1, Landroid/view/View;

    if-eqz v4, :cond_0

    move-object v3, v1

    .line 95
    check-cast v3, Landroid/view/View;

    .line 96
    .local v3, "vp":Landroid/view/View;
    invoke-virtual {p0, v3, p2}, Lbt;->b(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 97
    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 99
    .end local v3    # "vp":Landroid/view/View;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 101
    .local v2, "vm":Landroid/graphics/Matrix;
    invoke-virtual {v2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v4

    if-nez v4, :cond_1

    .line 102
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 103
    .local v0, "inverted":Landroid/graphics/Matrix;
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 104
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 107
    .end local v0    # "inverted":Landroid/graphics/Matrix;
    :cond_1
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 62
    sget v0, Lay$a;->save_non_transition_alpha:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 63
    sget v0, Lay$a;->save_non_transition_alpha:I

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 65
    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 111
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 112
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotX(F)V

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotY(F)V

    .line 114
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 115
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 116
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleX(F)V

    .line 117
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleY(F)V

    .line 118
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotation(F)V

    .line 141
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v7, p0, Lbt;->a:[F

    .line 121
    .local v7, "values":[F
    if-nez v7, :cond_2

    .line 122
    const/16 v8, 0x9

    new-array v7, v8, [F

    iput-object v7, p0, Lbt;->a:[F

    .line 124
    :cond_2
    invoke-virtual {p2, v7}, Landroid/graphics/Matrix;->getValues([F)V

    .line 125
    const/4 v8, 0x3

    aget v6, v7, v8

    .line 126
    .local v6, "sin":F
    const/high16 v8, 0x3f800000    # 1.0f

    mul-float v9, v6, v6

    sub-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v9, v8

    const/4 v8, 0x0

    aget v8, v7, v8

    const/4 v10, 0x0

    cmpg-float v8, v8, v10

    if-gez v8, :cond_3

    const/4 v8, -0x1

    :goto_1
    int-to-float v8, v8

    mul-float v0, v9, v8

    .line 128
    .local v0, "cos":F
    float-to-double v8, v6

    float-to-double v10, v0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    double-to-float v3, v8

    .line 129
    .local v3, "rotation":F
    const/4 v8, 0x0

    aget v8, v7, v8

    div-float v4, v8, v0

    .line 130
    .local v4, "scaleX":F
    const/4 v8, 0x4

    aget v8, v7, v8

    div-float v5, v8, v0

    .line 131
    .local v5, "scaleY":F
    const/4 v8, 0x2

    aget v1, v7, v8

    .line 132
    .local v1, "dx":F
    const/4 v8, 0x5

    aget v2, v7, v8

    .line 133
    .local v2, "dy":F
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotX(F)V

    .line 134
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotY(F)V

    .line 135
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 136
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 137
    invoke-virtual {p1, v3}, Landroid/view/View;->setRotation(F)V

    .line 138
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 139
    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 126
    .end local v0    # "cos":F
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    .end local v3    # "rotation":F
    .end local v4    # "scaleX":F
    .end local v5    # "scaleY":F
    :cond_3
    const/4 v8, 0x1

    goto :goto_1
.end method

.method public d(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 72
    sget v0, Lay$a;->save_non_transition_alpha:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 74
    :cond_0
    return-void
.end method
