.class public Lgvz;
.super Ljava/lang/Object;
.source "ShareInnerDownloadManager.java"


# static fields
.field private static volatile b:Lgvz;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string/jumbo v0, "inner_share"

    iput-object v0, p0, Lgvz;->a:Ljava/lang/String;

    .line 58
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

    .line 249
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/alibaba/doraemon/request/Response;->isSuccess()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {p0}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 250
    invoke-interface {p0}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v1

    .line 251
    .local v1, "inputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    invoke-virtual {v1}, Lcom/alibaba/doraemon/request/RequestInputStream;->length()I

    move-result v7

    int-to-long v2, v7

    .line 253
    .local v2, "inputStreamLength":J
    const-wide/32 v8, 0x300000

    cmp-long v7, v2, v8

    if-lez v7, :cond_0

    .line 254
    const-string/jumbo v7, "share"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "[ShareInnerDownloadManager]"

    aput-object v9, v8, v10

    const-string/jumbo v9, " image url size is larger than "

    aput-object v9, v8, v11

    const-string/jumbo v9, "3145728"

    .line 255
    aput-object v9, v8, v12

    const-string/jumbo v9, ", force not read"

    aput-object v9, v8, v13

    .line 254
    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v6, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v6

    .line 273
    .end local v1    # "inputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    .end local v2    # "inputStreamLength":J
    :goto_0
    return-object v4

    .line 259
    .restart local v1    # "inputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    .restart local v2    # "inputStreamLength":J
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/alibaba/doraemon/request/RequestInputStream;->length()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/alibaba/doraemon/request/RequestInputStream;->mark(I)V

    .line 260
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

    .line 266
    .local v4, "pooledByteBufferInputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/doraemon/request/RequestInputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 262
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "pooledByteBufferInputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    :catch_1
    move-exception v5

    .line 263
    .local v5, "throwable":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v7, "share"

    const/4 v8, 0x0

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "[ShareInnerDownloadManager]"

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

    .line 266
    :try_start_3
    invoke-virtual {v1}, Lcom/alibaba/doraemon/request/RequestInputStream;->reset()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    move-object v4, v6

    .line 271
    goto :goto_0

    .line 267
    :catch_2
    move-exception v0

    .line 268
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 265
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "throwable":Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    .line 266
    :try_start_4
    invoke-virtual {v1}, Lcom/alibaba/doraemon/request/RequestInputStream;->reset()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 269
    :goto_2
    throw v6

    .line 267
    :catch_3
    move-exception v0

    .line 268
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "inputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    .end local v2    # "inputStreamLength":J
    :cond_1
    move-object v4, v6

    .line 273
    goto :goto_0
.end method

.method public static a()Lgvz;
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lgvz;->b:Lgvz;

    if-nez v0, :cond_1

    .line 47
    const-class v1, Lgvz;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Lgvz;->b:Lgvz;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lgvz;

    invoke-direct {v0}, Lgvz;-><init>()V

    sput-object v0, Lgvz;->b:Lgvz;

    .line 51
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_1
    sget-object v0, Lgvz;->b:Lgvz;

    return-object v0

    .line 51
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
    .line 203
    const/16 v11, 0x10

    new-array v3, v11, [C

    fill-array-data v3, :array_0

    .line 205
    .local v3, "hexDigits":[C
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 206
    .local v0, "btInput":[B
    const-string/jumbo v11, "MD5"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    .line 207
    .local v9, "mdInst":Ljava/security/MessageDigest;
    invoke-virtual {v9, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 208
    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    .line 209
    .local v8, "md":[B
    array-length v5, v8

    .line 210
    .local v5, "j":I
    mul-int/lit8 v11, v5, 0x2

    new-array v10, v11, [C

    .line 211
    .local v10, "str":[C
    const/4 v6, 0x0

    .line 212
    .local v6, "k":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v7, v6

    .end local v6    # "k":I
    .local v7, "k":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 213
    aget-byte v1, v8, v4

    .line 214
    .local v1, "byte0":B
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "k":I
    .restart local v6    # "k":I
    ushr-int/lit8 v11, v1, 0x4

    and-int/lit8 v11, v11, 0xf

    aget-char v11, v3, v11

    aput-char v11, v10, v7

    .line 215
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "k":I
    .restart local v7    # "k":I
    and-int/lit8 v11, v1, 0xf

    aget-char v11, v3, v11

    aput-char v11, v10, v6

    .line 212
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 217
    .end local v1    # "byte0":B
    :cond_0
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v10}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v0    # "btInput":[B
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v7    # "k":I
    .end local v8    # "md":[B
    .end local v9    # "mdInst":Ljava/security/MessageDigest;
    .end local v10    # "str":[C
    :goto_1
    return-object v11

    .line 218
    :catch_0
    move-exception v2

    .line 219
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 220
    const/4 v11, 0x0

    goto :goto_1

    .line 203
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

.method static synthetic a(Lgvz;Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/doraemon/request/Response;Lcma;)V
    .locals 14
    .param p0, "x0"    # Lgvz;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/alibaba/doraemon/request/Response;
    .param p4, "x4"    # Lcma;

    .prologue
    .line 36
    .line 1112
    if-eqz p1, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1166
    :cond_0
    :goto_0
    return-void

    .line 1115
    :cond_1
    const/4 v4, 0x0

    .line 1116
    const/4 v3, 0x0

    .line 1117
    invoke-static/range {p3 .. p3}, Lgvz;->a(Lcom/alibaba/doraemon/request/Response;)Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;

    move-result-object v8

    .line 1118
    if-eqz v8, :cond_e

    .line 1119
    invoke-virtual {v8}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->available()I

    move-result v2

    int-to-long v10, v2

    .line 1172
    if-eqz p1, :cond_3

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1173
    invoke-static/range {p2 .. p2}, Lgvz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1174
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1176
    const-string/jumbo v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1177
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1178
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

    iget-object v9, p0, Lgvz;->a:Ljava/lang/String;

    aput-object v9, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1185
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1186
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 1188
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_7

    .line 1189
    const-string/jumbo v2, "share"

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v9, "[ShareInnerDownloadManager]"

    aput-object v9, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v9, " buildImageFileFromUrl dir create failed"

    aput-object v9, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    :cond_3
    const/4 v2, 0x0

    move-object v7, v2

    .line 1121
    :goto_2
    if-eqz v7, :cond_d

    .line 1122
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 1123
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v12

    cmp-long v3, v10, v12

    if-eqz v3, :cond_4

    .line 1124
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1126
    :cond_4
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_a

    .line 1128
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1132
    :goto_3
    const/16 v3, 0x400

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v9

    .line 1133
    const/4 v6, 0x0

    .line 1135
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1137
    :goto_4
    :try_start_2
    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->read([B)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_9

    .line 1138
    const/4 v6, 0x0

    invoke-virtual {v5, v9, v6, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    .line 1141
    :catch_0
    move-exception v3

    .line 1142
    :goto_5
    :try_start_3
    const-string/jumbo v6, "share"

    const/4 v7, 0x0

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "[ShareInnerDownloadManager]"

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

    .line 1144
    invoke-static {v5}, Lgvz;->a(Ljava/io/Closeable;)V

    .line 1145
    invoke-static {v9}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    move v3, v4

    .line 1158
    :goto_6
    invoke-static {v8}, Lgvz;->a(Ljava/io/Closeable;)V

    .line 1163
    :goto_7
    if-eqz v3, :cond_f

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1227
    if-eqz p4, :cond_0

    .line 1228
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lgvz$2;

    move-object/from16 v0, p4

    invoke-direct {v4, p0, v0, v2}, Lgvz$2;-><init>(Lgvz;Lcma;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1180
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

    iget-object v9, p0, Lgvz;->a:Ljava/lang/String;

    aput-object v9, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1183
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

    iget-object v9, p0, Lgvz;->a:Ljava/lang/String;

    aput-object v9, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1192
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

    .line 1193
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v7, v2

    goto/16 :goto_2

    .line 1195
    :cond_8
    const/4 v2, 0x0

    move-object v7, v2

    goto/16 :goto_2

    .line 1129
    :catch_1
    move-exception v3

    .line 1130
    const-string/jumbo v5, "share"

    const/4 v6, 0x0

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "[ShareInnerDownloadManager]"

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

    .line 1140
    :cond_9
    const/4 v3, 0x1

    .line 1144
    invoke-static {v5}, Lgvz;->a(Ljava/io/Closeable;)V

    .line 1145
    invoke-static {v9}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    goto/16 :goto_6

    .line 1144
    :catchall_0
    move-exception v2

    move-object v5, v6

    :goto_8
    invoke-static {v5}, Lgvz;->a(Ljava/io/Closeable;)V

    .line 1145
    invoke-static {v9}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    throw v2

    .line 1148
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

    .line 1149
    :goto_9
    if-eqz v3, :cond_c

    .line 1150
    const-string/jumbo v4, "share"

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v9, "[ShareInnerDownloadManager]"

    aput-object v9, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v9, " read from localFile succeed:"

    aput-object v9, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1148
    :cond_b
    const/4 v3, 0x0

    goto :goto_9

    .line 1152
    :cond_c
    const-string/jumbo v4, "share"

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v9, "[ShareInnerDownloadManager]"

    aput-object v9, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v9, " delete exist file error:"

    aput-object v9, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1156
    :cond_d
    const-string/jumbo v2, "share"

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v9, "[ShareInnerDownloadManager]"

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

    .line 1160
    :cond_e
    const-string/jumbo v2, "share"

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "[ShareInnerDownloadManager]"

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

    .line 1167
    :cond_f
    const-string/jumbo v2, "40010"

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-direct {p0, v2, v3, v0}, Lgvz;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto/16 :goto_0

    .line 1144
    :catchall_1
    move-exception v2

    goto/16 :goto_8

    .line 1141
    :catch_2
    move-exception v3

    move-object v5, v6

    goto/16 :goto_5
.end method

.method static synthetic a(Lgvz;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 1
    .param p0, "x0"    # Lgvz;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcma;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Lgvz;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    return-void
.end method

.method private static a(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 277
    if-eqz p0, :cond_0

    .line 279
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "apiEventListener"    # Lcma;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 238
    if-eqz p3, :cond_0

    .line 239
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lgvz$3;

    invoke-direct {v1, p0, p3, p1, p2}, Lgvz$3;-><init>(Lgvz;Lcma;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 246
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

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 67
    .local p3, "apiEventListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lgvn$h;->unknown_error:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lgvz;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 108
    :goto_0
    return-void

    .line 71
    :cond_1
    const-string/jumbo v0, "ShareInnerDownloadManager"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    const-string/jumbo v1, "InnerShareImageDownload"

    new-instance v2, Lgvz$1;

    invoke-direct {v2, p0, p2, p1, p3}, Lgvz$1;-><init>(Lgvz;Ljava/lang/String;Landroid/content/Context;Lcma;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
