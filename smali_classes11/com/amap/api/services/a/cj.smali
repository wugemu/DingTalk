.class public Lcom/amap/api/services/a/cj;
.super Ljava/lang/Object;
.source "DexFileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/a/cj$a;
    }
.end annotation


# direct methods
.method static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "pngex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    return-object v0
.end method

.method static a(Landroid/content/Context;Lcom/amap/api/services/a/bq;Lcom/amap/api/services/a/be;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 410
    .line 412
    invoke-virtual {p2}, Lcom/amap/api/services/a/be;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "copy"

    invoke-static {v0, v1}, Lcom/amap/api/services/a/cn;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 414
    const-class v1, Lcom/amap/api/services/a/cn;

    invoke-virtual {p1, v0, v1}, Lcom/amap/api/services/a/bq;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 416
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 447
    :goto_0
    return-object v0

    .line 419
    :cond_1
    invoke-static {v3}, Lcom/amap/api/services/a/co;->a(Ljava/util/List;)V

    .line 420
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 421
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/a/cn;

    .line 424
    invoke-virtual {v0}, Lcom/amap/api/services/a/cn;->a()Ljava/lang/String;

    move-result-object v4

    .line 423
    invoke-static {p0, p1, v4, p2}, Lcom/amap/api/services/a/co;->a(Landroid/content/Context;Lcom/amap/api/services/a/bq;Ljava/lang/String;Lcom/amap/api/services/a/be;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 431
    :try_start_0
    invoke-virtual {v0}, Lcom/amap/api/services/a/cn;->a()Ljava/lang/String;

    move-result-object v4

    .line 430
    invoke-static {p0, v4}, Lcom/amap/api/services/a/cj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 432
    invoke-virtual {v0}, Lcom/amap/api/services/a/cn;->e()Ljava/lang/String;

    move-result-object v5

    .line 426
    invoke-static {p0, p1, p2, v4, v5}, Lcom/amap/api/services/a/cj;->a(Landroid/content/Context;Lcom/amap/api/services/a/bq;Lcom/amap/api/services/a/be;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-virtual {v0}, Lcom/amap/api/services/a/cn;->e()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 436
    :catch_0
    move-exception v0

    .line 437
    const-string/jumbo v4, "FileManager"

    const-string/jumbo v5, "loadAvailableD"

    invoke-static {v0, v4, v5}, Lcom/amap/api/services/a/co;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 443
    :cond_2
    invoke-virtual {v0}, Lcom/amap/api/services/a/cn;->a()Ljava/lang/String;

    move-result-object v0

    .line 442
    invoke-static {p0, p1, v0}, Lcom/amap/api/services/a/cj;->c(Landroid/content/Context;Lcom/amap/api/services/a/bq;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/amap/api/services/a/cj;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 118
    invoke-static {p0}, Lcom/amap/api/services/a/ba;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/bc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".o"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/amap/api/services/a/be;)V
    .locals 4

    .prologue
    .line 163
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/services/a/be;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/services/a/be;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/amap/api/services/a/cj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 170
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 172
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p1}, Lcom/amap/api/services/a/be;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/services/a/be;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/amap/api/services/a/cj;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    const-string/jumbo v1, "BaseClassLoader"

    const-string/jumbo v2, "getInstanceByThread()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/co;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/services/a/cj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/amap/api/services/a/cj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Ldalvik/system/DexFile;->close()V

    .line 181
    invoke-static {p0, v1, v2, p1}, Lcom/amap/api/services/a/cj;->a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Lcom/amap/api/services/a/be;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/amap/api/services/a/bq;Lcom/amap/api/services/a/be;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 336
    const/4 v4, 0x0

    .line 337
    const/4 v2, 0x0

    .line 339
    :try_start_0
    invoke-virtual {p2}, Lcom/amap/api/services/a/be;->a()Ljava/lang/String;

    move-result-object v3

    .line 340
    invoke-virtual {p2}, Lcom/amap/api/services/a/be;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3, v0}, Lcom/amap/api/services/a/cj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 342
    invoke-static {p0, p1, v1}, Lcom/amap/api/services/a/cj;->a(Landroid/content/Context;Lcom/amap/api/services/a/bq;Ljava/lang/String;)V

    .line 344
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 345
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 346
    const/16 v0, 0x20

    :try_start_1
    new-array v0, v0, [B

    .line 347
    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    .line 349
    new-instance v4, Ljava/io/File;

    .line 350
    invoke-virtual {p2}, Lcom/amap/api/services/a/be;->b()Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-static {p0, v3, v0}, Lcom/amap/api/services/a/cj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 351
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string/jumbo v0, "rw"

    invoke-direct {v6, v4, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 353
    const/16 v0, 0x400

    :try_start_2
    new-array v2, v0, [B

    .line 355
    const/4 v0, 0x0

    .line 356
    :goto_0
    invoke-virtual {v7, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_1

    .line 358
    const/16 v8, 0x400

    if-ne v5, v8, :cond_0

    .line 359
    int-to-long v8, v0

    invoke-virtual {v6, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 360
    invoke-virtual {v6, v2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 368
    :goto_1
    add-int/2addr v0, v5

    goto :goto_0

    .line 363
    :cond_0
    new-array v8, v5, [B

    .line 364
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v2, v9, v8, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    int-to-long v10, v0

    invoke-virtual {v6, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 366
    invoke-virtual {v6, v8}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_1

    .line 378
    :catch_0
    move-exception v0

    move-object v1, v6

    move-object v2, v7

    .line 382
    :goto_2
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 384
    :catchall_0
    move-exception v0

    move-object v6, v1

    move-object v7, v2

    .line 385
    :goto_3
    :try_start_4
    invoke-static {v7}, Lcom/amap/api/services/a/co;->a(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 391
    :goto_4
    :try_start_5
    invoke-static {v6}, Lcom/amap/api/services/a/co;->a(Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    .line 395
    :goto_5
    throw v0

    .line 371
    :cond_1
    :try_start_6
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/bc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 372
    new-instance v0, Lcom/amap/api/services/a/cn$a;

    invoke-virtual {p2}, Lcom/amap/api/services/a/be;->b()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/services/a/cn$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "used"

    invoke-virtual {v0, v1}, Lcom/amap/api/services/a/cn$a;->a(Ljava/lang/String;)Lcom/amap/api/services/a/cn$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/cn$a;->a()Lcom/amap/api/services/a/cn;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Lcom/amap/api/services/a/cn;->a()Ljava/lang/String;

    move-result-object v1

    .line 374
    invoke-static {v1}, Lcom/amap/api/services/a/cn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 373
    invoke-static {p1, v0, v1}, Lcom/amap/api/services/a/cj$a;->a(Lcom/amap/api/services/a/bq;Lcom/amap/api/services/a/cn;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 385
    :try_start_7
    invoke-static {v7}, Lcom/amap/api/services/a/co;->a(Ljava/io/Closeable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    .line 391
    :goto_6
    :try_start_8
    invoke-static {v6}, Lcom/amap/api/services/a/co;->a(Ljava/io/Closeable;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    .line 397
    :goto_7
    return-void

    .line 387
    :catch_1
    move-exception v0

    .line 388
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 393
    :catch_2
    move-exception v0

    .line 394
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 387
    :catch_3
    move-exception v1

    .line 388
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 393
    :catch_4
    move-exception v1

    .line 394
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 384
    :catchall_1
    move-exception v0

    move-object v6, v2

    move-object v7, v4

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v6, v2

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_3

    .line 378
    :catch_5
    move-exception v0

    move-object v1, v2

    move-object v2, v4

    goto :goto_2

    :catch_6
    move-exception v0

    move-object v1, v2

    move-object v2, v7

    goto :goto_2
.end method

.method static a(Landroid/content/Context;Lcom/amap/api/services/a/bq;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 223
    invoke-static {p0, p1, p2}, Lcom/amap/api/services/a/cj;->c(Landroid/content/Context;Lcom/amap/api/services/a/bq;Ljava/lang/String;)V

    .line 225
    invoke-static {p2}, Lcom/amap/api/services/a/cj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/amap/api/services/a/cj;->c(Landroid/content/Context;Lcom/amap/api/services/a/bq;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/io/File;Lcom/amap/api/services/a/be;)V
    .locals 2

    .prologue
    .line 456
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 457
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 459
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {p2}, Lcom/amap/api/services/a/be;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amap/api/services/a/be;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/amap/api/services/a/cj;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Lcom/amap/api/services/a/be;)V
    .locals 7

    .prologue
    .line 491
    const/4 v5, 0x0

    .line 492
    new-instance v6, Lcom/amap/api/services/a/bq;

    invoke-static {}, Lcom/amap/api/services/a/cm;->c()Lcom/amap/api/services/a/cm;

    move-result-object v0

    invoke-direct {v6, p0, v0}, Lcom/amap/api/services/a/bq;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/bp;)V

    .line 493
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/amap/api/services/a/cj$a;->a(Lcom/amap/api/services/a/bq;Ljava/lang/String;)Lcom/amap/api/services/a/cn;

    move-result-object v0

    .line 494
    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {v0}, Lcom/amap/api/services/a/cn;->e()Ljava/lang/String;

    move-result-object v5

    .line 498
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 500
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 501
    invoke-static {p2}, Lcom/amap/api/services/a/bc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 502
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 503
    invoke-virtual {p3}, Lcom/amap/api/services/a/be;->a()Ljava/lang/String;

    move-result-object v3

    .line 504
    invoke-virtual {p3}, Lcom/amap/api/services/a/be;->b()Ljava/lang/String;

    move-result-object v4

    .line 508
    new-instance v0, Lcom/amap/api/services/a/cn$a;

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/services/a/cn$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "useod"

    .line 509
    invoke-virtual {v0, v2}, Lcom/amap/api/services/a/cn$a;->a(Ljava/lang/String;)Lcom/amap/api/services/a/cn$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/cn$a;->a()Lcom/amap/api/services/a/cn;

    move-result-object v0

    .line 512
    invoke-static {v1}, Lcom/amap/api/services/a/cn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 511
    invoke-static {v6, v0, v1}, Lcom/amap/api/services/a/cj$a;->a(Lcom/amap/api/services/a/bq;Lcom/amap/api/services/a/cn;Ljava/lang/String;)V

    .line 521
    :cond_1
    return-void
.end method

.method static a(Lcom/amap/api/services/a/bq;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 281
    const-string/jumbo v0, "used"

    invoke-static {p0, p2, v0}, Lcom/amap/api/services/a/cj$a;->a(Lcom/amap/api/services/a/bq;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 284
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/a/cn;

    .line 285
    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0}, Lcom/amap/api/services/a/cn;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    invoke-virtual {v0}, Lcom/amap/api/services/a/cn;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p0, v2}, Lcom/amap/api/services/a/cj;->a(Landroid/content/Context;Lcom/amap/api/services/a/bq;Ljava/lang/String;)V

    .line 293
    invoke-virtual {v0}, Lcom/amap/api/services/a/cn;->e()Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-static {p2, v0}, Lcom/amap/api/services/a/cn;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/amap/api/services/a/cn;

    invoke-virtual {p0, v0, v2}, Lcom/amap/api/services/a/bq;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 296
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/a/cn;

    .line 297
    const-string/jumbo v2, "errorstatus"

    invoke-virtual {v0, v2}, Lcom/amap/api/services/a/cn;->c(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0}, Lcom/amap/api/services/a/cn;->a()Ljava/lang/String;

    move-result-object v2

    .line 299
    invoke-static {v2}, Lcom/amap/api/services/a/cn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 301
    invoke-static {p0, v0, v2}, Lcom/amap/api/services/a/cj$a;->a(Lcom/amap/api/services/a/bq;Lcom/amap/api/services/a/cn;Ljava/lang/String;)V

    .line 304
    invoke-virtual {v0}, Lcom/amap/api/services/a/cn;->a()Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-static {p1, v0}, Lcom/amap/api/services/a/cj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 319
    :cond_1
    return-void
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    invoke-static {p0, p1, p2}, Lcom/amap/api/services/a/cj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amap/api/services/a/cj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;Lcom/amap/api/services/a/bq;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-static {p0, p1, p2}, Lcom/amap/api/services/a/cj;->c(Landroid/content/Context;Lcom/amap/api/services/a/bq;Ljava/lang/String;)V

    return-void
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 197
    new-instance v2, Lcom/amap/api/services/a/bq;

    invoke-static {}, Lcom/amap/api/services/a/cm;->c()Lcom/amap/api/services/a/cm;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Lcom/amap/api/services/a/bq;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/bp;)V

    .line 198
    const-string/jumbo v1, "copy"

    invoke-static {v2, p1, v1}, Lcom/amap/api/services/a/cj$a;->a(Lcom/amap/api/services/a/bq;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 199
    invoke-static {v3}, Lcom/amap/api/services/a/co;->a(Ljava/util/List;)V

    .line 201
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 202
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v1, v0

    .line 204
    :goto_0
    if-ge v1, v4, :cond_0

    .line 205
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/a/cn;

    .line 206
    invoke-virtual {v0}, Lcom/amap/api/services/a/cn;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/amap/api/services/a/cj;->c(Landroid/content/Context;Lcom/amap/api/services/a/bq;Ljava/lang/String;)V

    .line 204
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 210
    :cond_0
    return-void
.end method

.method private static c(Landroid/content/Context;Lcom/amap/api/services/a/bq;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 477
    invoke-static {p0, p2}, Lcom/amap/api/services/a/cj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 478
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 483
    :cond_0
    invoke-static {p2}, Lcom/amap/api/services/a/cn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/amap/api/services/a/cn;

    invoke-virtual {p1, v0, v1}, Lcom/amap/api/services/a/bq;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 485
    return-void
.end method

.method static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 238
    invoke-static {}, Lcom/amap/api/services/a/bk;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/amap/api/services/a/cj$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/amap/api/services/a/cj$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 269
    return-void
.end method
