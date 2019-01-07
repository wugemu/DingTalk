.class abstract Lhcd;
.super Lhcf;
.source "DalvikPurgeableDecoder.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lhcd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhcd;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lhcf;-><init>()V

    return-void
.end method

.method private static a(ILandroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;
    .locals 4
    .param p0, "sampleSize"    # I
    .param p1, "bitmapConfig"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/4 v3, 0x1

    .line 210
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 211
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 212
    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 214
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 216
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 218
    iput p0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 219
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 220
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 222
    :cond_0
    return-object v0
.end method

.method private b(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 162
    const/4 v0, 0x0

    .line 164
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    const v2, 0x7fffffff

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->mark(I)V

    .line 169
    :cond_0
    invoke-static {}, Lcom/alibaba/laiwang/photokit/nativecode/Bitmaps;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 170
    invoke-virtual {p0, p1, p2}, Lhcd;->a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 171
    invoke-virtual {p0, v0}, Lhcd;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 177
    :goto_0
    if-nez v0, :cond_1

    .line 178
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 179
    const/4 v2, 0x0

    iput-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 180
    invoke-virtual {p0, p1, p2}, Lhcd;->a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 184
    :cond_1
    if-nez v0, :cond_2

    .line 185
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 186
    const/4 v2, 0x0

    invoke-static {p1, v2, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 193
    :cond_2
    :goto_1
    return-object v0

    .line 173
    :cond_3
    sget-object v2, Lhcd;->a:Ljava/lang/String;

    const-string/jumbo v3, "Bitmaps so load fail"

    invoke-static {v2, v3}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lhcd;->a:Ljava/lang/String;

    const-string/jumbo v3, "decodeFromEncodedStream err:%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lhcw;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private b([BILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "bytes"    # [B
    .param p2, "len"    # I
    .param p3, "options"    # Landroid/graphics/BitmapFactory$Options;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 53
    const/4 v0, 0x0

    .line 57
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {}, Lcom/alibaba/laiwang/photokit/nativecode/Bitmaps;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 58
    invoke-virtual {p0, p1, p2, p3}, Lhcd;->a([BILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Lhcd;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 65
    :goto_0
    if-nez v0, :cond_0

    .line 66
    const/4 v2, 0x0

    iput-boolean v2, p3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lhcd;->a([BILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    :cond_0
    if-nez v0, :cond_1

    .line 72
    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {p1, v2, v3, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 83
    :cond_1
    :goto_1
    return-object v0

    .line 61
    :cond_2
    sget-object v2, Lhcd;->a:Ljava/lang/String;

    const-string/jumbo v3, "Bitmaps so load fail"

    invoke-static {v2, v3}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lhcd;->a:Ljava/lang/String;

    const-string/jumbo v3, "decodeFromEncodedBytes err:%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lhcw;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static b(Ljava/io/InputStream;Lgzt$a;)Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    .locals 9
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "options"    # Lgzt$a;

    .prologue
    .line 242
    invoke-static {}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getInstance()Lcom/alibaba/doraemon/image/memory/PoolFactory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getPooledByteBufferFactory()Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;

    move-result-object v0

    .line 243
    .local v0, "byteBufferFactory":Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;
    invoke-interface {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;->newOutputStream()Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;

    move-result-object v3

    .line 246
    .local v3, "outputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;
    :try_start_0
    invoke-static {p1}, Lhcq;->b(Lgzt$a;)F

    move-result v4

    float-to-int v2, v4

    .line 247
    .local v2, "numerator":I
    iget v4, p1, Lgzt$a;->d:I

    .line 248
    invoke-static {v4}, Lcom/alibaba/doraemon/image/utils/JfifUtil;->getAutoRotateAngleFromOrientation(I)I

    move-result v4

    const/16 v5, 0x64

    .line 247
    invoke-static {p0, v3, v4, v2, v5}, Lcom/alibaba/laiwang/photokit/nativecode/JpegTranscoder;->a(Ljava/io/InputStream;Ljava/io/OutputStream;III)V

    .line 251
    invoke-virtual {v3}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->toByteBuffer()Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 256
    invoke-virtual {v3}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->close()V

    .line 258
    .end local v2    # "numerator":I
    :goto_0
    return-object v4

    .line 252
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    sget-object v4, Lhcd;->a:Ljava/lang/String;

    const-string/jumbo v5, "transcodeJpeg err %s: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p1, Lgzt$a;->a:Ljava/lang/String;

    invoke-static {v8}, Lhcw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lhcw;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    invoke-virtual {v3}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->close()V

    .line 258
    const/4 v4, 0x0

    goto :goto_0

    .line 256
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->close()V

    throw v4
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 231
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/laiwang/photokit/nativecode/Bitmaps;->a(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p1

    .line 233
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 235
    sget-object v1, Lhcd;->a:Ljava/lang/String;

    const-string/jumbo v2, "pin err:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lhcw;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 238
    const/4 p1, 0x0

    goto :goto_0
.end method

.method abstract a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method public a(Ljava/io/InputStream;Lgzt$a;)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "opt"    # Lgzt$a;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 96
    const/4 v5, 0x0

    .line 98
    .local v5, "ret":Landroid/graphics/Bitmap;
    sget-object v11, Lcom/alibaba/laiwang/photokit/utils/TriState;->YES:Lcom/alibaba/laiwang/photokit/utils/TriState;

    .line 1156
    invoke-static {}, Lhbj;->b()Z

    move-result v10

    if-nez v10, :cond_4

    .line 1157
    sget-object v7, Lcom/alibaba/laiwang/photokit/utils/TriState;->NO:Lcom/alibaba/laiwang/photokit/utils/TriState;

    .line 98
    :goto_0
    if-ne v11, v7, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "byteBuffer":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    const/4 v1, 0x0

    .line 103
    .local v1, "bytes":[B
    :try_start_0
    invoke-static {p1, p2}, Lhcd;->b(Ljava/io/InputStream;Lgzt$a;)Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    move-result-object v0

    .line 104
    invoke-interface {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->size()I

    move-result v7

    invoke-static {v7}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v1

    .line 105
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->size()I

    move-result v10

    invoke-interface {v0, v7, v1, v8, v10}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->read(I[BII)V

    .line 106
    const/4 v7, 0x1

    iget-object v8, p2, Lgzt$a;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8}, Lhcd;->a(ILandroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    .line 109
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-interface {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->size()I

    move-result v7

    invoke-direct {p0, v1, v7, v4}, Lhcd;->b([BILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 116
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 117
    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->close()V

    .line 123
    .end local v0    # "byteBuffer":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    .end local v1    # "bytes":[B
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_1
    if-nez v5, :cond_2

    .line 2262
    instance-of v7, p1, Lcom/alibaba/doraemon/image/ImageInputStream;

    if-eqz v7, :cond_c

    move-object v7, p1

    .line 2263
    check-cast v7, Lcom/alibaba/doraemon/image/ImageInputStream;

    invoke-virtual {v7}, Lcom/alibaba/doraemon/image/ImageInputStream;->length()I

    move-result v6

    .line 125
    .local v6, "size":I
    :goto_2
    if-eq v6, v9, :cond_2

    const/high16 v7, 0x300000

    if-ge v6, v7, :cond_2

    .line 127
    const/4 v1, 0x0

    .line 129
    .restart local v1    # "bytes":[B
    :try_start_1
    invoke-static {v6}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v1

    .line 130
    const/4 v7, 0x0

    invoke-virtual {p1, v1, v7, v6}, Ljava/io/InputStream;->read([BII)I

    .line 131
    invoke-virtual {p0, v1, v6, p2}, Lhcd;->a([BILgzt$a;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 134
    if-nez v5, :cond_1

    iget-object v7, p2, Lgzt$a;->e:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    invoke-static {v7}, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->isWebp(Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lixh;->a()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 135
    invoke-static {v1}, Lixh;->b([B)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 142
    :cond_1
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 147
    .end local v1    # "bytes":[B
    .end local v6    # "size":I
    :cond_2
    :goto_3
    if-nez v5, :cond_3

    .line 150
    invoke-static {p2}, Lhcq;->a(Lgzt$a;)I

    move-result v3

    .line 151
    .local v3, "inSampleSize":I
    iget-object v7, p2, Lgzt$a;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7}, Lhcd;->a(ILandroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    .line 154
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p0, p1, v4}, Lhcd;->b(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 157
    .end local v3    # "inSampleSize":I
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_3
    return-object v5

    .line 1159
    :cond_4
    if-eqz p2, :cond_5

    iget-object v10, p2, Lgzt$a;->e:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    sget-object v12, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->UNKNOWN:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    if-ne v10, v12, :cond_6

    .line 1160
    :cond_5
    sget-object v7, Lcom/alibaba/laiwang/photokit/utils/TriState;->UNSET:Lcom/alibaba/laiwang/photokit/utils/TriState;

    goto/16 :goto_0

    .line 1162
    :cond_6
    iget-object v10, p2, Lgzt$a;->e:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    sget-object v12, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->JPEG:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    if-eq v10, v12, :cond_7

    .line 1163
    sget-object v7, Lcom/alibaba/laiwang/photokit/utils/TriState;->NO:Lcom/alibaba/laiwang/photokit/utils/TriState;

    goto/16 :goto_0

    .line 1165
    :cond_7
    iget v10, p2, Lgzt$a;->d:I

    if-ne v10, v8, :cond_8

    .line 1166
    invoke-static {p2}, Lhcq;->b(Lgzt$a;)F

    move-result v10

    .line 2148
    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v12, v10, v12

    if-ltz v12, :cond_a

    const/high16 v12, 0x41000000    # 8.0f

    cmpg-float v10, v10, v12

    if-gez v10, :cond_a

    move v10, v8

    .line 1166
    :goto_4
    if-eqz v10, :cond_9

    :cond_8
    move v7, v8

    .line 1165
    :cond_9
    invoke-static {v7}, Lcom/alibaba/laiwang/photokit/utils/TriState;->valueOf(Z)Lcom/alibaba/laiwang/photokit/utils/TriState;

    move-result-object v7

    goto/16 :goto_0

    :cond_a
    move v10, v7

    .line 2148
    goto :goto_4

    .line 111
    .restart local v0    # "byteBuffer":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    .restart local v1    # "bytes":[B
    :catch_0
    move-exception v2

    .line 112
    .local v2, "e":Ljava/lang/Throwable;
    const/4 v5, 0x0

    .line 113
    :try_start_2
    sget-object v7, Lhcd;->a:Ljava/lang/String;

    const-string/jumbo v8, "decode encode jpg err %s: %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p2, Lgzt$a;->a:Ljava/lang/String;

    invoke-static {v12}, Lhcw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v8, v10}, Lhcw;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 117
    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->close()V

    goto/16 :goto_1

    .line 116
    .end local v2    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 117
    if-eqz v0, :cond_b

    .line 118
    invoke-interface {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->close()V

    :cond_b
    throw v7

    .line 2264
    .end local v0    # "byteBuffer":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    .end local v1    # "bytes":[B
    :cond_c
    instance-of v7, p1, Lhco;

    if-eqz v7, :cond_d

    move-object v7, p1

    .line 2265
    check-cast v7, Lhco;

    .line 3054
    iget-wide v10, v7, Lhco;->a:J

    .line 2265
    long-to-int v6, v10

    goto/16 :goto_2

    :cond_d
    move v6, v9

    .line 2267
    goto/16 :goto_2

    .line 137
    .restart local v1    # "bytes":[B
    .restart local v6    # "size":I
    :catch_1
    move-exception v2

    .line 138
    .restart local v2    # "e":Ljava/lang/Throwable;
    const/4 v5, 0x0

    .line 139
    :try_start_3
    sget-object v7, Lhcd;->a:Ljava/lang/String;

    const-string/jumbo v8, "decode encode png bytes err %s: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p2, Lgzt$a;->a:Ljava/lang/String;

    invoke-static {v11}, Lhcw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lhcw;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 142
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    goto/16 :goto_3

    .end local v2    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v7

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    throw v7
.end method

.method abstract a([BILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method public a([BILgzt$a;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "len"    # I
    .param p3, "opt"    # Lgzt$a;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 37
    invoke-static {p3}, Lhcq;->a(Lgzt$a;)I

    move-result v0

    .line 38
    .local v0, "inSampleSize":I
    iget-object v3, p3, Lgzt$a;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3}, Lhcd;->a(ILandroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 41
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p0, p1, p2, v1}, Lhcd;->b([BILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 44
    .local v2, "ret":Landroid/graphics/Bitmap;
    if-nez v2, :cond_0

    iget-object v3, p3, Lgzt$a;->e:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    invoke-static {v3}, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->isWebp(Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lixh;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    invoke-static {p1}, Lixh;->b([B)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 48
    :cond_0
    return-object v2
.end method
