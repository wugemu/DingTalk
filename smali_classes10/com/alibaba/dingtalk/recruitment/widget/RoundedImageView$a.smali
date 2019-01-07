.class final Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;
.super Landroid/graphics/drawable/Drawable;
.source "RoundedImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/graphics/Paint;

.field b:[F

.field c:Z

.field d:F

.field e:Landroid/content/res/ColorStateList;

.field f:Landroid/widget/ImageView$ScaleType;

.field private g:Landroid/graphics/RectF;

.field private h:Landroid/graphics/RectF;

.field private final i:Landroid/graphics/RectF;

.field private final j:I

.field private final k:I

.field private final l:Landroid/graphics/Paint;

.field private m:Landroid/graphics/BitmapShader;

.field private n:[F

.field private o:Landroid/graphics/Path;

.field private p:Landroid/graphics/Bitmap;

.field private q:Z


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;Landroid/content/res/Resources;)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "r"    # Landroid/content/res/Resources;

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, -0x1

    const/high16 v4, -0x1000000

    const/4 v3, 0x0

    .line 259
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 234
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->g:Landroid/graphics/RectF;

    .line 235
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->h:Landroid/graphics/RectF;

    .line 237
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->i:Landroid/graphics/RectF;

    .line 246
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->b:[F

    .line 247
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->n:[F

    .line 249
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->c:Z

    .line 251
    iput v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->d:F

    .line 252
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->e:Landroid/content/res/ColorStateList;

    .line 253
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->f:Landroid/widget/ImageView$ScaleType;

    .line 255
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->o:Landroid/graphics/Path;

    .line 257
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->q:Z

    .line 260
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->p:Landroid/graphics/Bitmap;

    .line 261
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->m:Landroid/graphics/BitmapShader;

    .line 263
    if-eqz p1, :cond_0

    .line 264
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->getScaledWidth(Landroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->j:I

    .line 265
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->getScaledHeight(Landroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->k:I

    .line 271
    :goto_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->i:Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->j:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->k:I

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 273
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->l:Landroid/graphics/Paint;

    .line 274
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->l:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 275
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->l:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->m:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 277
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->a:Landroid/graphics/Paint;

    .line 278
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 279
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->getState()[I

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 280
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->d:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 281
    return-void

    .line 267
    :cond_0
    iput v5, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->j:I

    .line 268
    iput v5, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->k:I

    goto :goto_0

    .line 246
    .line 247
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x2

    .line 319
    if-nez p0, :cond_0

    .line 320
    const/4 v0, 0x0

    .line 339
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    .local v3, "height":I
    .local v4, "width":I
    :goto_0
    return-object v0

    .line 323
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "height":I
    .end local v4    # "width":I
    :cond_0
    instance-of v5, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_1

    .line 324
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 328
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 329
    .restart local v4    # "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 331
    .restart local v3    # "height":I
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 332
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 333
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 334
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 335
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v2

    .line 336
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 337
    const/4 v0, 0x0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "r"    # Landroid/content/res/Resources;

    .prologue
    .line 292
    if-nez p0, :cond_1

    .line 293
    const/4 p0, 0x0

    .line 315
    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object p0

    .line 296
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    instance-of v5, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;

    if-nez v5, :cond_0

    .line 300
    instance-of v5, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_3

    move-object v3, p0

    .line 301
    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    .line 302
    .local v3, "ld":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v4

    .line 303
    .local v4, "num":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 304
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 305
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v5

    invoke-static {v1, p1}, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 303
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    move-object p0, v3

    .line 307
    goto :goto_0

    .line 310
    .end local v2    # "i":I
    .end local v3    # "ld":Landroid/graphics/drawable/LayerDrawable;
    .end local v4    # "num":I
    :cond_3
    invoke-static {p0}, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 311
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 312
    new-instance p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v0, p1}, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;-><init>(Landroid/graphics/Bitmap;Landroid/content/res/Resources;)V

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;Landroid/content/res/Resources;)Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "r"    # Landroid/content/res/Resources;

    .prologue
    .line 284
    if-nez p0, :cond_0

    .line 285
    const/4 v0, 0x0

    .line 288
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;-><init>(Landroid/graphics/Bitmap;Landroid/content/res/Resources;)V

    goto :goto_0
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 434
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->b:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 435
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->b:[F

    aget v1, v1, v0

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 436
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->n:[F

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->b:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 437
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->b:[F

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->b:[F

    aget v2, v2, v0

    iget v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->d:F

    sub-float/2addr v2, v3

    aput v2, v1, v0

    .line 434
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 440
    :cond_1
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 391
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 392
    .local v0, "canvasMatrix":Landroid/graphics/Matrix;
    const/16 v8, 0x9

    new-array v7, v8, [F

    .line 393
    .local v7, "values":[F
    invoke-virtual {v0, v7}, Landroid/graphics/Matrix;->getValues([F)V

    .line 395
    const/4 v8, 0x0

    aget v3, v7, v8

    .line 396
    .local v3, "scaleFactorX":F
    const/4 v8, 0x4

    aget v4, v7, v8

    .line 397
    .local v4, "scaleFactorY":F
    const/4 v8, 0x2

    aget v5, v7, v8

    .line 398
    .local v5, "translateX":F
    const/4 v8, 0x5

    aget v6, v7, v8

    .line 400
    .local v6, "translateY":F
    iget-object v8, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->g:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget-object v9, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->g:Landroid/graphics/RectF;

    .line 401
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    iget v10, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->d:F

    add-float/2addr v9, v10

    iget v10, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->d:F

    add-float/2addr v9, v10

    div-float v1, v8, v9

    .line 402
    .local v1, "newScaleX":F
    iget-object v8, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->g:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    iget-object v9, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->g:Landroid/graphics/RectF;

    .line 403
    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    iget v10, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->d:F

    add-float/2addr v9, v10

    iget v10, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->d:F

    add-float/2addr v9, v10

    div-float v2, v8, v9

    .line 405
    .local v2, "newScaleY":F
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 406
    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    iget-object v9, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->f:Landroid/widget/ImageView$ScaleType;

    if-eq v8, v9, :cond_0

    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    iget-object v9, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->f:Landroid/widget/ImageView$ScaleType;

    if-eq v8, v9, :cond_0

    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iget-object v9, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->f:Landroid/widget/ImageView$ScaleType;

    if-eq v8, v9, :cond_0

    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iget-object v9, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->f:Landroid/widget/ImageView$ScaleType;

    if-eq v8, v9, :cond_0

    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    iget-object v9, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->f:Landroid/widget/ImageView$ScaleType;

    if-eq v8, v9, :cond_0

    sget-object v8, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    iget-object v9, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->f:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v9, :cond_2

    .line 409
    :cond_0
    iget v8, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->d:F

    iget v9, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->d:F

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 416
    :cond_1
    :goto_0
    return-void

    .line 410
    :cond_2
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    iget-object v9, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->f:Landroid/widget/ImageView$ScaleType;

    if-eq v8, v9, :cond_3

    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    iget-object v9, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->f:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v9, :cond_1

    .line 411
    :cond_3
    neg-float v8, v5

    mul-float v9, v1, v3

    div-float/2addr v8, v9

    neg-float v9, v6

    mul-float v10, v2, v4

    div-float/2addr v9, v10

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 414
    iget-object v8, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->g:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget v9, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->d:F

    sub-float/2addr v8, v9

    neg-float v8, v8

    iget-object v9, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->g:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    iget v10, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->d:F

    sub-float/2addr v9, v10

    neg-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Matrix;)V
    .locals 5
    .param p1, "m"    # Landroid/graphics/Matrix;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 383
    const/16 v2, 0x9

    new-array v1, v2, [F

    .line 384
    .local v1, "values":[F
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 385
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->b:[F

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 386
    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->b:[F

    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->b:[F

    aget v3, v3, v0

    const/4 v4, 0x0

    aget v4, v1, v4

    div-float/2addr v3, v4

    aput v3, v2, v0

    .line 385
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    :cond_0
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 444
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 445
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->q:Z

    if-nez v0, :cond_2

    .line 1359
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1360
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 1362
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->f:Landroid/widget/ImageView$ScaleType;

    if-ne v2, v3, :cond_3

    .line 1363
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->g:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 447
    :cond_0
    :goto_0
    iget v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->d:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1

    .line 1419
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 1420
    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 1421
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1423
    const/4 v0, 0x0

    aget v0, v1, v0

    .line 1425
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->g:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float/2addr v0, v1

    .line 1426
    iget v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->d:F

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->g:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->d:F

    mul-float/2addr v2, v6

    sub-float/2addr v0, v2

    div-float v0, v1, v0

    iput v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->d:F

    .line 1427
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->d:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1429
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->g:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1430
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->d:F

    neg-float v1, v1

    div-float/2addr v1, v6

    iget v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->d:F

    neg-float v2, v2

    div-float/2addr v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 449
    invoke-direct {p0}, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->a()V

    .line 451
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->q:Z

    .line 454
    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->c:Z

    if-eqz v0, :cond_9

    .line 455
    iget v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->d:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_8

    .line 456
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->a(Landroid/graphics/Canvas;)V

    .line 457
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->o:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->g:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 458
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->o:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 459
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->o:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 460
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->o:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->h:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 461
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->o:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 479
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 480
    return-void

    .line 1364
    :cond_3
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->f:Landroid/widget/ImageView$ScaleType;

    if-ne v2, v3, :cond_4

    .line 1365
    invoke-direct {p0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->a(Landroid/graphics/Matrix;)V

    .line 1366
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->g:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1367
    :cond_4
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->f:Landroid/widget/ImageView$ScaleType;

    if-ne v2, v3, :cond_5

    .line 1368
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 1369
    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->i:Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 1370
    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->m:Landroid/graphics/BitmapShader;

    invoke-virtual {v2, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1371
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->g:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1372
    :cond_5
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->f:Landroid/widget/ImageView$ScaleType;

    if-eq v0, v2, :cond_6

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->f:Landroid/widget/ImageView$ScaleType;

    if-eq v0, v2, :cond_6

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->f:Landroid/widget/ImageView$ScaleType;

    if-eq v0, v2, :cond_6

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->f:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v2, :cond_7

    .line 1374
    :cond_6
    invoke-direct {p0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->a(Landroid/graphics/Matrix;)V

    .line 1375
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->g:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->i:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto/16 :goto_0

    .line 1376
    :cond_7
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->f:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v2, :cond_0

    .line 1377
    invoke-direct {p0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->a(Landroid/graphics/Matrix;)V

    .line 1378
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->g:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->i:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto/16 :goto_0

    .line 463
    :cond_8
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->o:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->g:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 464
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->o:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 467
    :cond_9
    iget v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->d:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_a

    .line 468
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->a(Landroid/graphics/Canvas;)V

    .line 469
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->o:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->g:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->b:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 470
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->o:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 471
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->o:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 472
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->o:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->h:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->n:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 473
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->o:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 475
    :cond_a
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->o:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->g:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->b:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 476
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->o:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 532
    iget v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->k:I

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 527
    iget v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->j:I

    return v0
.end method

.method public final getOpacity()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 497
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->p:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->l:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, -0x3

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final isStateful()Z
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    return v0
.end method

.method protected final onStateChange([I)Z
    .locals 3
    .param p1, "state"    # [I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 349
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->e:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 350
    .local v0, "newColor":I
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->a:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 351
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 352
    const/4 v1, 0x1

    .line 354
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v1

    goto :goto_0
.end method

.method public final setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 503
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 504
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->invalidateSelf()V

    .line 505
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 509
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 510
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->invalidateSelf()V

    .line 511
    return-void
.end method

.method public final setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    .prologue
    .line 515
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 516
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->invalidateSelf()V

    .line 517
    return-void
.end method

.method public final setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    .prologue
    .line 521
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 522
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->invalidateSelf()V

    .line 523
    return-void
.end method
