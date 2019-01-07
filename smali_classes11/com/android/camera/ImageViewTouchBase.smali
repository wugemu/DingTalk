.class abstract Lcom/android/camera/ImageViewTouchBase;
.super Landroid/widget/ImageView;
.source "ImageViewTouchBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ImageViewTouchBase$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Matrix;

.field protected b:Landroid/graphics/Matrix;

.field protected c:Landroid/graphics/Matrix;

.field protected final d:Liuz;

.field e:I

.field f:I

.field g:F

.field protected h:Landroid/os/Handler;

.field private final i:[F

.field private j:Lcom/android/camera/ImageViewTouchBase$a;

.field private k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 231
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ImageViewTouchBase;->b:Landroid/graphics/Matrix;

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ImageViewTouchBase;->c:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ImageViewTouchBase;->a:Landroid/graphics/Matrix;

    .line 55
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/ImageViewTouchBase;->i:[F

    .line 58
    new-instance v0, Liuz;

    invoke-direct {v0, v2}, Liuz;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/camera/ImageViewTouchBase;->d:Liuz;

    .line 60
    iput v1, p0, Lcom/android/camera/ImageViewTouchBase;->e:I

    iput v1, p0, Lcom/android/camera/ImageViewTouchBase;->f:I

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ImageViewTouchBase;->h:Landroid/os/Handler;

    .line 144
    iput-object v2, p0, Lcom/android/camera/ImageViewTouchBase;->k:Ljava/lang/Runnable;

    .line 9241
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/android/camera/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 233
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 236
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ImageViewTouchBase;->b:Landroid/graphics/Matrix;

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ImageViewTouchBase;->c:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ImageViewTouchBase;->a:Landroid/graphics/Matrix;

    .line 55
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/ImageViewTouchBase;->i:[F

    .line 58
    new-instance v0, Liuz;

    invoke-direct {v0, v2}, Liuz;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/camera/ImageViewTouchBase;->d:Liuz;

    .line 60
    iput v1, p0, Lcom/android/camera/ImageViewTouchBase;->e:I

    iput v1, p0, Lcom/android/camera/ImageViewTouchBase;->f:I

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ImageViewTouchBase;->h:Landroid/os/Handler;

    .line 144
    iput-object v2, p0, Lcom/android/camera/ImageViewTouchBase;->k:Ljava/lang/Runnable;

    .line 10241
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/android/camera/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 238
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "rotation"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/camera/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 127
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 128
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ImageViewTouchBase;->d:Liuz;

    .line 2050
    iput-object p1, v1, Liuz;->a:Landroid/graphics/Bitmap;

    .line 133
    iget-object v1, p0, Lcom/android/camera/ImageViewTouchBase;->d:Liuz;

    .line 3038
    iput p2, v1, Liuz;->b:I

    .line 138
    return-void
.end method

.method private a(Liuz;Landroid/graphics/Matrix;)V
    .locals 11
    .param p1, "bitmap"    # Liuz;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v8, 0x40400000    # 3.0f

    const/high16 v10, 0x40000000    # 2.0f

    .line 260
    invoke-virtual {p0}, Lcom/android/camera/ImageViewTouchBase;->getWidth()I

    move-result v7

    int-to-float v4, v7

    .line 261
    .local v4, "viewWidth":F
    invoke-virtual {p0}, Lcom/android/camera/ImageViewTouchBase;->getHeight()I

    move-result v7

    int-to-float v3, v7

    .line 263
    .local v3, "viewHeight":F
    invoke-virtual {p1}, Liuz;->b()I

    move-result v7

    int-to-float v5, v7

    .line 264
    .local v5, "w":F
    invoke-virtual {p1}, Liuz;->a()I

    move-result v7

    int-to-float v0, v7

    .line 265
    .local v0, "h":F
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 269
    div-float v7, v4, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 270
    .local v6, "widthScale":F
    div-float v7, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 271
    .local v1, "heightScale":F
    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 12055
    .local v2, "scale":F
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 12056
    iget v8, p1, Liuz;->b:I

    if-eqz v8, :cond_0

    .line 12060
    iget-object v8, p1, Liuz;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    .line 12061
    iget-object v9, p1, Liuz;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    .line 12062
    neg-int v8, v8

    int-to-float v8, v8

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 12063
    iget v8, p1, Liuz;->b:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 12064
    invoke-virtual {p1}, Liuz;->b()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {p1}, Liuz;->a()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 273
    :cond_0
    invoke-virtual {p2, v7}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 274
    invoke-virtual {p2, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 276
    mul-float v7, v5, v2

    sub-float v7, v4, v7

    div-float/2addr v7, v10

    mul-float v8, v0, v2

    sub-float v8, v3, v8

    div-float/2addr v8, v10

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 279
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 141
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ImageViewTouchBase;->a(Landroid/graphics/Bitmap;Z)V

    .line 142
    return-void
.end method

.method protected a(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/camera/ImageViewTouchBase;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 401
    return-void
.end method

.method protected a(FFF)V
    .locals 4
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 308
    iget v2, p0, Lcom/android/camera/ImageViewTouchBase;->g:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    .line 309
    iget p1, p0, Lcom/android/camera/ImageViewTouchBase;->g:F

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ImageViewTouchBase;->getScale()F

    move-result v1

    .line 313
    .local v1, "oldScale":F
    div-float v0, p1, v1

    .line 315
    .local v0, "deltaScale":F
    iget-object v2, p0, Lcom/android/camera/ImageViewTouchBase;->c:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 316
    invoke-virtual {p0}, Lcom/android/camera/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/camera/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 317
    invoke-virtual {p0, v3, v3}, Lcom/android/camera/ImageViewTouchBase;->a(ZZ)V

    .line 318
    return-void
.end method

.method protected final a(FFFF)V
    .locals 10
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "durationMs"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v3, 0x43960000    # 300.0f

    .line 322
    invoke-virtual {p0}, Lcom/android/camera/ImageViewTouchBase;->getScale()F

    move-result v0

    sub-float v0, p1, v0

    div-float v7, v0, v3

    .line 323
    .local v7, "incrementPerMs":F
    invoke-virtual {p0}, Lcom/android/camera/ImageViewTouchBase;->getScale()F

    move-result v6

    .line 324
    .local v6, "oldScale":F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 326
    .local v4, "startTime":J
    iget-object v0, p0, Lcom/android/camera/ImageViewTouchBase;->h:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/ImageViewTouchBase$2;

    move-object v2, p0

    move v8, p2

    move v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/camera/ImageViewTouchBase$2;-><init>(Lcom/android/camera/ImageViewTouchBase;FJFFFF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 338
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "resetSupp"    # Z

    .prologue
    .line 150
    new-instance v0, Liuz;

    invoke-direct {v0, p1}, Liuz;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0, p2}, Lcom/android/camera/ImageViewTouchBase;->a(Liuz;Z)V

    .line 151
    return-void
.end method

.method public a(Liuz;Z)V
    .locals 4
    .param p1, "bitmap"    # Liuz;
    .param p2, "resetSupp"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/camera/ImageViewTouchBase;->getWidth()I

    move-result v0

    .line 157
    .local v0, "viewWidth":I
    if-gtz v0, :cond_0

    .line 158
    new-instance v1, Lcom/android/camera/ImageViewTouchBase$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/ImageViewTouchBase$1;-><init>(Lcom/android/camera/ImageViewTouchBase;Liuz;Z)V

    iput-object v1, p0, Lcom/android/camera/ImageViewTouchBase;->k:Ljava/lang/Runnable;

    .line 179
    :goto_0
    return-void

    .line 3046
    :cond_0
    iget-object v1, p1, Liuz;->a:Landroid/graphics/Bitmap;

    .line 166
    if-eqz v1, :cond_2

    .line 167
    iget-object v1, p0, Lcom/android/camera/ImageViewTouchBase;->b:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v1}, Lcom/android/camera/ImageViewTouchBase;->a(Liuz;Landroid/graphics/Matrix;)V

    .line 4046
    iget-object v1, p1, Liuz;->a:Landroid/graphics/Bitmap;

    .line 5042
    iget v2, p1, Liuz;->b:I

    .line 168
    invoke-direct {p0, v1, v2}, Lcom/android/camera/ImageViewTouchBase;->a(Landroid/graphics/Bitmap;I)V

    .line 174
    :goto_1
    if-eqz p2, :cond_1

    .line 175
    iget-object v1, p0, Lcom/android/camera/ImageViewTouchBase;->c:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 5297
    iget-object v1, p0, Lcom/android/camera/ImageViewTouchBase;->d:Liuz;

    .line 6046
    iget-object v1, v1, Liuz;->a:Landroid/graphics/Bitmap;

    .line 5297
    if-nez v1, :cond_3

    .line 5298
    const/high16 v1, 0x3f800000    # 1.0f

    .line 178
    :goto_2
    iput v1, p0, Lcom/android/camera/ImageViewTouchBase;->g:F

    goto :goto_0

    .line 170
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ImageViewTouchBase;->b:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 171
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 5301
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ImageViewTouchBase;->d:Liuz;

    invoke-virtual {v1}, Liuz;->b()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ImageViewTouchBase;->e:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 5302
    iget-object v2, p0, Lcom/android/camera/ImageViewTouchBase;->d:Liuz;

    invoke-virtual {v2}, Liuz;->a()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ImageViewTouchBase;->f:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 5303
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    .line 5304
    goto :goto_2
.end method

.method protected final a(ZZ)V
    .locals 12
    .param p1, "horizontal"    # Z
    .param p2, "vertical"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    .line 187
    iget-object v8, p0, Lcom/android/camera/ImageViewTouchBase;->d:Liuz;

    .line 7046
    iget-object v8, v8, Liuz;->a:Landroid/graphics/Bitmap;

    .line 187
    if-nez v8, :cond_0

    .line 228
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 193
    .local v3, "m":Landroid/graphics/Matrix;
    new-instance v4, Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/android/camera/ImageViewTouchBase;->d:Liuz;

    .line 8046
    iget-object v8, v8, Liuz;->a:Landroid/graphics/Bitmap;

    .line 194
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/android/camera/ImageViewTouchBase;->d:Liuz;

    .line 9046
    iget-object v9, v9, Liuz;->a:Landroid/graphics/Bitmap;

    .line 195
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v4, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 197
    .local v4, "rect":Landroid/graphics/RectF;
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 199
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 200
    .local v2, "height":F
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 202
    .local v7, "width":F
    const/4 v0, 0x0

    .local v0, "deltaX":F
    const/4 v1, 0x0

    .line 205
    .local v1, "deltaY":F
    invoke-virtual {p0}, Lcom/android/camera/ImageViewTouchBase;->getHeight()I

    move-result v5

    .line 206
    .local v5, "viewHeight":I
    int-to-float v8, v5

    cmpg-float v8, v2, v8

    if-gez v8, :cond_3

    .line 207
    int-to-float v8, v5

    sub-float/2addr v8, v2

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, v8, v9

    .line 216
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/ImageViewTouchBase;->getWidth()I

    move-result v6

    .line 217
    .local v6, "viewWidth":I
    int-to-float v8, v6

    cmpg-float v8, v7, v8

    if-gez v8, :cond_5

    .line 218
    int-to-float v8, v6

    sub-float/2addr v8, v7

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v8, v9

    .line 226
    :cond_2
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ImageViewTouchBase;->a(FF)V

    .line 227
    invoke-virtual {p0}, Lcom/android/camera/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/camera/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 208
    .end local v6    # "viewWidth":I
    :cond_3
    iget v8, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_4

    .line 209
    iget v8, v4, Landroid/graphics/RectF;->top:F

    neg-float v1, v8

    goto :goto_1

    .line 210
    :cond_4
    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v9, v5

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    .line 211
    invoke-virtual {p0}, Lcom/android/camera/ImageViewTouchBase;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v8, v9

    goto :goto_1

    .line 219
    .restart local v6    # "viewWidth":I
    :cond_5
    iget v8, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_6

    .line 220
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v0, v8

    goto :goto_2

    .line 221
    :cond_6
    iget v8, v4, Landroid/graphics/RectF;->right:F

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 222
    int-to-float v8, v6

    iget v9, v4, Landroid/graphics/RectF;->right:F

    sub-float v0, v8, v9

    goto :goto_2
.end method

.method protected final b(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 404
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ImageViewTouchBase;->a(FF)V

    .line 405
    invoke-virtual {p0}, Lcom/android/camera/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 406
    return-void
.end method

.method protected getImageViewMatrix()Landroid/graphics/Matrix;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/camera/ImageViewTouchBase;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/camera/ImageViewTouchBase;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 286
    iget-object v0, p0, Lcom/android/camera/ImageViewTouchBase;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/camera/ImageViewTouchBase;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 287
    iget-object v0, p0, Lcom/android/camera/ImageViewTouchBase;->a:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected getScale()F
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/camera/ImageViewTouchBase;->c:Landroid/graphics/Matrix;

    .line 11245
    iget-object v1, p0, Lcom/android/camera/ImageViewTouchBase;->i:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 11246
    iget-object v0, p0, Lcom/android/camera/ImageViewTouchBase;->i:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 255
    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 95
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 96
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 98
    const/4 v0, 0x1

    .line 100
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 105
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/android/camera/ImageViewTouchBase;->getScale()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 1341
    invoke-virtual {p0}, Lcom/android/camera/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    .line 1342
    invoke-virtual {p0}, Lcom/android/camera/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    .line 1344
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/camera/ImageViewTouchBase;->a(FFF)V

    .line 111
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 79
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 80
    sub-int v1, p4, p2

    iput v1, p0, Lcom/android/camera/ImageViewTouchBase;->e:I

    .line 81
    sub-int v1, p5, p3

    iput v1, p0, Lcom/android/camera/ImageViewTouchBase;->f:I

    .line 82
    iget-object v0, p0, Lcom/android/camera/ImageViewTouchBase;->k:Ljava/lang/Runnable;

    .line 83
    .local v0, "r":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/ImageViewTouchBase;->k:Ljava/lang/Runnable;

    .line 85
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ImageViewTouchBase;->d:Liuz;

    .line 1046
    iget-object v1, v1, Liuz;->a:Landroid/graphics/Bitmap;

    .line 87
    if-eqz v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/android/camera/ImageViewTouchBase;->d:Liuz;

    iget-object v2, p0, Lcom/android/camera/ImageViewTouchBase;->b:Landroid/graphics/Matrix;

    invoke-direct {p0, v1, v2}, Lcom/android/camera/ImageViewTouchBase;->a(Liuz;Landroid/graphics/Matrix;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/camera/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 91
    :cond_1
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ImageViewTouchBase;->a(Landroid/graphics/Bitmap;I)V

    .line 122
    return-void
.end method

.method public setRecycler(Lcom/android/camera/ImageViewTouchBase$a;)V
    .locals 0
    .param p1, "r"    # Lcom/android/camera/ImageViewTouchBase$a;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/camera/ImageViewTouchBase;->j:Lcom/android/camera/ImageViewTouchBase$a;

    .line 72
    return-void
.end method
