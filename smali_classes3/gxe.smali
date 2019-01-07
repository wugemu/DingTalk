.class public Lgxe;
.super Lgxf;
.source "ImageResizer.java"


# instance fields
.field protected a:I

.field protected b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageSize"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lgxf;-><init>(Landroid/content/Context;)V

    .line 2071
    iput p2, p0, Lgxe;->a:I

    .line 2072
    iput p2, p0, Lgxe;->b:I

    .line 62
    return-void
.end method

.method private static a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 12
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 235
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 236
    .local v2, "height":I
    iget v8, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 237
    .local v8, "width":I
    const/4 v3, 0x1

    .line 239
    .local v3, "inSampleSize":I
    if-gt v2, p2, :cond_0

    if-le v8, p1, :cond_2

    .line 241
    :cond_0
    div-int/lit8 v0, v2, 0x2

    .line 242
    .local v0, "halfHeight":I
    div-int/lit8 v1, v8, 0x2

    .line 246
    .local v1, "halfWidth":I
    :goto_0
    div-int v9, v0, v3

    if-le v9, p2, :cond_1

    div-int v9, v1, v3

    if-le v9, p1, :cond_1

    .line 248
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 257
    :cond_1
    mul-int v9, v8, v2

    div-int/2addr v9, v3

    int-to-long v4, v9

    .line 260
    .local v4, "totalPixels":J
    mul-int v9, p1, p2

    mul-int/lit8 v9, v9, 0x2

    int-to-long v6, v9

    .line 262
    .local v6, "totalReqPixelsCap":J
    :goto_1
    cmp-long v9, v4, v6

    if-lez v9, :cond_2

    .line 263
    mul-int/lit8 v3, v3, 0x2

    .line 264
    const-wide/16 v10, 0x2

    div-long/2addr v4, v10

    goto :goto_1

    .line 267
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    .end local v4    # "totalPixels":J
    .end local v6    # "totalReqPixelsCap":J
    :cond_2
    return v3
.end method

.method public static a(Ljava/io/FileDescriptor;IILcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "fileDescriptor"    # Ljava/io/FileDescriptor;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I
    .param p3, "cache"    # Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;

    .prologue
    const/4 v2, 0x0

    .line 183
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 184
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 185
    invoke-static {p0, v2, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 188
    invoke-static {v0, p1, p2}, Lgxe;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 191
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 194
    invoke-static {}, Lgxh;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    invoke-static {v0, p3}, Lgxe;->a(Landroid/graphics/BitmapFactory$Options;Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;)V

    .line 198
    :cond_0
    invoke-static {p0, v2, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private static a(Landroid/graphics/BitmapFactory$Options;Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;)V
    .locals 2
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "cache"    # Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 206
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 208
    if-eqz p1, :cond_0

    .line 210
    invoke-virtual {p1, p0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 212
    .local v0, "inBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 213
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 217
    .end local v0    # "inBitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "data"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 101
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2095
    iget-object v1, p0, Lgxe;->g:Landroid/content/res/Resources;

    iget v2, p0, Lgxe;->a:I

    iget v3, p0, Lgxe;->b:I

    .line 2196
    iget-object v4, p0, Lgxf;->c:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;

    .line 3120
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3121
    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3122
    invoke-static {v1, v0, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 3125
    invoke-static {v5, v2, v3}, Lgxe;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3129
    invoke-static {}, Lgxh;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3130
    invoke-static {v5, v4}, Lgxe;->a(Landroid/graphics/BitmapFactory$Options;Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;)V

    .line 3134
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3135
    invoke-static {v1, v0, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 101
    return-object v0
.end method
