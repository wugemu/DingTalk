.class final Lhdz$13;
.super Ljava/lang/Object;
.source "FloatingLayerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lhdz;


# direct methods
.method constructor <init>(Lhdz;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lhdz;

    .prologue
    .line 364
    iput-object p1, p0, Lhdz$13;->b:Lhdz;

    iput-object p2, p0, Lhdz$13;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .prologue
    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lhdz$13;->b:Lhdz;

    invoke-static {v2}, Lhdz;->a(Lhdz;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcms;->a(Landroid/content/Context;)I

    move-result v16

    .line 368
    .local v16, "screenWidth":I
    mul-int/lit8 v2, v16, 0x50

    div-int/lit8 v9, v2, 0x40

    .line 370
    .local v9, "cropHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lhdz$13;->a:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v16

    invoke-static {v2, v3, v4, v0, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 372
    .local v1, "cropBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lhdz$13;->b:Lhdz;

    invoke-static {v2}, Lhdz;->a(Lhdz;)Landroid/app/Activity;

    move-result-object v2

    const/high16 v3, 0x42800000    # 64.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v13

    .line 373
    .local v13, "newWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lhdz$13;->b:Lhdz;

    invoke-static {v2}, Lhdz;->a(Lhdz;)Landroid/app/Activity;

    move-result-object v2

    const/high16 v3, 0x42a00000    # 80.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v12

    .line 374
    .local v12, "newHeight":I
    int-to-float v2, v13

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v15, v2, v3

    .line 375
    .local v15, "scaleWidth":F
    int-to-float v2, v12

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v14, v2, v3

    .line 376
    .local v14, "scaleHeight":F
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 377
    .local v6, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v6, v15, v14}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 379
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 381
    .local v11, "finalBitmap":Landroid/graphics/Bitmap;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 382
    .local v8, "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    move-object/from16 v0, p0

    iget-object v2, v0, Lhdz$13;->b:Lhdz;

    invoke-static {v2}, Lhdz;->a(Lhdz;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v11, v2, v8, v3}, Lcnx;->a(Landroid/graphics/Bitmap;Landroid/content/Context;Landroid/graphics/Bitmap$CompressFormat;Z)Ljava/lang/String;

    move-result-object v10

    .line 383
    .local v10, "filePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lhdz$13;->b:Lhdz;

    invoke-static {v2}, Lhdz;->a(Lhdz;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "pref_key_screen_shot_image"

    invoke-static {v2, v3, v10}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-static {}, Lheh;->a()Lheh;

    move-result-object v2

    .line 1152
    iput-object v10, v2, Lheh;->d:Ljava/lang/String;

    .line 387
    return-void
.end method
