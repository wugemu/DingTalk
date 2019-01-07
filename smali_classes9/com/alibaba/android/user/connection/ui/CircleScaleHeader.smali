.class public Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "CircleScaleHeader.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    .line 29
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 24
    iput v0, p0, Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;->b:I

    .line 25
    iput v0, p0, Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;->c:I

    .line 26
    iput v0, p0, Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;->d:I

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, -0x1

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput v0, p0, Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;->b:I

    .line 25
    iput v0, p0, Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;->c:I

    .line 26
    iput v0, p0, Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;->d:I

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, -0x1

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    iput v0, p0, Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;->b:I

    .line 25
    iput v0, p0, Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;->c:I

    .line 26
    iput v0, p0, Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;->d:I

    .line 38
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 42
    .line 1051
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1052
    if-eqz v2, :cond_0

    .line 1055
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 1056
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 1057
    if-lez v4, :cond_0

    if-gtz v2, :cond_1

    .line 43
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 44
    .local v0, "saveCount":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 45
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;->a:I

    invoke-virtual {p1, v10, v10, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 46
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 47
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 48
    return-void

    .line 1060
    .end local v0    # "saveCount":I
    :cond_1
    iget v3, p0, Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;->b:I

    if-ne v4, v3, :cond_2

    iget v3, p0, Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;->c:I

    if-ne v2, v3, :cond_2

    iget v3, p0, Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;->a:I

    iget v5, p0, Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;->d:I

    if-eq v3, v5, :cond_0

    .line 1063
    :cond_2
    iput v4, p0, Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;->b:I

    .line 1064
    iput v2, p0, Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;->c:I

    .line 1065
    iget v3, p0, Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;->a:I

    iput v3, p0, Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;->d:I

    .line 1067
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;->getMeasuredWidth()I

    move-result v3

    int-to-float v5, v3

    .line 1068
    iget v3, p0, Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;->a:I

    int-to-float v6, v3

    .line 1069
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 1073
    int-to-float v3, v4

    mul-float/2addr v3, v6

    int-to-float v8, v2

    mul-float/2addr v8, v5

    cmpl-float v3, v3, v8

    if-lez v3, :cond_3

    .line 1074
    int-to-float v2, v2

    div-float v3, v6, v2

    .line 1075
    int-to-float v2, v4

    mul-float/2addr v2, v3

    sub-float v2, v5, v2

    mul-float/2addr v2, v9

    .line 1080
    :goto_1
    invoke-virtual {v7, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1081
    invoke-virtual {v7, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1082
    invoke-virtual {p0, v7}, Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 1077
    :cond_3
    int-to-float v3, v4

    div-float v3, v5, v3

    .line 1078
    int-to-float v2, v2

    mul-float/2addr v2, v3

    sub-float v2, v6, v2

    mul-float/2addr v2, v9

    move v11, v2

    move v2, v1

    move v1, v11

    goto :goto_1
.end method

.method public setHeaderHeight(I)V
    .locals 0
    .param p1, "headerHeight"    # I

    .prologue
    .line 86
    if-gez p1, :cond_0

    .line 87
    const/4 p1, 0x0

    .line 89
    :cond_0
    iput p1, p0, Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;->a:I

    .line 90
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;->invalidate()V

    .line 91
    return-void
.end method
