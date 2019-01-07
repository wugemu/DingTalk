.class public Lcom/amap/api/mapcore/util/ee;
.super Lcom/amap/api/mapcore/util/ef;
.source "ImageResizer.java"


# instance fields
.field protected a:I

.field protected b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/ef;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-virtual {p0, p2, p3}, Lcom/amap/api/mapcore/util/ee;->a(II)V

    .line 49
    return-void
.end method

.method public static a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 5

    .prologue
    .line 250
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 251
    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 252
    const/4 v0, 0x1

    .line 254
    if-gt v2, p2, :cond_0

    if-le v3, p1, :cond_2

    .line 258
    :cond_0
    int-to-float v0, v2

    int-to-float v1, p2

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 260
    int-to-float v1, v3

    int-to-float v4, p1

    div-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 266
    if-ge v0, v1, :cond_1

    .line 275
    :goto_0
    mul-int v1, v3, v2

    int-to-float v1, v1

    .line 279
    mul-int v2, p1, p2

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 281
    :goto_1
    mul-int v3, v0, v0

    int-to-float v3, v3

    div-float v3, v1, v3

    cmpl-float v3, v3, v2

    if-lez v3, :cond_2

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 266
    goto :goto_0

    .line 285
    :cond_2
    return v0
.end method

.method private a(I)Landroid/graphics/Bitmap;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ee;->d:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amap/api/mapcore/util/ee;->a:I

    iget v2, p0, Lcom/amap/api/mapcore/util/ee;->b:I

    .line 95
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ee;->a()Lcom/amap/api/mapcore/util/ec;

    move-result-object v3

    .line 94
    invoke-static {v0, p1, v1, v2, v3}, Lcom/amap/api/mapcore/util/ee;->a(Landroid/content/res/Resources;IIILcom/amap/api/mapcore/util/ec;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/res/Resources;IIILcom/amap/api/mapcore/util/ec;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 122
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 123
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 126
    invoke-static {v0, p2, p3}, Lcom/amap/api/mapcore/util/ee;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 135
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 136
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/FileDescriptor;IILcom/amap/api/mapcore/util/ec;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 192
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 193
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 194
    invoke-static {p0, v2, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 197
    invoke-static {v0, p1, p2}, Lcom/amap/api/mapcore/util/ee;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 201
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 209
    invoke-static {p0, v2, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 100
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/ee;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(II)V
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lcom/amap/api/mapcore/util/ee;->a:I

    .line 71
    iput p2, p0, Lcom/amap/api/mapcore/util/ee;->b:I

    .line 72
    return-void
.end method
