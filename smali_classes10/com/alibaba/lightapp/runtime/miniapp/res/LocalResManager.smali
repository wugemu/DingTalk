.class public final Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;
.super Ljava/lang/Object;
.source "LocalResManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager$FileType;
    }
.end annotation


# static fields
.field static a:Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    .locals 10
    .param p0, "localId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 57
    const/4 v2, 0x0

    .line 58
    .local v2, "result":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    invoke-static {}, Lhmi;->a()Lhmi;

    move-result-object v6

    invoke-virtual {v6}, Lhmi;->b()Lhme;

    move-result-object v6

    invoke-interface {v6, p0}, Lhme;->b(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;

    move-result-object v1

    .line 60
    .local v1, "model":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    if-eqz v1, :cond_0

    iget-object v6, v1, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->filePath:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 61
    new-instance v0, Ljava/io/File;

    iget-object v6, v1, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->filePath:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    .line 64
    const/4 v2, 0x0

    .line 74
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    const-string/jumbo v6, "LocalResManager"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "localId="

    aput-object v8, v7, v5

    aput-object p0, v7, v4

    const/4 v8, 0x2

    const-string/jumbo v9, "model="

    aput-object v9, v7, v8

    const/4 v8, 0x3

    if-eqz v1, :cond_2

    .end local v1    # "model":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    :goto_1
    aput-object v1, v7, v8

    const/4 v8, 0x4

    const-string/jumbo v9, "file exist="

    aput-object v9, v7, v8

    const/4 v8, 0x5

    if-eqz v2, :cond_3

    .line 76
    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v7, v8

    .line 74
    invoke-static {v6, v7}, Lhmv;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    return-object v2

    .line 66
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "model":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    :cond_1
    move-object v2, v1

    goto :goto_0

    .line 69
    :catch_0
    move-exception v3

    .line 70
    .local v3, "t":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 74
    .end local v0    # "file":Ljava/io/File;
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_2
    const-string/jumbo v1, "null"

    goto :goto_1

    .end local v1    # "model":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    :cond_3
    move v4, v5

    goto :goto_2
.end method

.method public static declared-synchronized a()Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;
    .locals 2

    .prologue
    .line 43
    const-class v1, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a:Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;-><init>()V

    sput-object v0, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a:Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;

    .line 46
    :cond_0
    sget-object v0, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a:Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;)Ljava/lang/String;
    .locals 4
    .param p0, "model"    # Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;

    .prologue
    .line 244
    if-nez p0, :cond_1

    .line 245
    const/4 v0, 0x0

    .line 252
    :cond_0
    :goto_0
    return-object v0

    .line 248
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "https://resource/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->localId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->fileType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "."

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->fileType:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 202
    if-eqz p0, :cond_0

    const-string/jumbo v0, "https://resource/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 212
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-object v1

    .line 217
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 218
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 219
    .local v4, "uri":Landroid/net/Uri;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 220
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "path":Ljava/lang/String;
    const-string/jumbo v5, "/"

    const-string/jumbo v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 222
    const-string/jumbo v5, "\\."

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "details":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v5, v0

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 224
    const/4 v5, 0x0

    aget-object v1, v0, v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .local v1, "localId":Ljava/lang/String;
    goto :goto_0

    .line 230
    .end local v0    # "details":[Ljava/lang/String;
    .end local v1    # "localId":Ljava/lang/String;
    .end local v2    # "path":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v3

    .line 231
    .local v3, "t":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 262
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 263
    const-string/jumbo v5, ""

    .line 281
    :goto_0
    return-object v5

    .line 268
    :cond_0
    :try_start_0
    const-string/jumbo v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 269
    .local v2, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 270
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 273
    .local v4, "messageDigest":[B
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 274
    .local v1, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    array-length v6, v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_1

    aget-byte v0, v4, v5

    .line 275
    .local v0, "aMessageDigest":B
    and-int/lit16 v7, v0, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 274
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 277
    .end local v0    # "aMessageDigest":B
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 278
    .end local v1    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v2    # "digest":Ljava/security/MessageDigest;
    .end local v4    # "messageDigest":[B
    :catch_0
    move-exception v3

    .line 279
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 281
    const-string/jumbo v5, ""

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager$FileType;)Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    .locals 20
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "fileType"    # Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager$FileType;

    .prologue
    .line 135
    const/4 v8, 0x0

    .line 137
    .local v8, "outputStream":Ljava/io/OutputStream;
    const/4 v12, 0x4

    :try_start_0
    new-array v13, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v12

    const/4 v12, 0x1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v16

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    mul-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v12

    const/4 v12, 0x2

    const-string/jumbo v14, "."

    aput-object v14, v13, v12

    const/4 v14, 0x3

    if-eqz p3, :cond_6

    .line 140
    invoke-static/range {p3 .. p3}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager$FileType;->access$000(Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager$FileType;)Ljava/lang/String;

    move-result-object v12

    :goto_0
    aput-object v12, v13, v14

    .line 137
    invoke-static {v13}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 143
    .local v11, "tempFileName":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v12

    invoke-virtual {v12}, Lcid;->c()Landroid/app/Application;

    move-result-object v12

    invoke-static {v12}, Lhcs;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    .line 144
    .local v4, "cacheDir":Ljava/io/File;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 145
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 149
    :cond_0
    new-instance v7, Ljava/io/File;

    const-string/jumbo v12, "mini"

    invoke-direct {v7, v4, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 150
    .local v7, "miniRootCacheDir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    .line 151
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 155
    :cond_1
    const/4 v12, 0x0

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 156
    const-string/jumbo p2, "0"

    .line 158
    :cond_2
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v6, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 159
    .local v6, "miniAppCacheDir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_3

    .line 160
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 163
    :cond_3
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v6, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 164
    .local v10, "targetFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z

    .line 166
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    .end local v8    # "outputStream":Ljava/io/OutputStream;
    .local v9, "outputStream":Ljava/io/OutputStream;
    const/16 v12, 0x400

    :try_start_1
    new-array v2, v12, [B

    .line 170
    .local v2, "buffer":[B
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "bytesRead":I
    const/4 v12, -0x1

    if-eq v3, v12, :cond_7

    .line 171
    const/4 v12, 0x0

    invoke-virtual {v9, v2, v12, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 176
    .end local v2    # "buffer":[B
    .end local v3    # "bytesRead":I
    :catch_0
    move-exception v5

    move-object v8, v9

    .line 177
    .end local v4    # "cacheDir":Ljava/io/File;
    .end local v6    # "miniAppCacheDir":Ljava/io/File;
    .end local v7    # "miniRootCacheDir":Ljava/io/File;
    .end local v9    # "outputStream":Ljava/io/OutputStream;
    .end local v10    # "targetFile":Ljava/io/File;
    .end local v11    # "tempFileName":Ljava/lang/String;
    .local v5, "e":Ljava/io/IOException;
    .restart local v8    # "outputStream":Ljava/io/OutputStream;
    :goto_2
    :try_start_2
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    if-eqz v8, :cond_4

    .line 182
    :try_start_3
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 188
    :cond_4
    :goto_3
    if-eqz p1, :cond_5

    .line 190
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 197
    :cond_5
    :goto_4
    const/4 v12, 0x0

    .end local v5    # "e":Ljava/io/IOException;
    :goto_5
    return-object v12

    .line 140
    :cond_6
    :try_start_5
    const-string/jumbo v12, "file"
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 174
    .end local v8    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "buffer":[B
    .restart local v3    # "bytesRead":I
    .restart local v4    # "cacheDir":Ljava/io/File;
    .restart local v6    # "miniAppCacheDir":Ljava/io/File;
    .restart local v7    # "miniRootCacheDir":Ljava/io/File;
    .restart local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v10    # "targetFile":Ljava/io/File;
    .restart local v11    # "tempFileName":Ljava/lang/String;
    :cond_7
    :try_start_6
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v12, v1}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager$FileType;)Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v12

    .line 182
    :try_start_7
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 188
    :goto_6
    if-eqz p1, :cond_8

    .line 190
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_8
    :goto_7
    move-object v8, v9

    .line 193
    .end local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v8    # "outputStream":Ljava/io/OutputStream;
    goto :goto_5

    .line 183
    .end local v8    # "outputStream":Ljava/io/OutputStream;
    .restart local v9    # "outputStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v5

    .line 184
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 191
    .end local v5    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 192
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 183
    .end local v2    # "buffer":[B
    .end local v3    # "bytesRead":I
    .end local v4    # "cacheDir":Ljava/io/File;
    .end local v6    # "miniAppCacheDir":Ljava/io/File;
    .end local v7    # "miniRootCacheDir":Ljava/io/File;
    .end local v9    # "outputStream":Ljava/io/OutputStream;
    .end local v10    # "targetFile":Ljava/io/File;
    .end local v11    # "tempFileName":Ljava/lang/String;
    .restart local v8    # "outputStream":Ljava/io/OutputStream;
    :catch_3
    move-exception v5

    .line 184
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 191
    :catch_4
    move-exception v5

    .line 192
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 180
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_8
    if-eqz v8, :cond_9

    .line 182
    :try_start_9
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 188
    :cond_9
    :goto_9
    if-eqz p1, :cond_a

    .line 190
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 193
    :cond_a
    :goto_a
    throw v12

    .line 183
    :catch_5
    move-exception v5

    .line 184
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 191
    .end local v5    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v5

    .line 192
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 180
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "cacheDir":Ljava/io/File;
    .restart local v6    # "miniAppCacheDir":Ljava/io/File;
    .restart local v7    # "miniRootCacheDir":Ljava/io/File;
    .restart local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v10    # "targetFile":Ljava/io/File;
    .restart local v11    # "tempFileName":Ljava/lang/String;
    :catchall_1
    move-exception v12

    move-object v8, v9

    .end local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v8    # "outputStream":Ljava/io/OutputStream;
    goto :goto_8

    .line 176
    .end local v4    # "cacheDir":Ljava/io/File;
    .end local v6    # "miniAppCacheDir":Ljava/io/File;
    .end local v7    # "miniRootCacheDir":Ljava/io/File;
    .end local v10    # "targetFile":Ljava/io/File;
    .end local v11    # "tempFileName":Ljava/lang/String;
    :catch_7
    move-exception v5

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager$FileType;)Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    .locals 10
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "fileType"    # Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager$FileType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 90
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/FileUtils;->isExist(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 91
    const-string/jumbo v3, "LocalResManager"

    new-array v4, v9, [Ljava/lang/Object;

    const-string/jumbo v5, "filePath="

    aput-object v5, v4, v6

    aput-object p1, v4, v7

    const-string/jumbo v5, "not exists"

    aput-object v5, v4, v8

    .line 1093
    const-string/jumbo v5, "mini_data"

    invoke-static {v5, v3, v4}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not exists"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 94
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    const-string/jumbo v3, "LocalResManager"

    new-array v4, v9, [Ljava/lang/Object;

    const-string/jumbo v5, "filePath="

    aput-object v5, v4, v6

    aput-object p1, v4, v7

    const-string/jumbo v5, "is a directory"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lhmv;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is a directory"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 100
    :cond_1
    invoke-static {}, Lhmi;->a()Lhmi;

    move-result-object v3

    invoke-virtual {v3}, Lhmi;->b()Lhme;

    move-result-object v3

    invoke-interface {v3, p1}, Lhme;->c(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;

    move-result-object v1

    .line 101
    .local v1, "model":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    if-eqz v1, :cond_2

    .line 102
    const-string/jumbo v3, "LocalResManager"

    new-array v4, v9, [Ljava/lang/Object;

    const-string/jumbo v5, "filePath="

    aput-object v5, v4, v6

    aput-object p1, v4, v7

    aput-object v1, v4, v8

    invoke-static {v3, v4}, Lhmv;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v3, v1

    .line 121
    :goto_0
    return-object v3

    .line 106
    :cond_2
    if-nez p2, :cond_3

    .line 107
    sget-object p2, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager$FileType;->FILE:Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager$FileType;

    .line 110
    :cond_3
    new-instance v1, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;

    .end local v1    # "model":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    invoke-direct {v1}, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;-><init>()V

    .line 1257
    .restart local v1    # "model":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "injektto"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 111
    iput-object v3, v1, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->localId:Ljava/lang/String;

    .line 112
    iput-object p1, v1, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->filePath:Ljava/lang/String;

    .line 113
    invoke-static {p2}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager$FileType;->access$000(Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager$FileType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->fileType:Ljava/lang/String;

    .line 115
    invoke-static {}, Lhmi;->a()Lhmi;

    move-result-object v3

    invoke-virtual {v3}, Lhmi;->b()Lhme;

    move-result-object v3

    invoke-interface {v3, v1}, Lhme;->a(Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;)Z

    move-result v2

    .line 116
    .local v2, "success":Z
    const-string/jumbo v3, "LocalResManager"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "success="

    aput-object v5, v4, v6

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    const-string/jumbo v5, "filePath="

    aput-object v5, v4, v8

    aput-object p1, v4, v9

    const/4 v5, 0x4

    const-string/jumbo v6, "model="

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lhmv;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    if-eqz v2, :cond_4

    move-object v3, v1

    .line 118
    goto :goto_0

    .line 121
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method
