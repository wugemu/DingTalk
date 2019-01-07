.class public Lcom/alibaba/doraemon/impl/image/DefaultImageDecoder;
.super Ljava/lang/Object;
.source "DefaultImageDecoder.java"

# interfaces
.implements Lcom/alibaba/doraemon/image/ImageDecoder;


# static fields
.field private static final MaxBitmapSize:I = 0x400


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 13
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v12, -0x1

    .line 79
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 80
    .local v4, "w":D
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 82
    .local v0, "h":D
    if-ne p2, v12, :cond_1

    move v2, v6

    .line 84
    .local v2, "lowerBound":I
    :goto_0
    if-ne p1, v12, :cond_2

    const/16 v3, 0x80

    .line 87
    .local v3, "upperBound":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 96
    .end local v2    # "lowerBound":I
    :cond_0
    :goto_2
    return v2

    .line 82
    .end local v3    # "upperBound":I
    :cond_1
    mul-double v8, v4, v0

    int-to-double v10, p2

    div-double/2addr v8, v10

    .line 83
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 82
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v2, v8

    goto :goto_0

    .line 84
    .restart local v2    # "lowerBound":I
    :cond_2
    int-to-double v8, p1

    div-double v8, v4, v8

    .line 85
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    int-to-double v10, p1

    div-double v10, v0, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    .line 84
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    double-to-int v3, v8

    goto :goto_1

    .line 91
    .restart local v3    # "upperBound":I
    :cond_3
    if-ne p2, v12, :cond_4

    if-ne p1, v12, :cond_4

    move v2, v6

    .line 92
    goto :goto_2

    .line 93
    :cond_4
    if-eq p1, v12, :cond_0

    move v2, v3

    .line 96
    goto :goto_2
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    .line 61
    invoke-static {p0, p1, p2}, Lcom/alibaba/doraemon/impl/image/DefaultImageDecoder;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 65
    .local v0, "initialSize":I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 66
    const/4 v1, 0x1

    .line 67
    .local v1, "roundedSize":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 68
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .end local v1    # "roundedSize":I
    :cond_0
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 74
    .restart local v1    # "roundedSize":I
    :cond_1
    return v1
.end method

.method private decode(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "stream"    # Ljava/io/InputStream;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 18
    const/4 v3, 0x0

    .line 21
    .local v3, "ret":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 22
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput v6, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 23
    const/4 v6, 0x1

    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 25
    const/4 v6, 0x0

    invoke-static {p1, v6, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 26
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 28
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 29
    .local v5, "width":I
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 31
    .local v1, "height":I
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/16 v7, 0x400

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 33
    .local v4, "targetSize":I
    const/4 v6, 0x0

    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 34
    const/4 v6, -0x1

    invoke-static {v2, v4, v6}, Lcom/alibaba/doraemon/impl/image/DefaultImageDecoder;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v6

    iput v6, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 36
    const/4 v6, 0x0

    invoke-static {p1, v6, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 42
    .end local v1    # "height":I
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "targetSize":I
    .end local v5    # "width":I
    :goto_0
    return-object v3

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public decode(Lcom/alibaba/doraemon/image/ImageInputStream;Ljava/lang/String;I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .param p1, "stream"    # Lcom/alibaba/doraemon/image/ImageInputStream;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "displayMode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    const/4 v1, 0x0

    .line 50
    .local v1, "ret":Landroid/graphics/drawable/BitmapDrawable;
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/image/DefaultImageDecoder;->decode(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 52
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 53
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "ret":Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 56
    .restart local v1    # "ret":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    return-object v1
.end method
