.class public Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;
.super Landroid/widget/FrameLayout;
.source "ShadowLayout.java"


# instance fields
.field private mCornerRadius:F

.field private mDx:F

.field private mDy:F

.field private mForceInvalidateShadow:Z

.field private mInvalidateShadowOnSizeChanged:Z

.field private mShadowColor:I

.field private mShadowRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->mInvalidateShadowOnSizeChanged:Z

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->mForceInvalidateShadow:Z

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->mInvalidateShadowOnSizeChanged:Z

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->mForceInvalidateShadow:Z

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->mInvalidateShadowOnSizeChanged:Z

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->mForceInvalidateShadow:Z

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method private createShadowBitmap(IIFFFFII)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "shadowWidth"    # I
    .param p2, "shadowHeight"    # I
    .param p3, "cornerRadius"    # F
    .param p4, "shadowRadius"    # F
    .param p5, "dx"    # F
    .param p6, "dy"    # F
    .param p7, "shadowColor"    # I
    .param p8, "fillColor"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 125
    sget-object v4, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 126
    .local v1, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 128
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v4, p1

    sub-float/2addr v4, p4

    int-to-float v5, p2

    sub-float/2addr v5, p4

    invoke-direct {v3, p4, p4, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 134
    .local v3, "shadowRect":Landroid/graphics/RectF;
    cmpl-float v4, p6, v6

    if-lez v4, :cond_3

    .line 135
    iget v4, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, p6

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 136
    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, p6

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 142
    :cond_0
    :goto_0
    cmpl-float v4, p5, v6

    if-lez v4, :cond_4

    .line 143
    iget v4, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, p5

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 144
    iget v4, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, p5

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 150
    :cond_1
    :goto_1
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 151
    .local v2, "shadowPaint":Landroid/graphics/Paint;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 152
    invoke-virtual {v2, p8}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 155
    invoke-virtual {p0}, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->isInEditMode()Z

    move-result v4

    if-nez v4, :cond_2

    .line 156
    invoke-virtual {v2, p4, p5, p6, p7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 159
    :cond_2
    invoke-virtual {v0, v3, p3, p3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 161
    return-object v1

    .line 137
    .end local v2    # "shadowPaint":Landroid/graphics/Paint;
    :cond_3
    cmpg-float v4, p6, v6

    if-gez v4, :cond_0

    .line 138
    iget v4, v3, Landroid/graphics/RectF;->top:F

    invoke-static {p6}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 139
    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    invoke-static {p6}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 145
    :cond_4
    cmpg-float v4, p5, v6

    if-gez v4, :cond_1

    .line 146
    iget v4, v3, Landroid/graphics/RectF;->left:F

    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 147
    iget v4, v3, Landroid/graphics/RectF;->right:F

    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->right:F

    goto :goto_1
.end method

.method private getTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "attr"    # [I

    .prologue
    const/4 v0, 0x0

    .line 119
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method private initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 102
    sget-object v1, Lbtp$h;->ShadowLayout:[I

    invoke-direct {p0, p1, p2, v1}, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->getTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 103
    .local v0, "attr":Landroid/content/res/TypedArray;
    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 108
    :cond_0
    :try_start_0
    sget v1, Lbtp$h;->ShadowLayout_sl_cornerRadius:I

    invoke-virtual {p0}, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbtp$c;->default_corner_radius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->mCornerRadius:F

    .line 109
    sget v1, Lbtp$h;->ShadowLayout_sl_shadowRadius:I

    invoke-virtual {p0}, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbtp$c;->default_shadow_radius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->mShadowRadius:F

    .line 110
    sget v1, Lbtp$h;->ShadowLayout_sl_dx:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->mDx:F

    .line 111
    sget v1, Lbtp$h;->ShadowLayout_sl_dy:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->mDy:F

    .line 112
    sget v1, Lbtp$h;->ShadowLayout_sl_shadowColor:I

    invoke-virtual {p0}, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbtp$b;->default_shadow_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->mShadowColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    iget v2, p0, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->mShadowRadius:F

    iget v3, p0, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->mDx:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v0, v2

    .line 85
    .local v0, "xPadding":I
    iget v2, p0, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->mShadowRadius:F

    iget v3, p0, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->mDy:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 86
    .local v1, "yPadding":I
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->setPadding(IIII)V

    .line 87
    return-void
.end method

.method private setBackgroundCompat(II)V
    .locals 11
    .param p1, "w"    # I
    .param p2, "h"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 91
    iget v3, p0, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->mCornerRadius:F

    iget v4, p0, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->mShadowRadius:F

    iget v5, p0, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->mDx:F

    iget v6, p0, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->mDy:F

    iget v7, p0, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->mShadowColor:I

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->createShadowBitmap(IIFFFFII)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 92
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v10, v0, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 93
    .local v10, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-gt v0, v1, :cond_0

    .line 94
    invoke-virtual {p0, v10}, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-virtual {p0, v10}, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method protected getSuggestedMinimumHeight()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public invalidateShadow()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->mForceInvalidateShadow:Z

    .line 77
    invoke-virtual {p0}, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->requestLayout()V

    .line 78
    invoke-virtual {p0}, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->invalidate()V

    .line 79
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 65
    iget-boolean v0, p0, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->mForceInvalidateShadow:Z

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->mForceInvalidateShadow:Z

    .line 67
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-direct {p0, v0, v1}, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->setBackgroundCompat(II)V

    .line 69
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 56
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    invoke-virtual {p0}, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->mInvalidateShadowOnSizeChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->mForceInvalidateShadow:Z

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->mForceInvalidateShadow:Z

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->setBackgroundCompat(II)V

    .line 60
    :cond_1
    return-void
.end method

.method public setInvalidateShadowOnSizeChanged(Z)V
    .locals 0
    .param p1, "invalidateShadowOnSizeChanged"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/taobao/taolive/sdk/ui/view/ShadowLayout;->mInvalidateShadowOnSizeChanged:Z

    .line 73
    return-void
.end method
