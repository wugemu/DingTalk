.class final Lcom/android/camera/CropImage$7$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CropImage$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/camera/CropImage$7;


# direct methods
.method constructor <init>(Lcom/android/camera/CropImage$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/CropImage$7;

    .prologue
    .line 492
    iput-object p1, p0, Lcom/android/camera/CropImage$7$1;->a:Lcom/android/camera/CropImage$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v13, 0x7d

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v12, 0x32

    .line 494
    iget-object v4, p0, Lcom/android/camera/CropImage$7$1;->a:Lcom/android/camera/CropImage$7;

    .line 1457
    iget-object v0, v4, Lcom/android/camera/CropImage$7;->c:Lcom/android/camera/CropImage;

    invoke-static {v0}, Lcom/android/camera/CropImage;->b(Lcom/android/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1458
    new-instance v5, Lcom/android/camera/HighlightRectangle;

    iget-object v0, v4, Lcom/android/camera/CropImage$7;->c:Lcom/android/camera/CropImage;

    invoke-static {v0}, Lcom/android/camera/CropImage;->c(Lcom/android/camera/CropImage;)Lcom/android/camera/CropImageView;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/android/camera/HighlightRectangle;-><init>(Landroid/view/View;)V

    .line 1460
    iget-object v0, v4, Lcom/android/camera/CropImage$7;->c:Lcom/android/camera/CropImage;

    invoke-static {v0}, Lcom/android/camera/CropImage;->b(Lcom/android/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 1461
    iget-object v0, v4, Lcom/android/camera/CropImage$7;->c:Lcom/android/camera/CropImage;

    invoke-static {v0}, Lcom/android/camera/CropImage;->b(Lcom/android/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 1463
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v3, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1466
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v1, v0, 0x5

    .line 1469
    iget-object v0, v4, Lcom/android/camera/CropImage$7;->c:Lcom/android/camera/CropImage;

    invoke-static {v0}, Lcom/android/camera/CropImage;->d(Lcom/android/camera/CropImage;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v4, Lcom/android/camera/CropImage$7;->c:Lcom/android/camera/CropImage;

    invoke-static {v0}, Lcom/android/camera/CropImage;->e(Lcom/android/camera/CropImage;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 1470
    iget-object v0, v4, Lcom/android/camera/CropImage$7;->c:Lcom/android/camera/CropImage;

    invoke-static {v0}, Lcom/android/camera/CropImage;->d(Lcom/android/camera/CropImage;)I

    move-result v0

    iget-object v9, v4, Lcom/android/camera/CropImage$7;->c:Lcom/android/camera/CropImage;

    invoke-static {v9}, Lcom/android/camera/CropImage;->e(Lcom/android/camera/CropImage;)I

    move-result v9

    if-le v0, v9, :cond_2

    .line 1471
    iget-object v0, v4, Lcom/android/camera/CropImage$7;->c:Lcom/android/camera/CropImage;

    invoke-static {v0}, Lcom/android/camera/CropImage;->e(Lcom/android/camera/CropImage;)I

    move-result v0

    mul-int/2addr v0, v1

    iget-object v9, v4, Lcom/android/camera/CropImage$7;->c:Lcom/android/camera/CropImage;

    invoke-static {v9}, Lcom/android/camera/CropImage;->d(Lcom/android/camera/CropImage;)I

    move-result v9

    div-int/2addr v0, v9

    .line 1480
    :goto_0
    sub-int/2addr v6, v1

    div-int/lit8 v6, v6, 0x2

    .line 1481
    sub-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x2

    .line 1483
    new-instance v9, Landroid/graphics/RectF;

    int-to-float v10, v6

    int-to-float v11, v7

    add-int/2addr v1, v6

    int-to-float v1, v1

    add-int/2addr v0, v7

    int-to-float v0, v0

    invoke-direct {v9, v10, v11, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1484
    iget-object v1, v4, Lcom/android/camera/CropImage$7;->b:Landroid/graphics/Matrix;

    iget-object v0, v4, Lcom/android/camera/CropImage$7;->c:Lcom/android/camera/CropImage;

    invoke-static {v0}, Lcom/android/camera/CropImage;->d(Lcom/android/camera/CropImage;)I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v4, Lcom/android/camera/CropImage$7;->c:Lcom/android/camera/CropImage;

    invoke-static {v0}, Lcom/android/camera/CropImage;->e(Lcom/android/camera/CropImage;)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 2351
    :goto_1
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v6, v5, Lcom/android/camera/HighlightRectangle;->e:Landroid/graphics/Matrix;

    .line 2353
    iput-object v9, v5, Lcom/android/camera/HighlightRectangle;->d:Landroid/graphics/RectF;

    .line 2354
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v5, Lcom/android/camera/HighlightRectangle;->c:Landroid/graphics/RectF;

    .line 2355
    iput-boolean v0, v5, Lcom/android/camera/HighlightRectangle;->f:Z

    .line 2357
    iget-object v0, v5, Lcom/android/camera/HighlightRectangle;->d:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, v5, Lcom/android/camera/HighlightRectangle;->d:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, v5, Lcom/android/camera/HighlightRectangle;->g:F

    .line 2358
    invoke-virtual {v5}, Lcom/android/camera/HighlightRectangle;->b()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v5, Lcom/android/camera/HighlightRectangle;->b:Landroid/graphics/Rect;

    .line 2360
    iget-object v0, v5, Lcom/android/camera/HighlightRectangle;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v13, v12, v12, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 2361
    iget-object v0, v5, Lcom/android/camera/HighlightRectangle;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, v13, v12, v12, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 2362
    iget-object v0, v5, Lcom/android/camera/HighlightRectangle;->k:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2363
    iget-object v0, v5, Lcom/android/camera/HighlightRectangle;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2364
    iget-object v0, v5, Lcom/android/camera/HighlightRectangle;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2365
    sget-object v0, Lcom/android/camera/HighlightRectangle$ModifyMode;->Normal:Lcom/android/camera/HighlightRectangle$ModifyMode;

    iput-object v0, v5, Lcom/android/camera/HighlightRectangle;->n:Lcom/android/camera/HighlightRectangle$ModifyMode;

    .line 3078
    iget-object v0, v5, Lcom/android/camera/HighlightRectangle;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3079
    sget v1, Lcig$e;->camera_crop_holo:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v5, Lcom/android/camera/HighlightRectangle;->h:Landroid/graphics/drawable/Drawable;

    .line 3080
    iget-object v0, v5, Lcom/android/camera/HighlightRectangle;->k:Landroid/graphics/Paint;

    const v1, -0xff7501

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1485
    iget-object v0, v4, Lcom/android/camera/CropImage$7;->c:Lcom/android/camera/CropImage;

    invoke-static {v0}, Lcom/android/camera/CropImage;->c(Lcom/android/camera/CropImage;)Lcom/android/camera/CropImageView;

    move-result-object v0

    .line 3237
    iget-object v1, v0, Lcom/android/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3238
    invoke-virtual {v0}, Lcom/android/camera/CropImageView;->invalidate()V

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CropImage$7$1;->a:Lcom/android/camera/CropImage$7;

    iget-object v0, v0, Lcom/android/camera/CropImage$7;->c:Lcom/android/camera/CropImage;

    invoke-static {v0}, Lcom/android/camera/CropImage;->c(Lcom/android/camera/CropImage;)Lcom/android/camera/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CropImageView;->invalidate()V

    .line 496
    iget-object v0, p0, Lcom/android/camera/CropImage$7$1;->a:Lcom/android/camera/CropImage$7;

    iget-object v0, v0, Lcom/android/camera/CropImage$7;->c:Lcom/android/camera/CropImage;

    invoke-static {v0}, Lcom/android/camera/CropImage;->c(Lcom/android/camera/CropImage;)Lcom/android/camera/CropImageView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 497
    iget-object v0, p0, Lcom/android/camera/CropImage$7$1;->a:Lcom/android/camera/CropImage$7;

    iget-object v1, v0, Lcom/android/camera/CropImage$7;->c:Lcom/android/camera/CropImage;

    iget-object v0, p0, Lcom/android/camera/CropImage$7$1;->a:Lcom/android/camera/CropImage$7;

    iget-object v0, v0, Lcom/android/camera/CropImage$7;->c:Lcom/android/camera/CropImage;

    invoke-static {v0}, Lcom/android/camera/CropImage;->c(Lcom/android/camera/CropImage;)Lcom/android/camera/CropImageView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/HighlightRectangle;

    iput-object v0, v1, Lcom/android/camera/CropImage;->b:Lcom/android/camera/HighlightRectangle;

    .line 498
    iget-object v0, p0, Lcom/android/camera/CropImage$7$1;->a:Lcom/android/camera/CropImage$7;

    iget-object v0, v0, Lcom/android/camera/CropImage$7;->c:Lcom/android/camera/CropImage;

    iget-object v0, v0, Lcom/android/camera/CropImage;->b:Lcom/android/camera/HighlightRectangle;

    .line 4091
    iput-boolean v2, v0, Lcom/android/camera/HighlightRectangle;->o:Z

    .line 500
    :cond_1
    return-void

    .line 1473
    :cond_2
    iget-object v0, v4, Lcom/android/camera/CropImage$7;->c:Lcom/android/camera/CropImage;

    invoke-static {v0}, Lcom/android/camera/CropImage;->d(Lcom/android/camera/CropImage;)I

    move-result v0

    mul-int/2addr v0, v1

    iget-object v9, v4, Lcom/android/camera/CropImage$7;->c:Lcom/android/camera/CropImage;

    invoke-static {v9}, Lcom/android/camera/CropImage;->e(Lcom/android/camera/CropImage;)I

    move-result v9

    div-int/2addr v0, v9

    move v14, v1

    move v1, v0

    move v0, v14

    goto/16 :goto_0

    .line 1475
    :cond_3
    const-string/jumbo v0, "same-with-same-image"

    iget-object v9, v4, Lcom/android/camera/CropImage$7;->c:Lcom/android/camera/CropImage;

    invoke-static {v9}, Lcom/android/camera/CropImage;->f(Lcom/android/camera/CropImage;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1476
    add-int/lit8 v1, v6, -0x2

    .line 1477
    add-int/lit8 v0, v7, -0x2

    goto/16 :goto_0

    :cond_4
    move v0, v3

    .line 1484
    goto/16 :goto_1

    :cond_5
    move v0, v1

    goto/16 :goto_0
.end method
