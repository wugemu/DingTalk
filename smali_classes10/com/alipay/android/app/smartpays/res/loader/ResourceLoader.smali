.class public Lcom/alipay/android/app/smartpays/res/loader/ResourceLoader;
.super Ljava/lang/Object;
.source "ResourceLoader.java"

# interfaces
.implements Lcom/alipay/android/app/smartpays/res/IResourceLoader;


# instance fields
.field private mProvider:Lcom/alipay/android/app/smartpays/api/IResourceProvider;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/smartpays/api/IResourceProvider;)V
    .locals 0
    .param p1, "provider"    # Lcom/alipay/android/app/smartpays/api/IResourceProvider;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/res/loader/ResourceLoader;->mProvider:Lcom/alipay/android/app/smartpays/api/IResourceProvider;

    .line 24
    return-void
.end method


# virtual methods
.method public getDrawableId(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    const-string/jumbo v0, "drawable"

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/app/smartpays/res/loader/ResourceLoader;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getId(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-string/jumbo v0, "id"

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/app/smartpays/res/loader/ResourceLoader;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLayoutId(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-string/jumbo v0, "layout"

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/app/smartpays/res/loader/ResourceLoader;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPaddingDrawable(IILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 14
    .param p1, "dimenId"    # I
    .param p2, "resId"    # I
    .param p3, "ctx"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    if-nez p3, :cond_0

    .line 61
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "Invalid context"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 64
    :cond_0
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 65
    .local v3, "defaultMetrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v10, "window"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    .line 66
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 68
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 69
    .local v7, "res":Landroid/content/res/Resources;
    const/high16 v10, 0x40c00000    # 6.0f

    iget v11, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v10, v11

    float-to-int v6, v10

    .line 70
    .local v6, "padding":I
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 71
    .local v4, "op":Landroid/graphics/BitmapFactory$Options;
    const/16 v10, 0x140

    iput v10, v4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 72
    move/from16 v0, p2

    invoke-static {v7, v0, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 73
    .local v5, "orignal":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    add-int/2addr v10, v6

    .line 74
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 73
    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 75
    .local v1, "b":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 76
    .local v2, "c":Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 77
    .local v9, "src":Landroid/graphics/Rect;
    const/4 v10, 0x0

    invoke-virtual {v2, v5, v9, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 78
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8, v7, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 79
    .local v8, "right":Landroid/graphics/drawable/Drawable;
    return-object v8
.end method

.method public getResourceId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    const/4 v3, -0x1

    .line 50
    .local v3, "resId":I
    :try_start_0
    iget-object v4, p0, Lcom/alipay/android/app/smartpays/res/loader/ResourceLoader;->mProvider:Lcom/alipay/android/app/smartpays/api/IResourceProvider;

    invoke-interface {v4}, Lcom/alipay/android/app/smartpays/api/IResourceProvider;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 51
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/alipay/android/app/smartpays/res/loader/ResourceLoader;->mProvider:Lcom/alipay/android/app/smartpays/api/IResourceProvider;

    invoke-interface {v4}, Lcom/alipay/android/app/smartpays/api/IResourceProvider;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {v2, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 56
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "res":Landroid/content/res/Resources;
    :goto_0
    return v3

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/alipay/android/app/smartpays/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getStringId(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-string/jumbo v0, "string"

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/app/smartpays/res/loader/ResourceLoader;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
