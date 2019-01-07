.class public Lcom/alipay/android/h5appmanager/impl/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field private static final IO_BUFFER_SIZE:I = 0x4000

.field public static final TAG:Ljava/lang/String; = "FileUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static childCount(Ljava/lang/String;)I
    .locals 4
    .param p0, "absPath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 182
    invoke-static {p0}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 190
    :cond_0
    :goto_0
    return v2

    .line 185
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 187
    .local v0, "children":[Ljava/io/File;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-eqz v3, :cond_0

    .line 190
    array-length v2, v0

    goto :goto_0
.end method

.method public static childOf(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "childPath"    # Ljava/lang/String;
    .param p1, "parentPath"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 170
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v0

    .line 173
    :cond_1
    invoke-static {p0}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->cleanPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 174
    invoke-static {p1}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->cleanPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static cleanPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "absPath"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    :goto_0
    return-object p0

    .line 198
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .end local v0    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "dstPath"    # Ljava/lang/String;

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->copy(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 8
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "dstPath"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 243
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    move v5, v6

    .line 308
    :cond_1
    :goto_0
    return v5

    .line 248
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 253
    invoke-static {p0}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {p0}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->isFile(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    move v5, v6

    .line 254
    goto :goto_0

    .line 258
    :cond_4
    invoke-static {p1}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 259
    if-nez p2, :cond_5

    move v5, v6

    .line 260
    goto :goto_0

    .line 262
    :cond_5
    invoke-static {p1}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->delete(Ljava/lang/String;)Z

    .line 265
    :cond_6
    invoke-static {p1}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->create(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    move v5, v6

    .line 266
    goto :goto_0

    .line 274
    :cond_7
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 275
    .local v2, "in":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 282
    .local v4, "out":Ljava/io/FileOutputStream;
    const/16 v7, 0x4000

    :try_start_1
    new-array v0, v7, [B

    .line 285
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .local v3, "len":I
    const/4 v7, -0x1

    if-eq v3, v7, :cond_8

    .line 286
    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 289
    .end local v0    # "buffer":[B
    .end local v3    # "len":I
    :catch_0
    move-exception v1

    .line 290
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 295
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 302
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :goto_3
    move v5, v6

    .line 291
    goto :goto_0

    .line 276
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 277
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v5, v6

    .line 278
    goto :goto_0

    .line 288
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "buffer":[B
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "len":I
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :cond_8
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 295
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 302
    :goto_4
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    .line 303
    :catch_2
    move-exception v1

    .line 304
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 296
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 297
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 296
    .end local v0    # "buffer":[B
    .end local v3    # "len":I
    .local v1, "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 297
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 303
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 304
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 293
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 295
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 302
    :goto_5
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 305
    :goto_6
    throw v5

    .line 296
    :catch_6
    move-exception v1

    .line 297
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 303
    .end local v1    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v1

    .line 304
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6
.end method

.method public static create(Ljava/lang/String;)Z
    .locals 1
    .param p0, "absPath"    # Ljava/lang/String;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->create(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static create(Ljava/lang/String;Z)Z
    .locals 5
    .param p0, "absPath"    # Ljava/lang/String;
    .param p1, "force"    # Z

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    :goto_0
    return v3

    .line 39
    :cond_0
    invoke-static {p0}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 40
    const/4 v3, 0x1

    goto :goto_0

    .line 43
    :cond_1
    invoke-static {p0}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "parentPath":Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->mkdirs(Ljava/lang/String;Z)Z

    .line 47
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 49
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static delete(Ljava/io/File;)Z
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 117
    invoke-static {p0}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->exists(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 118
    const/4 v2, 0x1

    .line 137
    :cond_0
    :goto_0
    return v2

    .line 121
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 122
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    goto :goto_0

    .line 125
    :cond_2
    const/4 v2, 0x1

    .line 126
    .local v2, "result":Z
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 127
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_3

    .line 128
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 129
    aget-object v3, v0, v1

    invoke-static {v3}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->delete(Ljava/io/File;)Z

    move-result v3

    and-int/2addr v2, v3

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 132
    .end local v1    # "index":I
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    and-int/2addr v2, v3

    .line 133
    if-nez v2, :cond_0

    .line 134
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "delete file("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") and its sub-directories failed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static delete(Ljava/lang/String;)Z
    .locals 2
    .param p0, "absPath"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const/4 v1, 0x0

    .line 113
    :goto_0
    return v1

    .line 112
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->delete(Ljava/io/File;)Z

    move-result v1

    goto :goto_0
.end method

.method public static exists(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 149
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static exists(Ljava/lang/String;)Z
    .locals 2
    .param p0, "absPath"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    const/4 v1, 0x0

    .line 145
    :goto_0
    return v1

    .line 144
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->exists(Ljava/io/File;)Z

    move-result v1

    goto :goto_0
.end method

.method public static fileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "absPath"    # Ljava/lang/String;

    .prologue
    .line 312
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    const/4 v1, 0x0

    .line 318
    :goto_0
    return-object v1

    .line 316
    :cond_0
    invoke-static {p0}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->cleanPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 317
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 318
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 322
    if-nez p0, :cond_0

    .line 323
    const/4 v0, 0x0

    .line 325
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 329
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    const-string/jumbo v1, ""

    .line 337
    :goto_0
    return-object v1

    .line 333
    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 334
    .local v0, "index":I
    if-ltz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_2

    .line 335
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_0

    .line 337
    :cond_2
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getFileMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "absPath"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 459
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v4, v10

    .line 499
    :cond_0
    :goto_0
    return-object v4

    .line 462
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 463
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_2
    move-object v4, v10

    .line 464
    goto :goto_0

    .line 466
    :cond_3
    const/4 v4, 0x0

    .line 467
    .local v4, "fileHash":Ljava/lang/String;
    const/4 v5, 0x0

    .line 469
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v6, "fis":Ljava/io/FileInputStream;
    move-object v5, v6

    .line 474
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :goto_1
    if-nez v5, :cond_4

    move-object v4, v10

    .line 475
    goto :goto_0

    .line 470
    :catch_0
    move-exception v2

    .line 471
    .local v2, "e1":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 480
    .end local v2    # "e1":Ljava/io/FileNotFoundException;
    :cond_4
    :try_start_1
    const-string/jumbo v10, "MD5"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    .line 481
    .local v9, "messageDigest":Ljava/security/MessageDigest;
    const/16 v10, 0x4000

    new-array v0, v10, [B

    .line 483
    .local v0, "buffer":[B
    :goto_2
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    .local v8, "length":I
    if-lez v8, :cond_5

    .line 484
    const/4 v10, 0x0

    invoke-virtual {v9, v0, v10, v8}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 488
    .end local v0    # "buffer":[B
    .end local v8    # "length":I
    .end local v9    # "messageDigest":Ljava/security/MessageDigest;
    :catch_1
    move-exception v1

    .line 489
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 491
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 496
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 497
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 486
    .restart local v0    # "buffer":[B
    .restart local v8    # "length":I
    .restart local v9    # "messageDigest":Ljava/security/MessageDigest;
    :cond_5
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 487
    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v10

    invoke-static {v10}, Lcom/alipay/android/h5appmanager/impl/SecurityUtil;->bytes2Hex([B)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v4

    goto :goto_3

    .line 492
    .end local v0    # "buffer":[B
    .end local v8    # "length":I
    .end local v9    # "messageDigest":Ljava/security/MessageDigest;
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v7

    .line 493
    .local v7, "ioe":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 388
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    const/4 p0, 0x0

    .line 395
    .local v0, "index":I
    :cond_0
    :goto_0
    return-object p0

    .line 391
    .end local v0    # "index":I
    :cond_1
    const-string/jumbo v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 392
    .restart local v0    # "index":I
    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 393
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getFileSHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "absPath"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 412
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v4, v10

    .line 455
    :cond_0
    :goto_0
    return-object v4

    .line 415
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 417
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_2
    move-object v4, v10

    .line 418
    goto :goto_0

    .line 420
    :cond_3
    const/4 v4, 0x0

    .line 421
    .local v4, "fileHash":Ljava/lang/String;
    const/4 v5, 0x0

    .line 423
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v6, "fis":Ljava/io/FileInputStream;
    move-object v5, v6

    .line 427
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :goto_1
    if-nez v5, :cond_4

    move-object v4, v10

    .line 428
    goto :goto_0

    .line 424
    :catch_0
    move-exception v2

    .line 425
    .local v2, "e1":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 433
    .end local v2    # "e1":Ljava/io/FileNotFoundException;
    :cond_4
    :try_start_1
    const-string/jumbo v10, "SHA-1"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    .line 434
    .local v9, "messageDigest":Ljava/security/MessageDigest;
    const/16 v10, 0x4000

    new-array v0, v10, [B

    .line 436
    .local v0, "buffer":[B
    :goto_2
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    .local v8, "length":I
    if-lez v8, :cond_6

    .line 437
    const/4 v10, 0x0

    invoke-virtual {v9, v0, v10, v8}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 440
    .end local v0    # "buffer":[B
    .end local v8    # "length":I
    .end local v9    # "messageDigest":Ljava/security/MessageDigest;
    :catch_1
    move-exception v1

    .line 441
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 444
    if-eqz v5, :cond_5

    .line 446
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 452
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 453
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 439
    .restart local v0    # "buffer":[B
    .restart local v8    # "length":I
    .restart local v9    # "messageDigest":Ljava/security/MessageDigest;
    :cond_6
    :try_start_4
    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v10

    invoke-static {v10}, Lcom/alipay/android/h5appmanager/impl/SecurityUtil;->bytes2Hex([B)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    .line 444
    if-eqz v5, :cond_5

    .line 446
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 447
    :catch_2
    move-exception v7

    .line 448
    .local v7, "ioe":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 447
    .end local v0    # "buffer":[B
    .end local v7    # "ioe":Ljava/io/IOException;
    .end local v8    # "length":I
    .end local v9    # "messageDigest":Ljava/security/MessageDigest;
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v7

    .line 448
    .restart local v7    # "ioe":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 444
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v7    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    if-eqz v5, :cond_7

    .line 446
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 449
    :cond_7
    :goto_4
    throw v10

    .line 447
    :catch_4
    move-exception v7

    .line 448
    .restart local v7    # "ioe":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method public static getFileStem(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 399
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    const/4 v1, 0x0

    .line 407
    :goto_0
    return-object v1

    .line 403
    :cond_0
    const-string/jumbo v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 404
    .local v0, "index":I
    if-lez v0, :cond_1

    .line 405
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 407
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static getLastModified(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "absPath"    # Ljava/lang/String;

    .prologue
    .line 574
    invoke-static {p0}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 575
    const/4 v5, 0x0

    .line 582
    :goto_0
    return-object v5

    .line 578
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 579
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 580
    .local v2, "lastModified":J
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 581
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 582
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static getMimeType(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 341
    if-nez p0, :cond_0

    .line 342
    const-string/jumbo v1, "*/*"

    .line 345
    :goto_0
    return-object v1

    .line 344
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 349
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 350
    const-string/jumbo v2, "*/*"

    .line 358
    :cond_0
    :goto_0
    return-object v2

    .line 352
    :cond_1
    invoke-static {p0}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "extension":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    .line 354
    .local v1, "map":Landroid/webkit/MimeTypeMap;
    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 355
    .local v2, "type":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 356
    const-string/jumbo v2, "*/*"

    goto :goto_0
.end method

.method public static getParent(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 162
    if-nez p0, :cond_0

    .line 163
    const/4 v0, 0x0

    .line 165
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getParent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "absPath"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    const/4 v1, 0x0

    .line 158
    :goto_0
    return-object v1

    .line 156
    :cond_0
    invoke-static {p0}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->cleanPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 157
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->getParent(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSubDirs(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "dir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 586
    invoke-static {p0}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 587
    const/4 v1, 0x0

    .line 600
    :cond_0
    return-object v1

    .line 590
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 591
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 592
    .local v0, "children":[Ljava/io/File;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 594
    .local v1, "dirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 595
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 596
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static getText(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "absPath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 503
    invoke-static {p0}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 529
    :cond_0
    :goto_0
    return-object v7

    .line 507
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 508
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v6, v8

    .line 509
    .local v6, "length":I
    const/16 v8, 0x5000

    if-gt v6, v8, :cond_0

    .line 513
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 516
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 518
    .local v4, "in":Ljava/io/BufferedInputStream;
    const/16 v8, 0x400

    new-array v1, v8, [B

    .line 520
    .local v1, "buffer":[B
    :goto_1
    const/4 v8, -0x1

    const/4 v9, 0x0

    const/16 v10, 0x400

    invoke-virtual {v4, v1, v9, v10}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v5

    .local v5, "len":I
    if-eq v8, v5, :cond_2

    .line 521
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 526
    .end local v1    # "buffer":[B
    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .end local v5    # "len":I
    :catch_0
    move-exception v2

    .line 527
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 523
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "buffer":[B
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v5    # "len":I
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 524
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 525
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto :goto_0
.end method

.method public static isFile(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 373
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFile(Ljava/lang/String;)Z
    .locals 3
    .param p0, "absPath"    # Ljava/lang/String;

    .prologue
    .line 363
    invoke-static {p0}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    .line 364
    .local v0, "exists":Z
    if-nez v0, :cond_0

    .line 365
    const/4 v2, 0x0

    .line 369
    :goto_0
    return v2

    .line 368
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 369
    .local v1, "file":Ljava/io/File;
    invoke-static {v1}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->isFile(Ljava/io/File;)Z

    move-result v2

    goto :goto_0
.end method

.method public static isFolder(Ljava/lang/String;)Z
    .locals 3
    .param p0, "absPath"    # Ljava/lang/String;

    .prologue
    .line 378
    invoke-static {p0}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    .line 379
    .local v0, "exists":Z
    if-nez v0, :cond_0

    .line 380
    const/4 v2, 0x0

    .line 384
    :goto_0
    return v2

    .line 383
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 384
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    goto :goto_0
.end method

.method public static mkdirs(Ljava/lang/String;)Z
    .locals 1
    .param p0, "absPath"    # Ljava/lang/String;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->mkdirs(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static mkdirs(Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "absPath"    # Ljava/lang/String;
    .param p1, "force"    # Z

    .prologue
    .line 60
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .local v1, "file":Ljava/io/File;
    invoke-static {p0}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->isFolder(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 62
    if-nez p1, :cond_0

    .line 63
    const/4 v2, 0x0

    .line 73
    :goto_0
    return v2

    .line 66
    :cond_0
    invoke-static {v1}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->delete(Ljava/io/File;)Z

    .line 69
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_1
    invoke-static {v1}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->exists(Ljava/io/File;)Z

    move-result v2

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static move(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "dstPath"    # Ljava/lang/String;

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->move(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static move(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 5
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "dstPath"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    const/4 v3, 0x0

    .line 81
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v3

    .line 85
    :cond_1
    invoke-static {p0}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    invoke-static {p1}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 90
    if-eqz p2, :cond_0

    .line 93
    invoke-static {p1}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->delete(Ljava/lang/String;)Z

    .line 98
    :cond_2
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .local v2, "srcFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "dstFile":Ljava/io/File;
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 101
    .end local v0    # "dstFile":Ljava/io/File;
    .end local v2    # "srcFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static final read(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .prologue
    const/16 v4, 0x4000

    .line 553
    if-nez p0, :cond_0

    .line 554
    const/4 v3, 0x0

    .line 570
    :goto_0
    return-object v3

    .line 557
    :cond_0
    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-direct {v0, v4}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 558
    .local v0, "baf":Lorg/apache/http/util/ByteArrayBuffer;
    new-array v1, v4, [B

    .line 561
    .local v1, "buffer":[B
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 562
    .local v2, "count":I
    :goto_1
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 563
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 564
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_1

    .end local v2    # "count":I
    :catch_0
    move-exception v4

    .line 569
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 570
    .local v3, "text":Ljava/lang/String;
    goto :goto_0
.end method

.method public static final read(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "absPath"    # Ljava/lang/String;

    .prologue
    .line 533
    const/4 v2, 0x0

    .line 534
    .local v2, "text":Ljava/lang/String;
    const/4 v0, 0x0

    .line 536
    .local v0, "ips":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    .end local v0    # "ips":Ljava/io/InputStream;
    .local v1, "ips":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v1}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->read(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 543
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 549
    .end local v1    # "ips":Ljava/io/InputStream;
    .restart local v0    # "ips":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v2

    .line 546
    .end local v0    # "ips":Ljava/io/InputStream;
    .restart local v1    # "ips":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    move-object v0, v1

    .end local v1    # "ips":Ljava/io/InputStream;
    .restart local v0    # "ips":Ljava/io/InputStream;
    goto :goto_0

    .line 541
    :catch_1
    move-exception v3

    :goto_1
    if-eqz v0, :cond_0

    .line 543
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 546
    :catch_2
    move-exception v3

    goto :goto_0

    .line 541
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v0, :cond_1

    .line 543
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 546
    :cond_1
    :goto_3
    throw v3

    :catch_3
    move-exception v4

    goto :goto_3

    .line 541
    .end local v0    # "ips":Ljava/io/InputStream;
    .restart local v1    # "ips":Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "ips":Ljava/io/InputStream;
    .restart local v0    # "ips":Ljava/io/InputStream;
    goto :goto_2

    .end local v0    # "ips":Ljava/io/InputStream;
    .restart local v1    # "ips":Ljava/io/InputStream;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1    # "ips":Ljava/io/InputStream;
    .restart local v0    # "ips":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static size(Ljava/io/File;)J
    .locals 9
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const-wide/16 v6, 0x0

    .line 215
    invoke-static {p0}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->exists(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_1

    move-wide v4, v6

    .line 235
    :cond_0
    :goto_0
    return-wide v4

    .line 219
    :cond_1
    const-wide/16 v4, 0x0

    .line 220
    .local v4, "length":J
    invoke-static {p0}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->isFile(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 221
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 222
    goto :goto_0

    .line 225
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 226
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_3

    array-length v8, v1

    if-nez v8, :cond_4

    :cond_3
    move-wide v4, v6

    .line 227
    goto :goto_0

    .line 230
    :cond_4
    array-length v3, v1

    .line 231
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 232
    aget-object v0, v1, v2

    .line 233
    .local v0, "child":Ljava/io/File;
    invoke-static {v0}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->size(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 231
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static size(Ljava/lang/String;)J
    .locals 4
    .param p0, "absPath"    # Ljava/lang/String;

    .prologue
    .line 207
    if-nez p0, :cond_0

    .line 208
    const-wide/16 v2, 0x0

    .line 211
    :goto_0
    return-wide v2

    .line 210
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->size(Ljava/io/File;)J

    move-result-wide v2

    goto :goto_0
.end method
