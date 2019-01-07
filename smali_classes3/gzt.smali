.class public Lgzt;
.super Ljava/lang/Object;
.source "BitmapsFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgzt$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Lhcf;

.field private static final c:Lgzy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const-class v0, Lgzt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgzt;->a:Ljava/lang/String;

    .line 49
    invoke-static {}, Lhcf;->a()Lhcf;

    move-result-object v0

    sput-object v0, Lgzt;->b:Lhcf;

    .line 2038
    sget-object v0, Lgzy;->a:Lgzy;

    if-nez v0, :cond_0

    .line 2039
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 2040
    new-instance v0, Lgzs;

    invoke-direct {v0}, Lgzs;-><init>()V

    sput-object v0, Lgzy;->a:Lgzy;

    .line 2049
    :cond_0
    :goto_0
    sget-object v0, Lgzy;->a:Lgzy;

    .line 50
    sput-object v0, Lgzt;->c:Lgzy;

    .line 51
    return-void

    .line 2041
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 2042
    new-instance v0, Lgzx;

    new-instance v1, Lgzv;

    .line 2043
    invoke-static {}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getInstance()Lcom/alibaba/doraemon/image/memory/PoolFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getPooledByteBufferFactory()Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;

    move-result-object v2

    invoke-direct {v1, v2}, Lgzv;-><init>(Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;)V

    .line 2044
    invoke-static {}, Lhcf;->a()Lhcf;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgzx;-><init>(Lgzv;Lhcf;)V

    sput-object v0, Lgzy;->a:Lgzy;

    goto :goto_0

    .line 2046
    :cond_2
    new-instance v0, Lgzw;

    invoke-direct {v0}, Lgzw;-><init>()V

    sput-object v0, Lgzy;->a:Lgzy;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    return-void
.end method

.method public static a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 65
    if-nez p2, :cond_0

    .line 66
    :try_start_0
    sget-object p2, Lcom/alibaba/laiwang/photokit/nativecode/Bitmaps;->a:Landroid/graphics/Bitmap$Config;

    .line 68
    :cond_0
    sget-object v1, Lgzt;->c:Lgzy;

    invoke-virtual {v1, p0, p1, p2}, Lgzy;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 73
    :goto_0
    return-object v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lgzt;->a:Ljava/lang/String;

    const-string/jumbo v2, "createBitmap err: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lhcw;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "dstWidth"    # I
    .param p2, "dstHeight"    # I
    .param p3, "filter"    # Z

    .prologue
    const/4 v5, 0x0

    .line 98
    :try_start_0
    sget-object v1, Lgzt;->c:Lgzy;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, p2, v2}, Lgzy;->a(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 103
    :goto_0
    return-object v1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lgzt;->a:Ljava/lang/String;

    const-string/jumbo v2, "createScaledBitmap err: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lhcw;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;Lgzt$a;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "options"    # Lgzt$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 134
    if-nez p0, :cond_0

    .line 135
    sget-object v0, Lgzt;->a:Ljava/lang/String;

    const-string/jumbo v2, "decodeStream stream null:%s"

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p1, Lgzt$a;->a:Ljava/lang/String;

    invoke-static {v4}, Lhcw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v0, v2, v3}, Lhcw;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 154
    :goto_0
    return-object v0

    .line 138
    :cond_0
    if-nez p1, :cond_1

    .line 139
    new-instance p1, Lgzt$a;

    .end local p1    # "options":Lgzt$a;
    invoke-direct {p1}, Lgzt$a;-><init>()V

    .line 1168
    .restart local p1    # "options":Lgzt$a;
    :cond_1
    invoke-static {p0}, Lhbi;->a(Ljava/io/InputStream;)Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    move-result-object v0

    iput-object v0, p1, Lgzt$a;->e:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    .line 1171
    invoke-static {p0}, Lcom/alibaba/laiwang/photokit/utils/ImageUtils;->a(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p1, Lgzt$a;->d:I

    .line 1176
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1177
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 1179
    :cond_2
    invoke-static {p0}, Lcom/alibaba/doraemon/image/utils/BitmapUtil;->decodeDimensions(Ljava/io/InputStream;)Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1180
    if-eqz v2, :cond_3

    .line 1181
    :try_start_1
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lgzt$a;->outWidth:I

    .line 1182
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lgzt$a;->outHeight:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1188
    :cond_3
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1189
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 1194
    :cond_4
    :goto_1
    if-nez v2, :cond_5

    iget-object v0, p1, Lgzt$a;->e:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->isWebp(Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lixh;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1195
    invoke-static {p0}, Lcom/alibaba/laiwang/photokit/utils/ImageUtils;->b(Ljava/io/InputStream;)Landroid/util/Pair;

    move-result-object v2

    .line 1196
    if-eqz v2, :cond_7

    .line 1197
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lgzt$a;->outWidth:I

    .line 1198
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lgzt$a;->outHeight:I

    .line 143
    :cond_5
    :goto_2
    iget-boolean v0, p1, Lgzt$a;->inJustDecodeBounds:Z

    if-eqz v0, :cond_8

    move-object v0, v1

    .line 144
    goto :goto_0

    .line 1184
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 1185
    :goto_3
    :try_start_2
    sget-object v3, Lgzt;->a:Ljava/lang/String;

    const-string/jumbo v4, "obtainImageMetaData err %s: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p1, Lgzt$a;->a:Ljava/lang/String;

    invoke-static {v7}, Lhcw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lhcw;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1186
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1188
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1189
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    goto :goto_1

    .line 1188
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1189
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    :cond_6
    throw v0

    .line 1200
    :cond_7
    sget-object v0, Lgzt;->a:Ljava/lang/String;

    const-string/jumbo v2, "decodeWebpDimensions fail"

    invoke-static {v0, v2}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 145
    :cond_8
    iget v0, p1, Lgzt$a;->outWidth:I

    if-lez v0, :cond_b

    iget v0, p1, Lgzt$a;->outHeight:I

    if-lez v0, :cond_b

    .line 146
    iget v0, p1, Lgzt$a;->c:I

    if-lez v0, :cond_9

    iget v0, p1, Lgzt$a;->c:I

    if-gtz v0, :cond_a

    .line 147
    :cond_9
    iget v0, p1, Lgzt$a;->outWidth:I

    iput v0, p1, Lgzt$a;->b:I

    .line 148
    iget v0, p1, Lgzt$a;->outHeight:I

    iput v0, p1, Lgzt$a;->c:I

    .line 151
    :cond_a
    sget-object v0, Lgzt;->b:Lhcf;

    invoke-virtual {v0, p0, p1}, Lhcf;->a(Ljava/io/InputStream;Lgzt$a;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    .line 153
    :cond_b
    sget-object v0, Lgzt;->a:Ljava/lang/String;

    const-string/jumbo v2, "decodeStream outWidth|outHeight < 0:%s"

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p1, Lgzt$a;->a:Ljava/lang/String;

    invoke-static {v4}, Lhcw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v0, v2, v3}, Lhcw;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 154
    goto/16 :goto_0

    .line 1184
    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;Lgzt$a;)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "pathName"    # Ljava/lang/String;
    .param p1, "options"    # Lgzt$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 107
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 108
    sget-object v6, Lgzt;->a:Ljava/lang/String;

    const-string/jumbo v7, "decodeFile pathName null"

    invoke-static {v6, v7}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_0
    :goto_0
    return-object v5

    .line 112
    :cond_1
    const/4 v2, 0x0

    .line 114
    .local v2, "is":Lhco;
    if-nez p1, :cond_2

    .line 115
    :try_start_0
    new-instance v4, Lgzt$a;

    invoke-direct {v4}, Lgzt$a;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .end local p1    # "options":Lgzt$a;
    .local v4, "options":Lgzt$a;
    :try_start_1
    iput-object p0, v4, Lgzt$a;->a:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object p1, v4

    .line 119
    .end local v4    # "options":Lgzt$a;
    .restart local p1    # "options":Lgzt$a;
    :cond_2
    :try_start_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .local v1, "file":Ljava/io/File;
    new-instance v3, Lhco;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6, p0}, Lhco;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    .end local v2    # "is":Lhco;
    .local v3, "is":Lhco;
    :try_start_3
    invoke-static {v3, p1}, Lgzt;->a(Ljava/io/InputStream;Lgzt$a;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v5

    .line 127
    invoke-virtual {v3}, Lhco;->close()V

    goto :goto_0

    .line 122
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "is":Lhco;
    .restart local v2    # "is":Lhco;
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    sget-object v6, Lgzt;->a:Ljava/lang/String;

    const-string/jumbo v7, "decodeFile err %s: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {p0}, Lhcw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lhcw;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 126
    if-eqz v2, :cond_0

    .line 127
    invoke-virtual {v2}, Lhco;->close()V

    goto :goto_0

    .line 126
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v2, :cond_3

    .line 127
    invoke-virtual {v2}, Lhco;->close()V

    :cond_3
    throw v5

    .line 126
    .end local p1    # "options":Lgzt$a;
    .restart local v4    # "options":Lgzt$a;
    :catchall_1
    move-exception v5

    move-object p1, v4

    .end local v4    # "options":Lgzt$a;
    .restart local p1    # "options":Lgzt$a;
    goto :goto_2

    .end local v2    # "is":Lhco;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "is":Lhco;
    :catchall_2
    move-exception v5

    move-object v2, v3

    .end local v3    # "is":Lhco;
    .restart local v2    # "is":Lhco;
    goto :goto_2

    .line 122
    .end local v1    # "file":Ljava/io/File;
    .end local p1    # "options":Lgzt$a;
    .restart local v4    # "options":Lgzt$a;
    :catch_1
    move-exception v0

    move-object p1, v4

    .end local v4    # "options":Lgzt$a;
    .restart local p1    # "options":Lgzt$a;
    goto :goto_1

    .end local v2    # "is":Lhco;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "is":Lhco;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3    # "is":Lhco;
    .restart local v2    # "is":Lhco;
    goto :goto_1
.end method

.method public static a(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 81
    .line 1097
    if-eqz p0, :cond_0

    .line 1098
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 82
    :cond_0
    return-void
.end method
