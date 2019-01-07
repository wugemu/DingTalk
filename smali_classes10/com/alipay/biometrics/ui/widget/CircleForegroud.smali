.class public Lcom/alipay/biometrics/ui/widget/CircleForegroud;
.super Landroid/widget/ImageView;
.source "CircleForegroud.java"


# static fields
.field private static final SXFERMODE:Landroid/graphics/Xfermode;


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mMaskBitmap:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field private mWeakBitmap:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/alipay/biometrics/ui/widget/CircleForegroud;->SXFERMODE:Landroid/graphics/Xfermode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0}, Lcom/alipay/biometrics/ui/widget/CircleForegroud;->sharedConstructor()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0}, Lcom/alipay/biometrics/ui/widget/CircleForegroud;->sharedConstructor()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0}, Lcom/alipay/biometrics/ui/widget/CircleForegroud;->sharedConstructor()V

    .line 43
    return-void
.end method

.method private sharedConstructor()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 47
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/biometrics/ui/widget/CircleForegroud;->mPaint:Landroid/graphics/Paint;

    .line 48
    return-void
.end method


# virtual methods
.method public createMask1()Landroid/graphics/Bitmap;
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x1

    .line 120
    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/CircleForegroud;->getWidth()I

    move-result v3

    .line 121
    .local v3, "i":I
    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/CircleForegroud;->getHeight()I

    move-result v4

    .line 122
    .local v4, "j":I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 123
    .local v7, "localConfig":Landroid/graphics/Bitmap$Config;
    invoke-static {v3, v4, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 124
    .local v5, "localBitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 125
    .local v6, "localCanvas":Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8, v11}, Landroid/graphics/Paint;-><init>(I)V

    .line 126
    .local v8, "localPaint":Landroid/graphics/Paint;
    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 127
    const/4 v11, -0x1

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/CircleForegroud;->getWidth()I

    move-result v11

    int-to-float v1, v11

    .line 129
    .local v1, "f1":F
    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/CircleForegroud;->getHeight()I

    move-result v11

    int-to-float v2, v11

    .line 132
    .local v2, "f2":F
    sub-float v11, v2, v1

    const/high16 v12, 0x40000000    # 2.0f

    div-float v10, v11, v12

    .line 134
    .local v10, "top":F
    add-float v0, v10, v1

    .line 135
    .local v0, "bottom":F
    new-instance v9, Landroid/graphics/RectF;

    const/4 v11, 0x0

    invoke-direct {v9, v11, v10, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 137
    .local v9, "localRectF":Landroid/graphics/RectF;
    invoke-virtual {v6, v9, v8}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 138
    return-object v5
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/biometrics/ui/widget/CircleForegroud;->mWeakBitmap:Ljava/lang/ref/WeakReference;

    .line 53
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/CircleForegroud;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/CircleForegroud;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 56
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 57
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/CircleForegroud;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_6

    .line 62
    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/CircleForegroud;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/CircleForegroud;->getHeight()I

    move-result v0

    int-to-float v4, v0

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v11

    .line 65
    .local v11, "i":I
    :try_start_0
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/CircleForegroud;->mWeakBitmap:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/CircleForegroud;->mWeakBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v7, v0

    .line 67
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/CircleForegroud;->getDrawable()Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 69
    .local v9, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_3

    .line 73
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/CircleForegroud;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/CircleForegroud;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 81
    :try_start_2
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 82
    .local v8, "bitmapCanvas":Landroid/graphics/Canvas;
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/CircleForegroud;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/CircleForegroud;->getHeight()I

    move-result v3

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 83
    invoke-virtual {v9, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 86
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/CircleForegroud;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/CircleForegroud;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/CircleForegroud;->createMask1()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/biometrics/ui/widget/CircleForegroud;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/CircleForegroud;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 92
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/CircleForegroud;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 93
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/CircleForegroud;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/alipay/biometrics/ui/widget/CircleForegroud;->SXFERMODE:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 95
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/CircleForegroud;->mMaskBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/biometrics/ui/widget/CircleForegroud;->mPaint:Landroid/graphics/Paint;

    .line 96
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 98
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/biometrics/ui/widget/CircleForegroud;->mWeakBitmap:Ljava/lang/ref/WeakReference;

    .line 103
    .end local v8    # "bitmapCanvas":Landroid/graphics/Canvas;
    .end local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    if-eqz v7, :cond_5

    .line 104
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/CircleForegroud;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 106
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/biometrics/ui/widget/CircleForegroud;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 117
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "i":I
    :goto_1
    return-void

    .restart local v11    # "i":I
    :cond_4
    move-object v7, v5

    .line 65
    goto :goto_0

    .line 75
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v10

    .line 76
    .local v10, "e":Ljava/lang/OutOfMemoryError;
    :try_start_3
    invoke-static {v10}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/Throwable;)V

    .line 77
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 112
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    .end local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v10    # "e":Ljava/lang/OutOfMemoryError;
    :cond_5
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v0

    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v0

    .line 115
    .end local v11    # "i":I
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method
