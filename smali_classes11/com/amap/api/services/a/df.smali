.class public Lcom/amap/api/services/a/df;
.super Ljava/lang/Object;
.source "StatisticsManager.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/services/a/df;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 201
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/df;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 205
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/16 v2, 0x35

    if-ne v1, v2, :cond_0

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/bf;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 215
    invoke-static {p0}, Lcom/amap/api/services/a/df;->b(Landroid/content/Context;)[B

    move-result-object v1

    .line 217
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 219
    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    const/4 v3, 0x0

    array-length v0, v0

    array-length v4, v1

    invoke-static {v1, v3, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    invoke-static {v2}, Lcom/amap/api/services/a/bf;->c([B)[B

    move-result-object v0

    .line 224
    new-instance v1, Lcom/amap/api/services/a/bj;

    const-string/jumbo v2, "2"

    invoke-direct {v1, v0, v2}, Lcom/amap/api/services/a/bj;-><init>([BLjava/lang/String;)V

    .line 226
    invoke-static {}, Lcom/amap/api/services/a/ct;->a()Lcom/amap/api/services/a/ct;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/services/a/ct;->b(Lcom/amap/api/services/a/cz;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    const-string/jumbo v1, "StatisticsManager"

    const-string/jumbo v2, "updateStaticsData"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;J)V
    .locals 5

    .prologue
    .line 358
    const-string/jumbo v0, "c.log"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/bi;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 363
    :cond_0
    const/4 v2, 0x0

    .line 365
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    :try_start_1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/bf;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 367
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 379
    if-eqz v1, :cond_1

    .line 381
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5

    .line 387
    :cond_1
    :goto_0
    return-void

    .line 368
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 371
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 379
    if-eqz v1, :cond_1

    .line 381
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 382
    :catch_1
    move-exception v0

    .line 383
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 373
    :catch_2
    move-exception v0

    move-object v1, v2

    .line 376
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 379
    if-eqz v1, :cond_1

    .line 381
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 382
    :catch_3
    move-exception v0

    goto :goto_2

    .line 379
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_2

    .line 381
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    .line 379
    :cond_2
    :goto_5
    throw v0

    .line 382
    :catch_4
    move-exception v1

    .line 383
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 382
    :catch_5
    move-exception v0

    goto :goto_2

    .line 379
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 373
    :catch_6
    move-exception v0

    goto :goto_3

    .line 368
    :catch_7
    move-exception v0

    goto :goto_1
.end method

.method public static declared-synchronized a(Lcom/amap/api/services/a/de;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 73
    const-class v1, Lcom/amap/api/services/a/df;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/amap/api/services/a/bk;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lcom/amap/api/services/a/df$1;

    invoke-direct {v2, p0, p1}, Lcom/amap/api/services/a/df$1;-><init>(Lcom/amap/api/services/a/de;Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit v1

    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/content/Context;[B)[B
    .locals 1

    .prologue
    .line 237
    :try_start_0
    invoke-static {p0, p1}, Lcom/amap/api/services/a/az;->a(Landroid/content/Context;[B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 241
    :goto_0
    return-object v0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 241
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 178
    invoke-static {p0}, Lcom/amap/api/services/a/df;->c(Landroid/content/Context;)[B

    move-result-object v0

    .line 180
    invoke-static {p0}, Lcom/amap/api/services/a/df;->e(Landroid/content/Context;)[B

    move-result-object v1

    .line 182
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 185
    array-length v3, v0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    array-length v0, v0

    array-length v3, v1

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    invoke-static {p0, v2}, Lcom/amap/api/services/a/df;->a(Landroid/content/Context;[B)[B

    move-result-object v0

    .line 191
    return-object v0
.end method

.method private static c(Landroid/content/Context;)[B
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 247
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 249
    new-array v0, v0, [B

    .line 252
    :try_start_0
    const-string/jumbo v1, "1.2.13.6"

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bf;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 254
    const-string/jumbo v1, "Android"

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bf;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 255
    invoke-static {p0}, Lcom/amap/api/services/a/ba;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bf;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 258
    invoke-static {p0}, Lcom/amap/api/services/a/ba;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bf;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 259
    invoke-static {p0}, Lcom/amap/api/services/a/ba;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bf;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 262
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bf;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 263
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bf;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 264
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bf;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 266
    invoke-static {p0}, Lcom/amap/api/services/a/ba;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bf;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 268
    invoke-static {p0}, Lcom/amap/api/services/a/aw;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bf;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 269
    invoke-static {p0}, Lcom/amap/api/services/a/aw;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bf;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 270
    invoke-static {p0}, Lcom/amap/api/services/a/aw;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amap/api/services/a/bf;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 272
    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-byte v4, v1, v3

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 274
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 279
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 284
    :goto_0
    return-object v0

    .line 275
    :catch_0
    move-exception v1

    .line 276
    :try_start_2
    const-string/jumbo v3, "StatisticsManager"

    const-string/jumbo v4, "getHeader"

    invoke-static {v1, v3, v4}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 279
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 280
    :catch_1
    move-exception v1

    .line 281
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 278
    :catchall_0
    move-exception v0

    .line 279
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 278
    :goto_2
    throw v0

    .line 280
    :catch_2
    move-exception v1

    .line 281
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 280
    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method private static d(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 290
    .line 292
    :try_start_0
    sget-object v1, Lcom/amap/api/services/a/bi;->e:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/amap/api/services/a/bi;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 294
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    :goto_0
    return v0

    .line 298
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 299
    :catch_0
    move-exception v1

    .line 300
    const-string/jumbo v2, "StatisticsManager"

    const-string/jumbo v3, "getFileNum"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static e(Landroid/content/Context;)[B
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 307
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 308
    new-array v0, v1, [B

    .line 309
    sget-object v2, Lcom/amap/api/services/a/bi;->e:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/amap/api/services/a/bi;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 310
    const/4 v2, 0x0

    .line 312
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-wide/32 v8, 0x19000

    invoke-static {v5, v6, v7, v8, v9}, Lcom/amap/api/services/a/cp;->a(Ljava/io/File;IIJ)Lcom/amap/api/services/a/cp;

    move-result-object v2

    .line 313
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 315
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 316
    array-length v5, v4

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v6, v4, v1

    .line 317
    const-string/jumbo v7, ".0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 320
    const-string/jumbo v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 321
    const/4 v7, 0x0

    aget-object v6, v6, v7

    .line 322
    invoke-static {v2, v6}, Lcom/amap/api/services/a/dg;->a(Lcom/amap/api/services/a/cp;Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 316
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 326
    :cond_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 334
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 339
    :goto_1
    if-eqz v2, :cond_2

    .line 341
    :try_start_2
    invoke-virtual {v2}, Lcom/amap/api/services/a/cp;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_9

    .line 347
    :cond_2
    :goto_2
    return-object v0

    .line 327
    :catch_0
    move-exception v1

    .line 328
    :try_start_3
    const-string/jumbo v4, "StatisticsManager"

    const-string/jumbo v5, "getContent"

    invoke-static {v1, v4, v5}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 334
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 339
    :goto_3
    if-eqz v2, :cond_2

    .line 341
    :try_start_5
    invoke-virtual {v2}, Lcom/amap/api/services/a/cp;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 342
    :catch_1
    move-exception v1

    .line 343
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 329
    :catch_2
    move-exception v1

    .line 330
    :try_start_6
    const-string/jumbo v4, "StatisticsManager"

    const-string/jumbo v5, "getContent"

    invoke-static {v1, v4, v5}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 334
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 339
    :goto_5
    if-eqz v2, :cond_2

    .line 341
    :try_start_8
    invoke-virtual {v2}, Lcom/amap/api/services/a/cp;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    .line 342
    :catch_3
    move-exception v1

    goto :goto_4

    .line 332
    :catchall_0
    move-exception v0

    .line 334
    :try_start_9
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 339
    :goto_6
    if-eqz v2, :cond_3

    .line 341
    :try_start_a
    invoke-virtual {v2}, Lcom/amap/api/services/a/cp;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5

    .line 332
    :cond_3
    :goto_7
    throw v0

    .line 335
    :catch_4
    move-exception v1

    .line 336
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 342
    :catch_5
    move-exception v1

    .line 343
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 335
    :catch_6
    move-exception v1

    .line 336
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 335
    :catch_7
    move-exception v1

    .line 336
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 335
    :catch_8
    move-exception v1

    .line 336
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 342
    :catch_9
    move-exception v1

    goto :goto_4
.end method

.method private static f(Landroid/content/Context;)J
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    .line 393
    const-string/jumbo v2, "c.log"

    invoke-static {p0, v2}, Lcom/amap/api/services/a/bi;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 394
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 434
    :cond_0
    :goto_0
    return-wide v0

    .line 398
    :cond_1
    const/4 v4, 0x0

    .line 400
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 401
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v2

    .line 402
    new-array v2, v2, [B

    .line 403
    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 404
    invoke-static {v2}, Lcom/amap/api/services/a/bf;->a([B)Ljava/lang/String;

    move-result-object v2

    .line 405
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 424
    if-eqz v3, :cond_0

    .line 426
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 427
    :catch_0
    move-exception v2

    .line 429
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 408
    :catch_1
    move-exception v2

    move-object v3, v4

    .line 409
    :goto_2
    :try_start_3
    const-string/jumbo v4, "StatisticsManager"

    const-string/jumbo v5, "getUpdateTime"

    invoke-static {v2, v4, v5}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 424
    if-eqz v3, :cond_0

    .line 426
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 427
    :catch_2
    move-exception v2

    goto :goto_1

    .line 411
    :catch_3
    move-exception v2

    move-object v3, v4

    .line 412
    :goto_3
    :try_start_5
    const-string/jumbo v4, "StatisticsManager"

    const-string/jumbo v5, "getUpdateTime"

    invoke-static {v2, v4, v5}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 424
    if-eqz v3, :cond_0

    .line 426
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 427
    :catch_4
    move-exception v2

    goto :goto_1

    .line 413
    :catch_5
    move-exception v2

    move-object v3, v4

    .line 415
    :goto_4
    :try_start_7
    const-string/jumbo v4, "StatisticsManager"

    const-string/jumbo v6, "getUpdateTime"

    invoke-static {v2, v4, v6}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 417
    :try_start_8
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 418
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 424
    :cond_2
    :goto_5
    if-eqz v3, :cond_0

    .line 426
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_0

    .line 427
    :catch_6
    move-exception v2

    goto :goto_1

    .line 420
    :catch_7
    move-exception v2

    .line 421
    :try_start_a
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_5

    .line 424
    :catchall_0
    move-exception v0

    :goto_6
    if-eqz v3, :cond_3

    .line 426
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_8

    .line 424
    :cond_3
    :goto_7
    throw v0

    .line 427
    :catch_8
    move-exception v1

    .line 429
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 424
    :catchall_1
    move-exception v0

    move-object v3, v4

    goto :goto_6

    .line 413
    :catch_9
    move-exception v2

    goto :goto_4

    .line 411
    :catch_a
    move-exception v2

    goto :goto_3

    .line 408
    :catch_b
    move-exception v2

    goto :goto_2
.end method

.method private static g(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 440
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/ba;->m(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v1, :cond_0

    sget-boolean v2, Lcom/amap/api/services/a/df;->a:Z

    if-eqz v2, :cond_0

    .line 443
    invoke-static {p0}, Lcom/amap/api/services/a/df;->d(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_1

    .line 462
    :cond_0
    :goto_0
    return v0

    .line 446
    :cond_1
    invoke-static {p0}, Lcom/amap/api/services/a/df;->f(Landroid/content/Context;)J

    move-result-wide v2

    .line 447
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 449
    sub-long v2, v4, v2

    const-wide/32 v6, 0x36ee80

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    .line 452
    invoke-static {p0, v4, v5}, Lcom/amap/api/services/a/df;->a(Landroid/content/Context;J)V

    .line 454
    const/4 v2, 0x0

    sput-boolean v2, Lcom/amap/api/services/a/df;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 455
    goto :goto_0

    .line 459
    :catch_0
    move-exception v1

    .line 460
    const-string/jumbo v2, "StatisticsManager"

    const-string/jumbo v3, "isUpdate"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
