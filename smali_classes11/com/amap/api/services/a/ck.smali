.class Lcom/amap/api/services/a/ck;
.super Lcom/amap/api/services/a/cg;
.source "DynamicClassLoader.java"


# instance fields
.field private g:Ljava/security/PublicKey;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/amap/api/services/a/be;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/amap/api/services/a/cg;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/be;Z)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/a/ck;->g:Ljava/security/PublicKey;

    .line 54
    invoke-virtual {p2}, Lcom/amap/api/services/a/be;->a()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {p2}, Lcom/amap/api/services/a/be;->b()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {p1, v0, v1}, Lcom/amap/api/services/a/cj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {p1}, Lcom/amap/api/services/a/cj;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-direct {p0, v0, v1}, Lcom/amap/api/services/a/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    if-eqz p3, :cond_0

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/services/a/cj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/amap/api/services/a/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, p1, v0, v1}, Lcom/amap/api/services/a/ck;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    return-void
.end method

.method private a(Lcom/amap/api/services/a/bq;Ljava/io/File;)V
    .locals 1

    .prologue
    .line 310
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amap/api/services/a/cj$a;->a(Lcom/amap/api/services/a/bq;Ljava/lang/String;)Lcom/amap/api/services/a/cn;

    move-result-object v0

    .line 312
    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v0}, Lcom/amap/api/services/a/cn;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ck;->f:Ljava/lang/String;

    .line 315
    :cond_0
    return-void
.end method

.method private a(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 154
    const/4 v1, 0x0

    .line 156
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 157
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 158
    :cond_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-gtz v2, :cond_0

    .line 164
    :try_start_1
    invoke-static {v1}, Lcom/amap/api/services/a/co;->a(Ljava/io/Closeable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 171
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 160
    :catch_1
    move-exception v0

    .line 161
    :try_start_2
    const-string/jumbo v2, "DyLoader"

    const-string/jumbo v3, "loadJa"

    invoke-static {v0, v2, v3}, Lcom/amap/api/services/a/co;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    :try_start_3
    invoke-static {v1}, Lcom/amap/api/services/a/co;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 166
    :catch_2
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    .line 164
    :try_start_4
    invoke-static {v1}, Lcom/amap/api/services/a/co;->a(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 168
    :goto_1
    throw v0

    .line 166
    :catch_3
    move-exception v1

    .line 167
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private a(Lcom/amap/api/services/a/bq;Lcom/amap/api/services/a/be;Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 239
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 241
    invoke-direct {p0, v0}, Lcom/amap/api/services/a/ck;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/amap/api/services/a/ck;->a:Landroid/content/Context;

    .line 244
    invoke-virtual {p2}, Lcom/amap/api/services/a/be;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amap/api/services/a/be;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/cj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-static {p1, v0, p3, p2}, Lcom/amap/api/services/a/co;->a(Lcom/amap/api/services/a/bq;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/services/a/be;)Z

    move-result v0

    .line 248
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/amap/api/services/a/bq;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 255
    iget-object v0, p0, Lcom/amap/api/services/a/ck;->a:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/amap/api/services/a/cj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    iget-object v0, p0, Lcom/amap/api/services/a/ck;->e:Lcom/amap/api/services/a/be;

    invoke-static {p1, p2, v1, v0}, Lcom/amap/api/services/a/co;->a(Lcom/amap/api/services/a/bq;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/services/a/be;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    .line 272
    :goto_0
    return v0

    .line 260
    :cond_0
    invoke-static {p1, p2}, Lcom/amap/api/services/a/cj$a;->a(Lcom/amap/api/services/a/bq;Ljava/lang/String;)Lcom/amap/api/services/a/cn;

    move-result-object v0

    .line 261
    if-eqz v0, :cond_1

    .line 262
    const/4 v0, 0x0

    goto :goto_0

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/a/ck;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 265
    new-instance v0, Lcom/amap/api/services/a/cn$a;

    invoke-static {v1}, Lcom/amap/api/services/a/bc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/amap/api/services/a/ck;->e:Lcom/amap/api/services/a/be;

    .line 266
    invoke-virtual {v1}, Lcom/amap/api/services/a/be;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/amap/api/services/a/ck;->e:Lcom/amap/api/services/a/be;

    invoke-virtual {v1}, Lcom/amap/api/services/a/be;->b()Ljava/lang/String;

    move-result-object v4

    move-object v1, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/services/a/cn$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "useod"

    .line 267
    invoke-virtual {v0, v1}, Lcom/amap/api/services/a/cn$a;->a(Ljava/lang/String;)Lcom/amap/api/services/a/cn$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/cn$a;->a()Lcom/amap/api/services/a/cn;

    move-result-object v0

    .line 269
    invoke-static {p2}, Lcom/amap/api/services/a/cn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 268
    invoke-static {p1, v0, v1}, Lcom/amap/api/services/a/cj$a;->a(Lcom/amap/api/services/a/bq;Lcom/amap/api/services/a/cn;Ljava/lang/String;)V

    :cond_2
    move v0, v6

    .line 272
    goto :goto_0
.end method

.method private a(Ljava/io/File;)Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 201
    const/4 v3, 0x0

    .line 203
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/services/a/ck;->c()V

    .line 204
    new-instance v2, Ljava/util/jar/JarFile;

    invoke-direct {v2, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :try_start_1
    const-string/jumbo v1, "classes.dex"

    invoke-virtual {v2, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 206
    if-nez v1, :cond_1

    .line 221
    :try_start_2
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    .line 226
    :cond_0
    :goto_0
    return v0

    .line 209
    :cond_1
    :try_start_3
    invoke-direct {p0, v2, v1}, Lcom/amap/api/services/a/ck;->a(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)V

    .line 210
    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    .line 211
    if-nez v1, :cond_2

    .line 221
    :try_start_4
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 214
    :cond_2
    :try_start_5
    invoke-direct {p0, p1, v1}, Lcom/amap/api/services/a/ck;->a(Ljava/io/File;[Ljava/security/cert/Certificate;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v0

    .line 221
    :try_start_6
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    .line 215
    :catch_2
    move-exception v1

    move-object v2, v3

    .line 216
    :goto_1
    :try_start_7
    const-string/jumbo v3, "DyLoader"

    const-string/jumbo v4, "verify"

    invoke-static {v1, v3, v4}, Lcom/amap/api/services/a/co;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 220
    if-eqz v2, :cond_0

    .line 221
    :try_start_8
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0

    .line 219
    :catchall_0
    move-exception v0

    move-object v2, v3

    .line 220
    :goto_2
    if-eqz v2, :cond_3

    .line 221
    :try_start_9
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5

    .line 226
    :cond_3
    :goto_3
    throw v0

    :catch_4
    move-exception v1

    goto :goto_0

    :catch_5
    move-exception v1

    goto :goto_3

    .line 219
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 215
    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method private a(Ljava/io/File;[Ljava/security/cert/Certificate;)Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 181
    :try_start_0
    array-length v0, p2

    if-lez v0, :cond_0

    .line 182
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 184
    aget-object v0, p2, v0

    iget-object v1, p0, Lcom/amap/api/services/a/ck;->g:Ljava/security/PublicKey;

    invoke-virtual {v0, v1}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    const/4 v0, 0x1

    .line 192
    :goto_0
    return v0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    const-string/jumbo v1, "DyLoader"

    const-string/jumbo v2, "check"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/co;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 291
    invoke-static {}, Lcom/amap/api/services/a/bk;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/amap/api/services/a/ck$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/amap/api/services/a/ck$1;-><init>(Lcom/amap/api/services/a/ck;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 305
    return-void
.end method

.method private b(Lcom/amap/api/services/a/bq;Ljava/io/File;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 326
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/services/a/ck;->d:Z

    .line 328
    iget-object v0, p0, Lcom/amap/api/services/a/ck;->a:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/amap/api/services/a/cj;->a(Landroid/content/Context;Lcom/amap/api/services/a/bq;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/amap/api/services/a/ck;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/services/a/ck;->e:Lcom/amap/api/services/a/be;

    invoke-static {v0, p1, v1}, Lcom/amap/api/services/a/cj;->a(Landroid/content/Context;Lcom/amap/api/services/a/bq;Lcom/amap/api/services/a/be;)Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 334
    iput-object v0, p0, Lcom/amap/api/services/a/ck;->f:Ljava/lang/String;

    .line 336
    iget-object v0, p0, Lcom/amap/api/services/a/ck;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/services/a/ck;->e:Lcom/amap/api/services/a/be;

    invoke-static {v0, v1}, Lcom/amap/api/services/a/cj;->a(Landroid/content/Context;Lcom/amap/api/services/a/be;)V

    .line 339
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 280
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "dexPath or dexOutputDir is null."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_1
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/amap/api/services/a/ck;->g:Ljava/security/PublicKey;

    if-eqz v0, :cond_0

    .line 145
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-static {}, Lcom/amap/api/services/a/co;->a()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ck;->g:Ljava/security/PublicKey;

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 344
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 346
    :try_start_0
    new-instance v0, Lcom/amap/api/services/a/bq;

    invoke-static {}, Lcom/amap/api/services/a/cm;->c()Lcom/amap/api/services/a/cm;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/amap/api/services/a/bq;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/bp;)V

    .line 348
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 350
    invoke-direct {p0, v0, v1}, Lcom/amap/api/services/a/ck;->a(Lcom/amap/api/services/a/bq;Ljava/io/File;)V

    .line 353
    iget-object v2, p0, Lcom/amap/api/services/a/ck;->e:Lcom/amap/api/services/a/be;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/amap/api/services/a/ck;->a(Lcom/amap/api/services/a/bq;Lcom/amap/api/services/a/be;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 355
    invoke-direct {p0, v0, v1}, Lcom/amap/api/services/a/ck;->b(Lcom/amap/api/services/a/bq;Ljava/io/File;)V

    .line 358
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 396
    :goto_0
    return-void

    .line 365
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/a/cj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 366
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 369
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/cj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/services/a/ck;->f:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/amap/api/services/a/ck;->a(Lcom/amap/api/services/a/bq;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 380
    iget-object v0, p0, Lcom/amap/api/services/a/ck;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/services/a/ck;->e:Lcom/amap/api/services/a/be;

    invoke-static {v0, v1}, Lcom/amap/api/services/a/cj;->a(Landroid/content/Context;Lcom/amap/api/services/a/be;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :cond_2
    :goto_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    goto :goto_0

    .line 384
    :catch_0
    move-exception v0

    .line 388
    const-string/jumbo v1, "dLoader"

    const-string/jumbo v2, "verifyD()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/co;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ck;->c:Ldalvik/system/DexFile;

    if-eqz v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/services/a/ck;->b()V

    .line 129
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ck;->c:Ldalvik/system/DexFile;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    const-string/jumbo v1, "dLoader"

    const-string/jumbo v2, "loadFile"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/co;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "load file fail"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ck;->c:Ldalvik/system/DexFile;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :catch_0
    move-exception v0

    .line 110
    const-string/jumbo v1, "dLoader"

    const-string/jumbo v2, "findCl"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/co;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    const/4 v1, 0x0

    .line 85
    :try_start_1
    iget-object v2, p0, Lcom/amap/api/services/a/ck;->b:Ljava/util/Map;

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/services/a/ck;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 93
    :goto_0
    if-eqz v0, :cond_1

    .line 107
    :goto_1
    return-object v0

    .line 87
    :catchall_0
    move-exception v0

    :goto_2
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 89
    :catch_1
    move-exception v0

    .line 90
    :try_start_6
    const-string/jumbo v2, "dLoader"

    const-string/jumbo v3, "findCl"

    invoke-static {v0, v2, v3}, Lcom/amap/api/services/a/co;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/a/ck;->c:Ldalvik/system/DexFile;

    invoke-virtual {v0, p1, p0}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 97
    if-nez v0, :cond_2

    .line 98
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 101
    :cond_2
    :try_start_7
    iget-object v2, p0, Lcom/amap/api/services/a/ck;->b:Ljava/util/Map;

    monitor-enter v2
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    .line 102
    :try_start_8
    iget-object v1, p0, Lcom/amap/api/services/a/ck;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v1
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    .line 104
    :catch_2
    move-exception v1

    .line 105
    :try_start_a
    const-string/jumbo v2, "dLoader"

    const-string/jumbo v3, "findCl"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/co;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_1

    .line 87
    :catchall_2
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2
.end method
