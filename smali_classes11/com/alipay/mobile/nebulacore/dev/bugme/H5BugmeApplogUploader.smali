.class public Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeApplogUploader;
.super Ljava/lang/Object;
.source "H5BugmeApplogUploader.java"


# static fields
.field private static final SUFFIX_2ND_LOG:Ljava/lang/String; = ".2nd"

.field private static final SUFFIX_NORMAL_ZIP:Ljava/lang/String; = ".zip"

.field private static final SUFFIX_POSITIVE:Ljava/lang/String; = ".pzt"

.field private static final TAG:Ljava/lang/String; = "H5BugmeApplogUploader"

.field private static final UPLOAD_URL:Ljava/lang/String; = "https://hpmweb.alipay.com/report/upload/android"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDateHourFormat:Ljava/text/SimpleDateFormat;

.field private mUploadFileNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mViewId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewId"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeApplogUploader;->mContext:Landroid/content/Context;

    .line 47
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMddHH"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeApplogUploader;->mDateHourFormat:Ljava/text/SimpleDateFormat;

    .line 48
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeApplogUploader;->mViewId:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private fillUploadFileList(Ljava/io/File;)V
    .locals 20
    .param p1, "logFilesDir"    # Ljava/io/File;

    .prologue
    .line 164
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-nez v11, :cond_1

    .line 205
    :cond_0
    return-void

    .line 167
    :cond_1
    const-wide/16 v14, 0x0

    .line 168
    .local v14, "totalLength":J
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 169
    .local v8, "files":[Ljava/io/File;
    if-eqz v8, :cond_0

    array-length v11, v8

    if-eqz v11, :cond_0

    .line 172
    array-length v11, v8

    add-int/lit8 v9, v11, -0x1

    .local v9, "i":I
    :goto_0
    if-ltz v9, :cond_0

    .line 173
    aget-object v4, v8, v9

    .line 174
    .local v4, "file":Ljava/io/File;
    if-eqz v4, :cond_2

    .line 178
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v11, v16, v18

    if-nez v11, :cond_3

    .line 172
    :cond_2
    :goto_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 182
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 183
    .local v5, "fileName":Ljava/lang/String;
    const-string/jumbo v11, ".pzt.zip"

    invoke-virtual {v5, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string/jumbo v11, ".pzt.2nd"

    .line 184
    invoke-virtual {v5, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string/jumbo v11, ".pzt"

    .line 185
    invoke-virtual {v5, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 188
    const-string/jumbo v11, "_"

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/16 v16, 0x0

    aget-object v10, v11, v16

    .line 189
    .local v10, "prefix":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 190
    .local v6, "fileTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 191
    .local v2, "currentTime":J
    const-wide/32 v16, 0x6ddd00

    sub-long v12, v2, v16

    .line 192
    .local v12, "previousTime":J
    cmp-long v11, v6, v12

    if-lez v11, :cond_2

    cmp-long v11, v6, v2

    if-gez v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeApplogUploader;->mUploadFileNames:Ljava/util/Set;

    .line 194
    invoke-interface {v11, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-wide/32 v16, 0x7a1200

    cmp-long v11, v14, v16

    if-gez v11, :cond_2

    .line 196
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeApplogUploader;->mUploadFiles:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeApplogUploader;->mUploadFileNames:Ljava/util/Set;

    invoke-interface {v11, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v16

    add-long v14, v14, v16

    .line 199
    const-string/jumbo v11, "H5BugmeApplogUploader"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "fillUploadFileList totalLength "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v11, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 202
    .end local v2    # "currentTime":J
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "fileTime":J
    .end local v10    # "prefix":Ljava/lang/String;
    .end local v12    # "previousTime":J
    :catch_0
    move-exception v11

    const-string/jumbo v11, "H5BugmeApplogUploader"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "fillUploadFileList: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v11, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private getBytesByInputStream(Ljava/io/InputStream;)[B
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 296
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 297
    .local v1, "bis":Ljava/io/BufferedInputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 298
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 299
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    const/16 v6, 0x400

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getBuf(I)[B

    move-result-object v3

    .line 302
    .local v3, "buffer":[B
    :goto_0
    :try_start_0
    invoke-virtual {v1, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    .local v5, "length":I
    if-lez v5, :cond_0

    .line 303
    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v5}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 308
    .end local v5    # "length":I
    :catchall_0
    move-exception v6

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 309
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 310
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    throw v6

    .line 305
    .restart local v5    # "length":I
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 306
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 308
    .local v4, "bytes":[B
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 309
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 310
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 312
    return-object v4
.end method

.method private isNetworkUseWiFi()Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 209
    :try_start_0
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeApplogUploader;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "connectivity"

    .line 210
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 211
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 212
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ne v5, v3, :cond_0

    .line 215
    .end local v0    # "connMgr":Landroid/net/ConnectivityManager;
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .restart local v0    # "connMgr":Landroid/net/ConnectivityManager;
    .restart local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_0
    move v3, v4

    .line 212
    goto :goto_0

    .line 213
    .end local v0    # "connMgr":Landroid/net/ConnectivityManager;
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v2

    .line 214
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "H5BugmeApplogUploader"

    const-string/jumbo v5, "isNetworkUseWiFi "

    invoke-static {v3, v5, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v3, v4

    .line 215
    goto :goto_0
.end method


# virtual methods
.method public uploadFile(Ljava/util/Map;Ljava/io/File;)V
    .locals 26
    .param p2, "uploadFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 221
    .local v14, "out":Ljava/io/OutputStream;
    const/4 v10, 0x0

    .line 223
    .local v10, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, "BOUNDARY":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .local v17, "sb":Ljava/lang/StringBuilder;
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 226
    .local v12, "key":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "--"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v22, "\r\n"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "Content-Disposition: form-data; name=\""

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v22, "\"\r\n"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    const-string/jumbo v20, "\r\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v22, "\r\n"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 277
    .end local v4    # "BOUNDARY":Ljava/lang/String;
    .end local v12    # "key":Ljava/lang/String;
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v19

    .line 278
    .local v19, "t":Ljava/lang/Throwable;
    :goto_1
    :try_start_1
    const-string/jumbo v20, "H5BugmeApplogUploader"

    const-string/jumbo v21, "uplodaFile catch exception "

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    if-eqz v10, :cond_0

    .line 282
    :try_start_2
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 284
    :cond_0
    if-eqz v14, :cond_1

    .line 285
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 290
    .end local v19    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_2
    return-void

    .line 232
    .restart local v4    # "BOUNDARY":Ljava/lang/String;
    .restart local v17    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_3
    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "--"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "Content-Disposition: form-data; name=\"fileContent\"; filename=\""

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "\"\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const-string/jumbo v20, "Content-Type: application/zip\r\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-string/jumbo v20, "\r\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "UTF-8"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 237
    .local v9, "headerInfo":[B
    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "\r\n--"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "--\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "UTF-8"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 239
    .local v8, "endInfo":[B
    new-instance v20, Ljava/net/URL;

    const-string/jumbo v21, "https://hpmweb.alipay.com/report/upload/android"

    invoke-direct/range {v20 .. v21}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    .line 240
    .local v6, "connection":Ljava/net/HttpURLConnection;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 241
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 242
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 243
    const-string/jumbo v20, "POST"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 244
    const-string/jumbo v20, "Connection"

    const-string/jumbo v21, "Keep-Alive"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string/jumbo v20, "accept"

    const-string/jumbo v21, "*/*"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string/jumbo v20, "Charset"

    const-string/jumbo v21, "UTF-8"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string/jumbo v20, "Cache-Control"

    const-string/jumbo v21, "no-cache"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string/jumbo v20, "Content-Type"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "multipart/form-data; boundary="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string/jumbo v20, "Content-Length"

    array-length v0, v9

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    .line 251
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v24

    add-long v22, v22, v24

    array-length v0, v8

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    .line 250
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string/jumbo v20, "User-Agent"

    const-string/jumbo v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const/16 v20, 0x7530

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 255
    const v20, 0xea60

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 256
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 258
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    .line 259
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 260
    .end local v10    # "in":Ljava/io/InputStream;
    .local v11, "in":Ljava/io/InputStream;
    :try_start_4
    invoke-virtual {v14, v9}, Ljava/io/OutputStream;->write([B)V

    .line 261
    const/16 v20, 0x400

    invoke-static/range {v20 .. v20}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getBuf(I)[B

    move-result-object v5

    .line 263
    .local v5, "buf":[B
    :goto_3
    invoke-virtual {v11, v5}, Ljava/io/InputStream;->read([B)I

    move-result v13

    .local v13, "len":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v13, v0, :cond_3

    .line 264
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v5, v0, v13}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_3

    .line 277
    .end local v5    # "buf":[B
    .end local v13    # "len":I
    :catch_1
    move-exception v19

    move-object v10, v11

    .end local v11    # "in":Ljava/io/InputStream;
    .restart local v10    # "in":Ljava/io/InputStream;
    goto/16 :goto_1

    .line 266
    .end local v10    # "in":Ljava/io/InputStream;
    .restart local v5    # "buf":[B
    .restart local v11    # "in":Ljava/io/InputStream;
    .restart local v13    # "len":I
    :cond_3
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 267
    invoke-virtual {v14, v8}, Ljava/io/OutputStream;->write([B)V

    .line 268
    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V

    .line 269
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v18

    .line 270
    .local v18, "statusCode":I
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeApplogUploader;->getBytesByInputStream(Ljava/io/InputStream;)[B

    move-result-object v15

    .line 271
    .local v15, "responseBody":[B
    new-instance v16, Ljava/lang/String;

    const-string/jumbo v20, "UTF-8"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v15, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 272
    .local v16, "responseBodyStr":Ljava/lang/String;
    const-string/jumbo v20, "H5BugmeApplogUploader"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "statusCode "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", responseBodyStr "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->checkPathValid(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 274
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    .line 276
    :cond_4
    const-string/jumbo v20, "H5BugmeApplogUploader"

    const-string/jumbo v21, "uploadFile.delete() success"

    invoke-static/range {v20 .. v21}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 282
    :try_start_5
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 284
    if-eqz v14, :cond_5

    .line 285
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_5
    move-object v10, v11

    .line 289
    .end local v11    # "in":Ljava/io/InputStream;
    .restart local v10    # "in":Ljava/io/InputStream;
    goto/16 :goto_2

    .line 287
    .end local v10    # "in":Ljava/io/InputStream;
    .restart local v11    # "in":Ljava/io/InputStream;
    :catch_2
    move-exception v7

    .line 288
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v20, "H5BugmeApplogUploader"

    move-object/from16 v0, v20

    invoke-static {v0, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v10, v11

    .line 290
    .end local v11    # "in":Ljava/io/InputStream;
    .restart local v10    # "in":Ljava/io/InputStream;
    goto/16 :goto_2

    .line 287
    .end local v4    # "BOUNDARY":Ljava/lang/String;
    .end local v5    # "buf":[B
    .end local v6    # "connection":Ljava/net/HttpURLConnection;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "endInfo":[B
    .end local v9    # "headerInfo":[B
    .end local v13    # "len":I
    .end local v15    # "responseBody":[B
    .end local v16    # "responseBodyStr":Ljava/lang/String;
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    .end local v18    # "statusCode":I
    .restart local v19    # "t":Ljava/lang/Throwable;
    :catch_3
    move-exception v7

    .line 288
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string/jumbo v20, "H5BugmeApplogUploader"

    move-object/from16 v0, v20

    invoke-static {v0, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 280
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v19    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v20

    .line 281
    :goto_4
    if-eqz v10, :cond_6

    .line 282
    :try_start_6
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 284
    :cond_6
    if-eqz v14, :cond_7

    .line 285
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 289
    :cond_7
    :goto_5
    throw v20

    .line 287
    :catch_4
    move-exception v7

    .line 288
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string/jumbo v21, "H5BugmeApplogUploader"

    move-object/from16 v0, v21

    invoke-static {v0, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 280
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v10    # "in":Ljava/io/InputStream;
    .restart local v4    # "BOUNDARY":Ljava/lang/String;
    .restart local v6    # "connection":Ljava/net/HttpURLConnection;
    .restart local v8    # "endInfo":[B
    .restart local v9    # "headerInfo":[B
    .restart local v11    # "in":Ljava/io/InputStream;
    .restart local v17    # "sb":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v20

    move-object v10, v11

    .end local v11    # "in":Ljava/io/InputStream;
    .restart local v10    # "in":Ljava/io/InputStream;
    goto :goto_4
.end method

.method public declared-synchronized uploadLog()V
    .locals 1

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeApplogUploader;->isNetworkUseWiFi()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 161
    :goto_0
    monitor-exit p0

    return-void

    .line 63
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeApplogUploader;->mUploadFiles:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeApplogUploader;->mUploadFileNames:Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
