.class public final Lhrj;
.super Ljava/lang/Object;
.source "BitmapMagician.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 36
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 37
    .local v1, "option":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 38
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 40
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 41
    .local v4, "width":I
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 42
    .local v0, "height":I
    const/4 v3, 0x1

    .line 43
    .local v3, "sampleSize":I
    :goto_0
    div-int v5, v4, v3

    const/16 v6, 0x384

    if-gt v5, v6, :cond_0

    div-int v5, v0, v3

    const/16 v6, 0x578

    if-le v5, v6, :cond_1

    .line 44
    :cond_0
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 47
    :cond_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 48
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 50
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 56
    return-object v5

    .line 52
    .end local v0    # "height":I
    .end local v1    # "option":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v3    # "sampleSize":I
    .end local v4    # "width":I
    :catchall_0
    move-exception v5

    .line 56
    throw v5
.end method

.method public static a(Landroid/graphics/Bitmap;I)Ljava/lang/String;
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "quality"    # I

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 83
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v3, p1, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 85
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 86
    .local v2, "bytes":[B
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lhv;->b([BI)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 88
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    return-object v3

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "bytes":[B
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v3

    :goto_0
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    throw v3

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_0
.end method
