.class public Lcom/amap/api/mapcore/util/ba;
.super Ljava/lang/Thread;
.source "OfflineMapDataVerify.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/mapcore/util/bm;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amap/api/mapcore/util/ba;->a:Landroid/content/Context;

    .line 26
    invoke-static {p1}, Lcom/amap/api/mapcore/util/bm;->a(Landroid/content/Context;)Lcom/amap/api/mapcore/util/bm;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ba;->b:Lcom/amap/api/mapcore/util/bm;

    .line 27
    return-void
.end method

.method private a(Ljava/io/File;)Lcom/amap/api/mapcore/util/bh;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 165
    invoke-static {p1}, Lcom/amap/api/mapcore/util/en;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 166
    new-instance v1, Lcom/amap/api/mapcore/util/bh;

    invoke-direct {v1}, Lcom/amap/api/mapcore/util/bh;-><init>()V

    .line 168
    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/bh;->b(Ljava/lang/String;)V

    .line 169
    return-object v1
.end method

.method private a(Ljava/lang/String;)Lcom/amap/api/mapcore/util/bh;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 296
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ba;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/ax;->a(Landroid/content/Context;)Lcom/amap/api/mapcore/util/ax;

    move-result-object v1

    .line 297
    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore/util/ax;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 299
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/ba;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/en;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 300
    if-nez v3, :cond_1

    .line 315
    :cond_0
    return-object v0

    .line 303
    :cond_1
    array-length v4, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 304
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 305
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ".zip.tmp.dt"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 307
    invoke-direct {p0, v5}, Lcom/amap/api/mapcore/util/ba;->a(Ljava/io/File;)Lcom/amap/api/mapcore/util/bh;

    move-result-object v0

    .line 308
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bh;->d()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 303
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private a()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 233
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ba;->b:Lcom/amap/api/mapcore/util/bm;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bm;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 234
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ba;->b()Ljava/util/ArrayList;

    move-result-object v5

    .line 235
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ba;->c()Ljava/util/ArrayList;

    move-result-object v6

    .line 238
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/bh;

    .line 239
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bh;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 242
    iget v1, v0, Lcom/amap/api/mapcore/util/bh;->l:I

    const/4 v8, 0x4

    if-eq v1, v8, :cond_1

    iget v1, v0, Lcom/amap/api/mapcore/util/bh;->l:I

    const/4 v8, 0x7

    if-ne v1, v8, :cond_2

    .line 243
    :cond_1
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bh;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 244
    if-nez v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ba;->b:Lcom/amap/api/mapcore/util/bm;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/bm;->b(Lcom/amap/api/mapcore/util/bh;)V

    goto :goto_0

    .line 248
    :cond_2
    iget v1, v0, Lcom/amap/api/mapcore/util/bh;->l:I

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/amap/api/mapcore/util/bh;->l:I

    if-ne v1, v3, :cond_6

    .line 250
    :cond_3
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bh;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bh;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    move v1, v3

    .line 251
    :goto_1
    if-nez v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ba;->b:Lcom/amap/api/mapcore/util/bm;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/bm;->b(Lcom/amap/api/mapcore/util/bh;)V

    goto :goto_0

    :cond_5
    move v1, v2

    .line 250
    goto :goto_1

    .line 255
    :cond_6
    iget v1, v0, Lcom/amap/api/mapcore/util/bh;->l:I

    const/4 v8, 0x3

    if-ne v1, v8, :cond_0

    .line 259
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bh;->g()I

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bh;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bh;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    move v1, v3

    .line 261
    :goto_2
    if-nez v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ba;->b:Lcom/amap/api/mapcore/util/bm;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/bm;->b(Lcom/amap/api/mapcore/util/bh;)V

    goto/16 :goto_0

    :cond_8
    move v1, v2

    .line 260
    goto :goto_2

    .line 270
    :cond_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 271
    invoke-direct {p0, v0, v4}, Lcom/amap/api/mapcore/util/ba;->a(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 272
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/ba;->a(Ljava/lang/String;)Lcom/amap/api/mapcore/util/bh;

    move-result-object v0

    .line 273
    if-eqz v0, :cond_a

    .line 275
    iget-object v2, p0, Lcom/amap/api/mapcore/util/ba;->b:Lcom/amap/api/mapcore/util/bm;

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore/util/bm;->a(Lcom/amap/api/mapcore/util/bh;)V

    goto :goto_3

    .line 281
    :cond_b
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ba;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ax;->a(Landroid/content/Context;)Lcom/amap/api/mapcore/util/ax;

    move-result-object v0

    .line 282
    if-eqz v0, :cond_c

    .line 283
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ax;->a(Ljava/util/ArrayList;)V

    .line 288
    :cond_c
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore/util/bh;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 319
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/bh;

    .line 320
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bh;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    const/4 v0, 0x1

    .line 324
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    iget-object v3, p0, Lcom/amap/api/mapcore/util/ba;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/en;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    const-string/jumbo v3, "vmap/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 354
    :cond_0
    return-object v0

    .line 341
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 342
    if-eqz v3, :cond_0

    .line 345
    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 346
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ".dat"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 347
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 348
    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 349
    if-ltz v6, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 350
    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private c()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    iget-object v3, p0, Lcom/amap/api/mapcore/util/ba;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/en;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 384
    :cond_0
    return-object v0

    .line 371
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 372
    if-eqz v3, :cond_0

    .line 375
    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 376
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ".zip"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 377
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 378
    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 379
    if-ltz v6, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 380
    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 228
    iput-object v0, p0, Lcom/amap/api/mapcore/util/ba;->a:Landroid/content/Context;

    .line 229
    iput-object v0, p0, Lcom/amap/api/mapcore/util/ba;->b:Lcom/amap/api/mapcore/util/bm;

    .line 230
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 33
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ba;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
