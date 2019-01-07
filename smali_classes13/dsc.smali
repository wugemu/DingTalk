.class public Ldsc;
.super Ljava/lang/Object;
.source "ShareDownloadManager.java"


# static fields
.field private static volatile b:Ldsc;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string/jumbo v0, "outter_share"

    iput-object v0, p0, Ldsc;->a:Ljava/lang/String;

    .line 60
    return-void
.end method

.method private static a(Lcom/alibaba/doraemon/request/Response;)Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    .locals 14
    .param p0, "response"    # Lcom/alibaba/doraemon/request/Response;

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 251
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/alibaba/doraemon/request/Response;->isSuccess()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {p0}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 252
    invoke-interface {p0}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v1

    .line 253
    .local v1, "inputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    invoke-virtual {v1}, Lcom/alibaba/doraemon/request/RequestInputStream;->length()I

    move-result v7

    int-to-long v2, v7

    .line 255
    .local v2, "inputStreamLength":J
    const-wide/32 v8, 0xa00000

    cmp-long v7, v2, v8

    if-lez v7, :cond_0

    .line 256
    const-string/jumbo v7, "im"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "[ShareDownloadManager]"

    aput-object v9, v8, v10

    const-string/jumbo v9, " image url size is larger than "

    aput-object v9, v8, v11

    const-string/jumbo v9, "10485760"

    .line 257
    aput-object v9, v8, v12

    const-string/jumbo v9, ", force not read"

    aput-object v9, v8, v13

    .line 256
    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v6, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    sget-object v7, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->a:Ljava/lang/String;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "image url size is : "

    aput-object v9, v8, v10

    .line 259
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    const-string/jumbo v9, ", larger than limit:"

    aput-object v9, v8, v12

    const-string/jumbo v9, "10485760"

    aput-object v9, v8, v13

    .line 258
    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v6

    .line 277
    .end local v1    # "inputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    .end local v2    # "inputStreamLength":J
    :goto_0
    return-object v4

    .line 263
    .restart local v1    # "inputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    .restart local v2    # "inputStreamLength":J
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/alibaba/doraemon/request/RequestInputStream;->length()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/alibaba/doraemon/request/RequestInputStream;->mark(I)V

    .line 264
    new-instance v4, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;

    invoke-static {}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getInstance()Lcom/alibaba/doraemon/image/memory/PoolFactory;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getPooledByteBufferFactory()Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;

    move-result-object v7

    invoke-interface {v7, v1}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;->newByteBuffer(Ljava/io/InputStream;)Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;-><init>(Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    .local v4, "pooledByteBufferInputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/doraemon/request/RequestInputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 266
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "pooledByteBufferInputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    :catch_1
    move-exception v5

    .line 267
    .local v5, "throwable":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v7, "im"

    const/4 v8, 0x0

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "[ShareDownloadManager]"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, " readFromResponse error"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 270
    :try_start_3
    invoke-virtual {v1}, Lcom/alibaba/doraemon/request/RequestInputStream;->reset()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    move-object v4, v6

    .line 275
    goto :goto_0

    .line 271
    :catch_2
    move-exception v0

    .line 272
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 269
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "throwable":Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    .line 270
    :try_start_4
    invoke-virtual {v1}, Lcom/alibaba/doraemon/request/RequestInputStream;->reset()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 273
    :goto_2
    throw v6

    .line 271
    :catch_3
    move-exception v0

    .line 272
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "inputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    .end local v2    # "inputStreamLength":J
    :cond_1
    move-object v4, v6

    .line 277
    goto :goto_0
.end method

.method public static a()Ldsc;
    .locals 2

    .prologue
    .line 48
    sget-object v0, Ldsc;->b:Ldsc;

    if-nez v0, :cond_1

    .line 49
    const-class v1, Ldsc;

    monitor-enter v1

    .line 50
    :try_start_0
    sget-object v0, Ldsc;->b:Ldsc;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ldsc;

    invoke-direct {v0}, Ldsc;-><init>()V

    sput-object v0, Ldsc;->b:Ldsc;

    .line 53
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_1
    sget-object v0, Ldsc;->b:Ldsc;

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 205
    const/16 v11, 0x10

    new-array v3, v11, [C

    fill-array-data v3, :array_0

    .line 207
    .local v3, "hexDigits":[C
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 208
    .local v0, "btInput":[B
    const-string/jumbo v11, "MD5"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    .line 209
    .local v9, "mdInst":Ljava/security/MessageDigest;
    invoke-virtual {v9, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 210
    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    .line 211
    .local v8, "md":[B
    array-length v5, v8

    .line 212
    .local v5, "j":I
    mul-int/lit8 v11, v5, 0x2

    new-array v10, v11, [C

    .line 213
    .local v10, "str":[C
    const/4 v6, 0x0

    .line 214
    .local v6, "k":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v7, v6

    .end local v6    # "k":I
    .local v7, "k":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 215
    aget-byte v1, v8, v4

    .line 216
    .local v1, "byte0":B
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "k":I
    .restart local v6    # "k":I
    ushr-int/lit8 v11, v1, 0x4

    and-int/lit8 v11, v11, 0xf

    aget-char v11, v3, v11

    aput-char v11, v10, v7

    .line 217
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "k":I
    .restart local v7    # "k":I
    and-int/lit8 v11, v1, 0xf

    aget-char v11, v3, v11

    aput-char v11, v10, v6

    .line 214
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 219
    .end local v1    # "byte0":B
    :cond_0
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v10}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .end local v0    # "btInput":[B
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v7    # "k":I
    .end local v8    # "md":[B
    .end local v9    # "mdInst":Ljava/security/MessageDigest;
    .end local v10    # "str":[C
    :goto_1
    return-object v11

    .line 220
    :catch_0
    move-exception v2

    .line 221
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 222
    const/4 v11, 0x0

    goto :goto_1

    .line 205
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method static synthetic a(Ldsc;Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/doraemon/request/Response;Lcma;)V
    .locals 14
    .param p0, "x0"    # Ldsc;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/alibaba/doraemon/request/Response;
    .param p4, "x4"    # Lcma;

    .prologue
    .line 38
    .line 1114
    if-eqz p1, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1168
    :cond_0
    :goto_0
    return-void

    .line 1117
    :cond_1
    const/4 v4, 0x0

    .line 1118
    const/4 v3, 0x0

    .line 1119
    invoke-static/range {p3 .. p3}, Ldsc;->a(Lcom/alibaba/doraemon/request/Response;)Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;

    move-result-object v8

    .line 1120
    if-eqz v8, :cond_e

    .line 1121
    invoke-virtual {v8}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->available()I

    move-result v2

    int-to-long v10, v2

    .line 1174
    if-eqz p1, :cond_3

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1175
    invoke-static/range {p2 .. p2}, Ldsc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1176
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1178
    const-string/jumbo v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1179
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1180
    new-instance v2, Ljava/io/File;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x1

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v9, v6, v7

    const/4 v7, 0x2

    iget-object v9, p0, Ldsc;->a:Ljava/lang/String;

    aput-object v9, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1187
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1188
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 1190
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_7

    .line 1191
    const-string/jumbo v2, "im"

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v9, "[ShareDownloadManager]"

    aput-object v9, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v9, " buildImageFileFromUrl dir create failed"

    aput-object v9, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    :cond_3
    const/4 v2, 0x0

    move-object v7, v2

    .line 1123
    :goto_2
    if-eqz v7, :cond_d

    .line 1124
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 1125
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v12

    cmp-long v3, v10, v12

    if-eqz v3, :cond_4

    .line 1126
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1128
    :cond_4
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_a

    .line 1130
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1134
    :goto_3
    const/16 v3, 0x400

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v9

    .line 1135
    const/4 v6, 0x0

    .line 1137
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1139
    :goto_4
    :try_start_2
    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->read([B)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_9

    .line 1140
    const/4 v6, 0x0

    invoke-virtual {v5, v9, v6, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    .line 1143
    :catch_0
    move-exception v3

    .line 1144
    :goto_5
    :try_start_3
    const-string/jumbo v6, "im"

    const/4 v7, 0x0

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "[ShareDownloadManager]"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, " write file exception:"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v11

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v7, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1146
    invoke-static {v5}, Ldhw;->a(Ljava/io/Closeable;)V

    .line 1147
    invoke-static {v9}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    move v3, v4

    .line 1160
    :goto_6
    invoke-static {v8}, Ldhw;->a(Ljava/io/Closeable;)V

    .line 1165
    :goto_7
    if-eqz v3, :cond_f

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1229
    if-eqz p4, :cond_0

    .line 1230
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Ldsc$2;

    move-object/from16 v0, p4

    invoke-direct {v4, p0, v0, v2}, Ldsc$2;-><init>(Ldsc;Lcma;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1182
    :cond_5
    new-instance v2, Ljava/io/File;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x1

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v9, v6, v7

    const/4 v7, 0x2

    iget-object v9, p0, Ldsc;->a:Ljava/lang/String;

    aput-object v9, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1185
    :cond_6
    new-instance v2, Ljava/io/File;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x1

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v9, v6, v7

    const/4 v7, 0x2

    iget-object v9, p0, Ldsc;->a:Ljava/lang/String;

    aput-object v9, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1194
    :cond_7
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x1

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v7, v6, v2

    const/4 v2, 0x2

    aput-object v5, v6, v2

    const/4 v2, 0x3

    const-string/jumbo v5, ".jpg"

    aput-object v5, v6, v2

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1195
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v7, v2

    goto/16 :goto_2

    .line 1197
    :cond_8
    const/4 v2, 0x0

    move-object v7, v2

    goto/16 :goto_2

    .line 1131
    :catch_1
    move-exception v3

    .line 1132
    const-string/jumbo v5, "im"

    const/4 v6, 0x0

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "[ShareDownloadManager]"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, " create file exception:"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1142
    :cond_9
    const/4 v3, 0x1

    .line 1146
    invoke-static {v5}, Ldhw;->a(Ljava/io/Closeable;)V

    .line 1147
    invoke-static {v9}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    goto/16 :goto_6

    .line 1146
    :catchall_0
    move-exception v2

    move-object v5, v6

    :goto_8
    invoke-static {v5}, Ldhw;->a(Ljava/io/Closeable;)V

    .line 1147
    invoke-static {v9}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    throw v2

    .line 1150
    :cond_a
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v3, v10, v4

    if-nez v3, :cond_b

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_b

    const/4 v3, 0x1

    .line 1151
    :goto_9
    if-eqz v3, :cond_c

    .line 1152
    const-string/jumbo v4, "im"

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v9, "[ShareDownloadManager]"

    aput-object v9, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v9, " read from localFile succeed:"

    aput-object v9, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1150
    :cond_b
    const/4 v3, 0x0

    goto :goto_9

    .line 1154
    :cond_c
    const-string/jumbo v4, "im"

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v9, "[ShareDownloadManager]"

    aput-object v9, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v9, " delete exist file error:"

    aput-object v9, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1158
    :cond_d
    const-string/jumbo v2, "im"

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v9, "[ShareDownloadManager]"

    aput-object v9, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v9, " build file is null"

    aput-object v9, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    move v3, v4

    goto/16 :goto_6

    .line 1162
    :cond_e
    const-string/jumbo v2, "im"

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "[ShareDownloadManager]"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, " inputstream is null"

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    move v3, v4

    goto/16 :goto_7

    .line 1169
    :cond_f
    const-string/jumbo v2, "40010"

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-direct {p0, v2, v3, v0}, Ldsc;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto/16 :goto_0

    .line 1146
    :catchall_1
    move-exception v2

    goto/16 :goto_8

    .line 1143
    :catch_2
    move-exception v3

    move-object v5, v6

    goto/16 :goto_5
.end method

.method static synthetic a(Ldsc;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 1
    .param p0, "x0"    # Ldsc;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcma;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Ldsc;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "apiEventListener"    # Lcma;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 240
    if-eqz p3, :cond_0

    .line 241
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Ldsc$3;

    invoke-direct {v1, p0, p3, p1, p2}, Ldsc$3;-><init>(Ldsc;Lcma;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 248
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lcma;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    .local p3, "apiEventListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    :cond_0
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lctk$i;->unknown_error:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Ldsc;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 110
    :goto_0
    return-void

    .line 73
    :cond_1
    const-string/jumbo v0, "ShareDownloadManager"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    const-string/jumbo v1, "outterImageDownload"

    new-instance v2, Ldsc$1;

    invoke-direct {v2, p0, p2, p1, p3}, Ldsc$1;-><init>(Ldsc;Ljava/lang/String;Landroid/content/Context;Lcma;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
