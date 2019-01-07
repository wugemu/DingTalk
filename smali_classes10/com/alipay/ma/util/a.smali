.class public final Lcom/alipay/ma/util/a;
.super Ljava/lang/Object;
.source "ImageTool.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private static a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 13
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v12, -0x1

    .line 210
    .line 1226
    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v3

    .line 1227
    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v6, v3

    .line 1229
    if-ne p2, v12, :cond_1

    move v0, v2

    .line 1231
    :goto_0
    if-ne p1, v12, :cond_2

    const/16 v3, 0x80

    .line 1234
    :goto_1
    if-ge v3, v0, :cond_3

    .line 213
    .local v0, "initialSize":I
    :cond_0
    :goto_2
    const/16 v2, 0x8

    if-gt v0, v2, :cond_5

    .line 214
    const/4 v1, 0x1

    .line 215
    .local v1, "roundedSize":I
    :goto_3
    if-ge v1, v0, :cond_6

    .line 216
    shl-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1229
    .end local v0    # "initialSize":I
    .end local v1    # "roundedSize":I
    :cond_1
    mul-double v8, v4, v6

    int-to-double v10, p2

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v0, v8

    goto :goto_0

    .line 1231
    :cond_2
    int-to-double v8, p1

    div-double/2addr v4, v8

    .line 1232
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    int-to-double v8, p1

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    .line 1231
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    double-to-int v3, v4

    goto :goto_1

    .line 1239
    :cond_3
    if-ne p2, v12, :cond_4

    if-ne p1, v12, :cond_4

    move v0, v2

    .line 1240
    goto :goto_2

    .line 1241
    :cond_4
    if-eq p1, v12, :cond_0

    move v0, v3

    .line 1244
    goto :goto_2

    .line 219
    .restart local v0    # "initialSize":I
    :cond_5
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 221
    .restart local v1    # "roundedSize":I
    :cond_6
    return v1
.end method

.method public static a(Ljava/io/File;IIZ)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "srcImageFile"    # Ljava/io/File;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "adjustOritation"    # Z

    .prologue
    const/4 v5, 0x1

    .line 137
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 138
    const/4 v3, 0x0

    .line 139
    .local v3, "resultBitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 140
    .local v2, "opts":Landroid/graphics/BitmapFactory$Options;
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 141
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    .end local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 142
    .restart local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 143
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 145
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 146
    .local v1, "minSideLength":I
    mul-int v4, p1, p2

    invoke-static {v2, v1, v4}, Lcom/alipay/ma/util/a;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v4

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 147
    const/4 v4, 0x0

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 148
    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 149
    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 152
    .end local v1    # "minSideLength":I
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 173
    .end local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v3    # "resultBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v3

    .line 153
    .restart local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v3    # "resultBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1
    const-string/jumbo v4, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "e"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1029
    sget-object v4, Liir;->a:Liir$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 155
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v4

    throw v4

    .line 173
    .end local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v3    # "resultBitmap":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
