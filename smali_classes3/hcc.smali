.class public Lhcc;
.super Lhcf;
.source "ArtDecoder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lhcc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhcc;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lhcf;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 43
    const/16 v3, 0x4000

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v2

    .line 46
    .local v2, "tmpStorage":[B
    :try_start_0
    iput-object v2, p1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 47
    const/4 v3, 0x0

    invoke-static {p0, v3, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 51
    .local v0, "decodedBitmap":Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 54
    return-object v0

    .line 48
    .end local v0    # "decodedBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 49
    .local v1, "re":Ljava/lang/RuntimeException;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .end local v1    # "re":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    throw v3
.end method

.method private static a([BILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "bytes"    # [B
    .param p1, "len"    # I
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 61
    const/16 v3, 0x4000

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v2

    .line 64
    .local v2, "tmpStorage":[B
    :try_start_0
    iput-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 65
    const/4 v4, 0x0

    if-lez p1, :cond_0

    array-length v3, p0

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_0
    invoke-static {p0, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 69
    .local v0, "decodedBitmap":Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 72
    return-object v0

    .line 65
    .end local v0    # "decodedBitmap":Landroid/graphics/Bitmap;
    :cond_0
    :try_start_1
    array-length v3, p0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "re":Ljava/lang/RuntimeException;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    .end local v1    # "re":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    throw v3
.end method

.method private static a(Lgzt$a;)Landroid/graphics/BitmapFactory$Options;
    .locals 3
    .param p0, "opt"    # Lgzt$a;

    .prologue
    const/4 v2, 0x1

    .line 79
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 80
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static {p0}, Lhcq;->a(Lgzt$a;)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 81
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 82
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 83
    iget-object v1, p0, Lgzt$a;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 84
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 85
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;Lgzt$a;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "opt"    # Lgzt$a;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 116
    if-nez p1, :cond_0

    .line 117
    const/4 v4, 0x0

    .line 134
    :goto_0
    return-object v4

    .line 120
    :cond_0
    invoke-static {p2}, Lhcc;->a(Lgzt$a;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 121
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    iget-object v6, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v6, v7, :cond_1

    move v3, v4

    .line 122
    .local v3, "retryOnFail":Z
    :goto_1
    const/4 v0, 0x0

    .line 124
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p1, v1}, Lhcc;->a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 134
    :goto_2
    iget v4, p2, Lgzt$a;->d:I

    invoke-static {v0, v4}, Lcom/alibaba/laiwang/photokit/utils/ImageUtils;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "retryOnFail":Z
    :cond_1
    move v3, v5

    .line 121
    goto :goto_1

    .line 125
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "retryOnFail":Z
    :catch_0
    move-exception v2

    .line 126
    .local v2, "re":Ljava/lang/RuntimeException;
    if-eqz v3, :cond_2

    .line 127
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 128
    invoke-static {p1, v1}, Lhcc;->a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 130
    :cond_2
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 131
    sget-object v6, Lhcc;->a:Ljava/lang/String;

    const-string/jumbo v7, "decodeImageFromStream %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v6, v7, v4}, Lhcw;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public final a([BILgzt$a;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "bytes"    # [B
    .param p2, "len"    # I
    .param p3, "opt"    # Lgzt$a;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 90
    if-nez p1, :cond_0

    .line 91
    const/4 v4, 0x0

    .line 111
    :goto_0
    return-object v4

    .line 94
    :cond_0
    invoke-static {p3}, Lhcc;->a(Lgzt$a;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 95
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v6, Lhcc;->a:Ljava/lang/String;

    const-string/jumbo v7, "options inSampleSize= %s outWidth= %s outHeight= %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    iget v9, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    iget v9, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 96
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v9, 0x2

    iget v10, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 95
    invoke-static {v6, v7, v8}, Lhcw;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    iget-object v6, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v6, v7, :cond_1

    move v3, v4

    .line 99
    .local v3, "retryOnFail":Z
    :goto_1
    const/4 v0, 0x0

    .line 101
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p1, p2, v1}, Lhcc;->a([BILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 111
    :goto_2
    iget v4, p3, Lgzt$a;->d:I

    invoke-static {v0, v4}, Lcom/alibaba/laiwang/photokit/utils/ImageUtils;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "retryOnFail":Z
    :cond_1
    move v3, v5

    .line 98
    goto :goto_1

    .line 102
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "retryOnFail":Z
    :catch_0
    move-exception v2

    .line 103
    .local v2, "re":Ljava/lang/RuntimeException;
    if-eqz v3, :cond_2

    .line 104
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 105
    invoke-static {p1, p2, v1}, Lhcc;->a([BILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 107
    :cond_2
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 108
    sget-object v6, Lhcc;->a:Ljava/lang/String;

    const-string/jumbo v7, "decodeImageFromBytes %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v6, v7, v4}, Lhcw;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method
