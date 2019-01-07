.class public abstract Lcom/amap/api/mapcore/util/fx;
.super Ljava/lang/Object;
.source "LogProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/fx$a;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/mapcore/util/fm;

.field private b:I

.field private c:Lcom/amap/api/mapcore/util/gz;

.field private d:Lcom/amap/api/mapcore/util/gy;


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/amap/api/mapcore/util/fx;->b:I

    .line 47
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/amap/api/mapcore/util/fm;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore/util/fh;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 178
    const-string/jumbo v2, "\"sim\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"sdkversion\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/fm;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"product\":\""

    .line 179
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/fm;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"ed\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 180
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/fm;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"nt\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 181
    invoke-static {p0}, Lcom/amap/api/mapcore/util/fh;->c(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"np\":\""

    .line 183
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fh;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"mnc\":\""

    .line 184
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fh;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"ant\":\""

    .line 187
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fh;->d(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 333
    const/4 v0, 0x0

    .line 335
    :try_start_0
    invoke-static {p2}, Lcom/amap/api/mapcore/util/fn;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 336
    invoke-static {p1, v1}, Lcom/amap/api/mapcore/util/fg;->e(Landroid/content/Context;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 340
    :goto_0
    return-object v0

    .line 337
    :catch_0
    move-exception v1

    .line 338
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 317
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 318
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ",\"timestamp\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    const-string/jumbo v1, "\",\"et\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 322
    const-string/jumbo v1, "\",\"classname\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    const-string/jumbo v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    const-string/jumbo v1, "\"detail\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    invoke-virtual {v0, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 329
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/amap/api/mapcore/util/gi;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 660
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 661
    const-string/jumbo v0, "{\"pinfo\":\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/util/fx;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\",\"els\":["

    .line 662
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    const/4 v0, 0x1

    .line 664
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/gi;

    .line 665
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/gi;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/amap/api/mapcore/util/fx;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 669
    if-eqz v4, :cond_0

    const-string/jumbo v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 672
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "||"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/gi;->c()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 673
    if-eqz v1, :cond_1

    .line 674
    const/4 v1, 0x0

    .line 678
    :goto_1
    const-string/jumbo v4, "{\"log\":\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\"}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    move v0, v1

    move v1, v0

    .line 680
    goto :goto_0

    .line 676
    :cond_1
    const-string/jumbo v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 681
    :cond_2
    if-eqz v1, :cond_3

    .line 682
    const/4 v0, 0x0

    .line 685
    :goto_2
    return-object v0

    .line 684
    :cond_3
    const-string/jumbo v0, "]}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private a(Lcom/amap/api/mapcore/util/gh;I)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 546
    const/4 v0, 0x2

    .line 547
    :try_start_0
    invoke-static {p2}, Lcom/amap/api/mapcore/util/fr;->a(I)Ljava/lang/Class;

    move-result-object v1

    .line 546
    invoke-virtual {p1, v0, v1}, Lcom/amap/api/mapcore/util/gh;->a(ILjava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 548
    invoke-direct {p0, v0, p1, p2}, Lcom/amap/api/mapcore/util/fx;->a(Ljava/util/List;Lcom/amap/api/mapcore/util/gh;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    :goto_0
    return-void

    .line 549
    :catch_0
    move-exception v0

    .line 551
    const-string/jumbo v1, "LogProcessor"

    const-string/jumbo v2, "processDeleteFail"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/amap/api/mapcore/util/gh;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 257
    invoke-static {p4}, Lcom/amap/api/mapcore/util/fr;->b(I)Lcom/amap/api/mapcore/util/gi;

    move-result-object v0

    .line 259
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/gi;->a(I)V

    .line 261
    invoke-virtual {v0, p2}, Lcom/amap/api/mapcore/util/gi;->b(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0, p3}, Lcom/amap/api/mapcore/util/gi;->a(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore/util/gh;->a(Lcom/amap/api/mapcore/util/gi;)V

    .line 265
    return-void
.end method

.method private a(Ljava/util/List;Lcom/amap/api/mapcore/util/gh;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/amap/api/mapcore/util/gi;",
            ">;",
            "Lcom/amap/api/mapcore/util/gh;",
            "I)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 599
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 600
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/gi;

    .line 601
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/gi;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/util/fx;->b(Ljava/lang/String;)Z

    move-result v2

    .line 602
    if-eqz v2, :cond_0

    .line 603
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/gi;->b()Ljava/lang/String;

    move-result-object v2

    .line 604
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 603
    invoke-virtual {p2, v2, v0}, Lcom/amap/api/mapcore/util/gh;->a(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    .line 606
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/util/gi;->a(I)V

    .line 608
    invoke-virtual {p2, v0}, Lcom/amap/api/mapcore/util/gh;->b(Lcom/amap/api/mapcore/util/gi;)V

    goto :goto_0

    .line 614
    :cond_1
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/mapcore/util/gh;)Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 374
    const/4 v3, 0x0

    .line 375
    const/4 v2, 0x0

    .line 376
    const/4 v1, 0x0

    .line 378
    :try_start_0
    invoke-static {p1, p3}, Lcom/amap/api/mapcore/util/fr;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 381
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 408
    if-eqz v3, :cond_0

    .line 410
    :try_start_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_b

    .line 415
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 417
    :try_start_2
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/gy$b;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_c

    .line 422
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/gy;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 424
    :try_start_3
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/gy;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_d

    .line 382
    :cond_2
    :goto_2
    const/4 v0, 0x0

    .line 430
    :goto_3
    return v0

    .line 385
    :cond_3
    const/4 v0, 0x1

    const/4 v5, 0x1

    const-wide/16 v6, 0x5000

    :try_start_4
    invoke-static {v4, v0, v5, v6, v7}, Lcom/amap/api/mapcore/util/gy;->a(Ljava/io/File;IIJ)Lcom/amap/api/mapcore/util/gy;

    move-result-object v2

    .line 386
    invoke-virtual {p0, p5}, Lcom/amap/api/mapcore/util/fx;->a(Lcom/amap/api/mapcore/util/gh;)Lcom/amap/api/mapcore/util/gz;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore/util/gy;->a(Lcom/amap/api/mapcore/util/gz;)V

    .line 387
    invoke-virtual {v2, p2}, Lcom/amap/api/mapcore/util/gy;->a(Ljava/lang/String;)Lcom/amap/api/mapcore/util/gy$b;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    .line 389
    if-eqz v1, :cond_7

    .line 408
    if-eqz v3, :cond_4

    .line 410
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_e

    .line 415
    :cond_4
    :goto_4
    if-eqz v1, :cond_5

    .line 417
    :try_start_6
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/gy$b;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_f

    .line 422
    :cond_5
    :goto_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/gy;->a()Z

    move-result v0

    if-nez v0, :cond_6

    .line 424
    :try_start_7
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/gy;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_10

    .line 390
    :cond_6
    :goto_6
    const/4 v0, 0x0

    goto :goto_3

    .line 393
    :cond_7
    :try_start_8
    invoke-static {p4}, Lcom/amap/api/mapcore/util/fn;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 395
    invoke-virtual {v2, p2}, Lcom/amap/api/mapcore/util/gy;->b(Ljava/lang/String;)Lcom/amap/api/mapcore/util/gy$a;

    move-result-object v4

    .line 396
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/amap/api/mapcore/util/gy$a;->a(I)Ljava/io/OutputStream;

    move-result-object v3

    .line 397
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 398
    invoke-virtual {v4}, Lcom/amap/api/mapcore/util/gy$a;->a()V

    .line 399
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/gy;->b()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 408
    if-eqz v3, :cond_8

    .line 410
    :try_start_9
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_11

    .line 415
    :cond_8
    :goto_7
    if-eqz v1, :cond_9

    .line 417
    :try_start_a
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/gy$b;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_12

    .line 422
    :cond_9
    :goto_8
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/gy;->a()Z

    move-result v0

    if-nez v0, :cond_a

    .line 424
    :try_start_b
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/gy;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_13

    .line 401
    :cond_a
    :goto_9
    const/4 v0, 0x1

    goto :goto_3

    .line 402
    :catch_0
    move-exception v0

    .line 403
    :try_start_c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 408
    if-eqz v3, :cond_b

    .line 410
    :try_start_d
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6

    .line 415
    :cond_b
    :goto_a
    if-eqz v1, :cond_c

    .line 417
    :try_start_e
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/gy$b;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_7

    .line 422
    :cond_c
    :goto_b
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/gy;->a()Z

    move-result v0

    if-nez v0, :cond_d

    .line 424
    :try_start_f
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/gy;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_8

    .line 430
    :cond_d
    :goto_c
    const/4 v0, 0x0

    goto :goto_3

    .line 404
    :catch_1
    move-exception v0

    .line 406
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 408
    if-eqz v3, :cond_e

    .line 410
    :try_start_11
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_9

    .line 415
    :cond_e
    :goto_d
    if-eqz v1, :cond_f

    .line 417
    :try_start_12
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/gy$b;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_a

    .line 422
    :cond_f
    :goto_e
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/gy;->a()Z

    move-result v0

    if-nez v0, :cond_d

    .line 424
    :try_start_13
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/gy;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_2

    goto :goto_c

    .line 425
    :catch_2
    move-exception v0

    .line 426
    :goto_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c

    .line 408
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_10

    .line 410
    :try_start_14
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_3

    .line 415
    :cond_10
    :goto_10
    if-eqz v1, :cond_11

    .line 417
    :try_start_15
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/gy$b;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_4

    .line 422
    :cond_11
    :goto_11
    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/gy;->a()Z

    move-result v1

    if-nez v1, :cond_12

    .line 424
    :try_start_16
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/gy;->close()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_5

    .line 408
    :cond_12
    :goto_12
    throw v0

    .line 411
    :catch_3
    move-exception v3

    .line 412
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_10

    .line 418
    :catch_4
    move-exception v1

    .line 419
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_11

    .line 425
    :catch_5
    move-exception v1

    .line 426
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_12

    .line 411
    :catch_6
    move-exception v0

    .line 412
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a

    .line 418
    :catch_7
    move-exception v0

    .line 419
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b

    .line 425
    :catch_8
    move-exception v0

    goto :goto_f

    .line 411
    :catch_9
    move-exception v0

    .line 412
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_d

    .line 418
    :catch_a
    move-exception v0

    .line 419
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e

    .line 411
    :catch_b
    move-exception v0

    .line 412
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 418
    :catch_c
    move-exception v0

    .line 419
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 425
    :catch_d
    move-exception v0

    .line 426
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 411
    :catch_e
    move-exception v0

    .line 412
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    .line 418
    :catch_f
    move-exception v0

    .line 419
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_5

    .line 425
    :catch_10
    move-exception v0

    .line 426
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_6

    .line 411
    :catch_11
    move-exception v0

    .line 412
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_7

    .line 418
    :catch_12
    move-exception v0

    .line 419
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_8

    .line 425
    :catch_13
    move-exception v0

    .line 426
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_9
.end method

.method public static a([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 436
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 449
    :cond_0
    :goto_0
    return v0

    .line 439
    :cond_1
    :try_start_0
    const-string/jumbo v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 440
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 441
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 442
    invoke-static {p0, v4}, Lcom/amap/api/mapcore/util/fx;->b([Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    .line 443
    const/4 v0, 0x1

    goto :goto_0

    .line 440
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 446
    :catch_0
    move-exception v1

    .line 447
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Lcom/amap/api/mapcore/util/gy;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 758
    .line 760
    :try_start_0
    invoke-static {p1, p2}, Lcom/amap/api/mapcore/util/fr;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 761
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 762
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 763
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 776
    :goto_0
    return-object v0

    .line 767
    :cond_0
    const/4 v1, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x5000

    invoke-static {v2, v1, v3, v4, v5}, Lcom/amap/api/mapcore/util/gy;->a(Ljava/io/File;IIJ)Lcom/amap/api/mapcore/util/gy;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 768
    :catch_0
    move-exception v1

    .line 769
    const-string/jumbo v2, "LogProcessor"

    const-string/jumbo v3, "initDiskLru"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 771
    :catch_1
    move-exception v1

    .line 772
    const-string/jumbo v2, "LogProcessor"

    const-string/jumbo v3, "initDiskLru"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 786
    invoke-static {p0}, Lcom/amap/api/mapcore/util/fn;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 518
    iget-object v1, p0, Lcom/amap/api/mapcore/util/fx;->d:Lcom/amap/api/mapcore/util/gy;

    if-nez v1, :cond_0

    .line 528
    :goto_0
    return v0

    .line 523
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/fx;->d:Lcom/amap/api/mapcore/util/gy;

    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore/util/gy;->c(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 524
    :catch_0
    move-exception v1

    .line 526
    const-string/jumbo v2, "LogUpdateProcessor"

    const-string/jumbo v3, "deleteLogData"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 452
    .line 454
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 467
    :cond_0
    :goto_0
    return v0

    .line 457
    :cond_1
    :try_start_0
    array-length v2, p0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, p0, v1

    .line 458
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 459
    const-string/jumbo v4, "at "

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, ")"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 461
    const/4 v0, 0x1

    goto :goto_0

    .line 457
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 464
    :catch_0
    move-exception v1

    .line 465
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 558
    .line 560
    invoke-static {p1}, Lcom/amap/api/mapcore/util/fn;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 559
    invoke-static {v2}, Lcom/amap/api/mapcore/util/fn;->c([B)[B

    move-result-object v2

    .line 561
    new-instance v3, Lcom/amap/api/mapcore/util/fs;

    invoke-direct {v3, v2}, Lcom/amap/api/mapcore/util/fs;-><init>([B)V

    .line 563
    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore/util/hc;->a()Lcom/amap/api/mapcore/util/hc;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore/util/hc;->b(Lcom/amap/api/mapcore/util/hi;)[B

    move-result-object v2

    .line 565
    if-nez v2, :cond_1

    .line 594
    :cond_0
    :goto_0
    return v0

    .line 568
    :cond_1
    invoke-static {v2}, Lcom/amap/api/mapcore/util/fn;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Lcom/amap/api/mapcore/util/fc; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 570
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 571
    const-string/jumbo v2, "code"

    .line 572
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 573
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/amap/api/mapcore/util/fc; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    .line 576
    :catch_0
    move-exception v2

    .line 579
    :try_start_2
    const-string/jumbo v3, "LogProcessor"

    const-string/jumbo v4, "processUpdate"

    invoke-static {v2, v3, v4}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/amap/api/mapcore/util/fc; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v1

    .line 593
    goto :goto_0

    .line 584
    :catch_1
    move-exception v2

    .line 585
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/fc;->b()I

    move-result v3

    const/16 v4, 0x1b

    if-ne v3, v4, :cond_2

    .line 591
    :goto_1
    const-string/jumbo v1, "LogProcessor"

    const-string/jumbo v3, "processUpdate"

    invoke-static {v2, v1, v3}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 588
    goto :goto_1
.end method

.method private c(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 347
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 348
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/fn;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 350
    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 622
    :try_start_0
    const-string/jumbo v0, "\"key\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fd;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"platform\":\"android\",\"diu\":\""

    .line 623
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fh;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"pkg\":\""

    .line 624
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fd;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"model\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 625
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"appname\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fd;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"appversion\":\""

    .line 626
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fd;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"sysversion\":\""

    .line 627
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 628
    :catch_0
    move-exception v0

    .line 630
    const-string/jumbo v2, "CInfo"

    const-string/jumbo v3, "getPublicJSONInfo"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 689
    const/4 v1, 0x0

    .line 691
    const/4 v2, 0x0

    .line 694
    :try_start_0
    iget-object v3, p0, Lcom/amap/api/mapcore/util/fx;->d:Lcom/amap/api/mapcore/util/gy;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    .line 716
    if-eqz v0, :cond_0

    .line 718
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 725
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 727
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    .line 735
    :cond_1
    :goto_1
    return-object v0

    .line 697
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/amap/api/mapcore/util/fx;->d:Lcom/amap/api/mapcore/util/gy;

    invoke-virtual {v3, p1}, Lcom/amap/api/mapcore/util/gy;->a(Ljava/lang/String;)Lcom/amap/api/mapcore/util/gy$b;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    .line 698
    if-nez v3, :cond_4

    .line 716
    if-eqz v0, :cond_3

    .line 718
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    .line 725
    :cond_3
    :goto_2
    if-eqz v0, :cond_1

    .line 727
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 728
    :catch_0
    move-exception v1

    .line 729
    const-string/jumbo v2, "LogProcessor"

    const-string/jumbo v3, "readLog2"

    .line 730
    :goto_3
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 701
    :cond_4
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {v3, v1}, Lcom/amap/api/mapcore/util/gy$b;->a(I)Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v3

    .line 703
    :try_start_7
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 704
    const/16 v1, 0x400

    :try_start_8
    new-array v1, v1, [B

    .line 705
    :goto_4
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    .line 706
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    .line 711
    :catch_1
    move-exception v1

    .line 712
    :goto_5
    :try_start_9
    const-string/jumbo v4, "LogProcessor"

    const-string/jumbo v5, "readLog"

    invoke-static {v1, v4, v5}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 716
    if-eqz v2, :cond_5

    .line 718
    :try_start_a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 725
    :cond_5
    :goto_6
    if-eqz v3, :cond_1

    .line 727
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_1

    .line 728
    :catch_2
    move-exception v1

    .line 729
    const-string/jumbo v2, "LogProcessor"

    const-string/jumbo v3, "readLog2"

    goto :goto_3

    .line 709
    :cond_6
    :try_start_c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/mapcore/util/fn;->a([B)Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result-object v0

    .line 716
    if-eqz v2, :cond_7

    .line 718
    :try_start_d
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 725
    :cond_7
    :goto_7
    if-eqz v3, :cond_1

    .line 727
    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    goto :goto_1

    .line 728
    :catch_3
    move-exception v1

    .line 729
    const-string/jumbo v2, "LogProcessor"

    const-string/jumbo v3, "readLog2"

    goto :goto_3

    .line 716
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_8
    if-eqz v2, :cond_8

    .line 718
    :try_start_f
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    .line 725
    :cond_8
    :goto_9
    if-eqz v3, :cond_9

    .line 727
    :try_start_10
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    .line 716
    :cond_9
    :goto_a
    throw v0

    .line 719
    :catch_4
    move-exception v1

    .line 720
    const-string/jumbo v2, "LogProcessor"

    const-string/jumbo v4, "readLog1"

    .line 721
    invoke-static {v1, v2, v4}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 728
    :catch_5
    move-exception v1

    .line 729
    const-string/jumbo v2, "LogProcessor"

    const-string/jumbo v3, "readLog2"

    .line 730
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 719
    :catch_6
    move-exception v1

    .line 720
    const-string/jumbo v2, "LogProcessor"

    const-string/jumbo v4, "readLog1"

    .line 721
    invoke-static {v1, v2, v4}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 719
    :catch_7
    move-exception v2

    .line 720
    const-string/jumbo v3, "LogProcessor"

    const-string/jumbo v4, "readLog1"

    .line 721
    invoke-static {v2, v3, v4}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 728
    :catch_8
    move-exception v1

    .line 729
    const-string/jumbo v2, "LogProcessor"

    const-string/jumbo v3, "readLog2"

    goto/16 :goto_3

    .line 719
    :catch_9
    move-exception v2

    .line 720
    const-string/jumbo v3, "LogProcessor"

    const-string/jumbo v4, "readLog1"

    .line 721
    invoke-static {v2, v3, v4}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 719
    :catch_a
    move-exception v1

    .line 720
    const-string/jumbo v2, "LogProcessor"

    const-string/jumbo v4, "readLog1"

    .line 721
    invoke-static {v1, v2, v4}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 716
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_8

    .line 711
    :catch_b
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto/16 :goto_5

    :catch_c
    move-exception v1

    move-object v2, v0

    goto/16 :goto_5
.end method

.method private e(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/fx;->a()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/util/fx;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/amap/api/mapcore/util/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fx;->d:Lcom/amap/api/mapcore/util/gy;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const-string/jumbo v1, "LogProcessor"

    const-string/jumbo v2, "LogUpDateProcessor"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private f(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore/util/fm;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 242
    const/4 v1, 0x0

    .line 244
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 245
    :try_start_1
    new-instance v0, Lcom/amap/api/mapcore/util/gj;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3}, Lcom/amap/api/mapcore/util/gj;-><init>(Landroid/content/Context;Z)V

    .line 247
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/gj;->a()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 248
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 252
    :goto_0
    return-object v0

    .line 248
    :catchall_0
    move-exception v0

    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 249
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 250
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 249
    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_2

    .line 248
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1
.end method

.method private g(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 636
    .line 640
    :try_start_0
    invoke-static {p1}, Lcom/amap/api/mapcore/util/fx;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 641
    const-string/jumbo v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 653
    :goto_0
    return-object v0

    .line 644
    :cond_0
    invoke-static {v1}, Lcom/amap/api/mapcore/util/fn;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 645
    invoke-static {p1, v1}, Lcom/amap/api/mapcore/util/fg;->b(Landroid/content/Context;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 647
    :catch_0
    move-exception v1

    .line 649
    const-string/jumbo v2, "LogProcessor"

    const-string/jumbo v3, "getPublicInfo"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/amap/api/mapcore/util/gh;)Lcom/amap/api/mapcore/util/gz;
    .locals 1

    .prologue
    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fx;->c:Lcom/amap/api/mapcore/util/gz;

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Lcom/amap/api/mapcore/util/fx$a;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/util/fx$a;-><init>(Lcom/amap/api/mapcore/util/fx;Lcom/amap/api/mapcore/util/gh;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fx;->c:Lcom/amap/api/mapcore/util/gz;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fx;->c:Lcom/amap/api/mapcore/util/gz;

    return-object v0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 533
    iget v0, p0, Lcom/amap/api/mapcore/util/fx;->b:I

    invoke-static {v0}, Lcom/amap/api/mapcore/util/fr;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    invoke-static {p1}, Lcom/amap/api/mapcore/util/fj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    return-object v0
.end method

.method protected a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 354
    const/4 v0, 0x0

    .line 356
    :try_start_0
    invoke-static {p1}, Lcom/amap/api/mapcore/util/fx;->b(Ljava/lang/Throwable;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 361
    :goto_0
    return-object v0

    .line 358
    :catch_0
    move-exception v1

    .line 359
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected abstract a(Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore/util/fm;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method a(Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/fx;->f(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-virtual {p0, p2}, Lcom/amap/api/mapcore/util/fx;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    .line 129
    if-eqz v4, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore/util/fm;

    .line 141
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/fm;->f()[Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-static {v2, v4}, Lcom/amap/api/mapcore/util/fx;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 143
    const-string/jumbo v0, "\n"

    const-string/jumbo v2, "<br/>"

    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    .line 144
    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/mapcore/util/fx;->a(Lcom/amap/api/mapcore/util/fm;Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_3
    const-string/jumbo v0, "com.amap.api.col"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore/util/fm$a;

    const-string/jumbo v1, "collection"

    const-string/jumbo v2, "1.0"

    const-string/jumbo v3, "AMap_collection_1.0"

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/fm$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "com.amap.api.collection"

    aput-object v3, v1, v2

    .line 158
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/fm$a;->a([Ljava/lang/String;)Lcom/amap/api/mapcore/util/fm$a;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/fm$a;->a()Lcom/amap/api/mapcore/util/fm;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    .line 160
    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/mapcore/util/fx;->a(Lcom/amap/api/mapcore/util/fm;Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amap/api/mapcore/util/fc; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/fc;->printStackTrace()V

    goto :goto_0
.end method

.method protected a(Lcom/amap/api/mapcore/util/fm;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/amap/api/mapcore/util/fx;->a:Lcom/amap/api/mapcore/util/fm;

    .line 239
    return-void
.end method

.method a(Lcom/amap/api/mapcore/util/fm;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    .prologue
    .line 77
    invoke-virtual/range {p0 .. p1}, Lcom/amap/api/mapcore/util/fx;->a(Lcom/amap/api/mapcore/util/fm;)V

    .line 78
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/mapcore/util/fx;->d()Ljava/lang/String;

    move-result-object v5

    .line 79
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/fx;->a(Landroid/content/Context;Lcom/amap/api/mapcore/util/fm;)Ljava/lang/String;

    move-result-object v4

    .line 80
    invoke-static/range {p2 .. p2}, Lcom/amap/api/mapcore/util/fd;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 82
    if-eqz p3, :cond_0

    const-string/jumbo v2, ""

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore/util/fx;->b()I

    move-result v6

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    if-eqz p5, :cond_2

    .line 88
    const-string/jumbo v7, "class:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :cond_2
    if-eqz p6, :cond_3

    .line 92
    const-string/jumbo v7, " method:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "$<br/>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :cond_3
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/fx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v7, p3

    .line 98
    invoke-direct/range {v2 .. v8}, Lcom/amap/api/mapcore/util/fx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    if-eqz v2, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 103
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore/util/fx;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore/util/fx;->a()Ljava/lang/String;

    move-result-object v10

    .line 108
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    monitor-enter v3

    .line 109
    :try_start_0
    new-instance v12, Lcom/amap/api/mapcore/util/gh;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Lcom/amap/api/mapcore/util/gh;-><init>(Landroid/content/Context;)V

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    .line 110
    invoke-direct/range {v7 .. v12}, Lcom/amap/api/mapcore/util/fx;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/mapcore/util/gh;)Z

    move-result v16

    .line 112
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/mapcore/util/fm;->a()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v11, p0

    move-object v14, v9

    move v15, v6

    invoke-direct/range {v11 .. v16}, Lcom/amap/api/mapcore/util/fx;->a(Lcom/amap/api/mapcore/util/gh;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 114
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method a(Lcom/amap/api/mapcore/util/fm;Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    invoke-direct {p0, p3}, Lcom/amap/api/mapcore/util/fx;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/mapcore/util/fx;->a(Lcom/amap/api/mapcore/util/fm;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method protected abstract a(Landroid/content/Context;)Z
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Lcom/amap/api/mapcore/util/fx;->b:I

    return v0
.end method

.method b(Landroid/content/Context;)V
    .locals 17

    .prologue
    .line 196
    invoke-direct/range {p0 .. p1}, Lcom/amap/api/mapcore/util/fx;->f(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 197
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/util/fx;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    .line 201
    if-eqz v8, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 204
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/mapcore/util/fx;->d()Ljava/lang/String;

    move-result-object v5

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/fx;->a:Lcom/amap/api/mapcore/util/fm;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/amap/api/mapcore/util/fx;->a(Landroid/content/Context;Lcom/amap/api/mapcore/util/fm;)Ljava/lang/String;

    move-result-object v4

    .line 206
    invoke-static/range {p1 .. p1}, Lcom/amap/api/mapcore/util/fd;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 207
    const-string/jumbo v7, "ANR"

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore/util/fx;->b()I

    move-result v6

    move-object/from16 v2, p0

    .line 209
    invoke-direct/range {v2 .. v8}, Lcom/amap/api/mapcore/util/fx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 211
    if-eqz v2, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 218
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/amap/api/mapcore/util/fx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 219
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore/util/fx;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore/util/fx;->a()Ljava/lang/String;

    move-result-object v10

    .line 221
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    monitor-enter v3

    .line 222
    :try_start_0
    new-instance v12, Lcom/amap/api/mapcore/util/gh;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/amap/api/mapcore/util/gh;-><init>(Landroid/content/Context;)V

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 223
    invoke-direct/range {v7 .. v12}, Lcom/amap/api/mapcore/util/fx;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/mapcore/util/gh;)Z

    move-result v16

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/fx;->a:Lcom/amap/api/mapcore/util/fm;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/fm;->a()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v11, p0

    move-object v14, v9

    move v15, v6

    invoke-direct/range {v11 .. v16}, Lcom/amap/api/mapcore/util/fx;->a(Lcom/amap/api/mapcore/util/gh;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 227
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 741
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fx;->d:Lcom/amap/api/mapcore/util/gy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fx;->d:Lcom/amap/api/mapcore/util/gy;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/gy;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fx;->d:Lcom/amap/api/mapcore/util/gy;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/gy;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 751
    :cond_0
    :goto_0
    return-void

    .line 744
    :catch_0
    move-exception v0

    .line 745
    const-string/jumbo v1, "LogProcessor"

    const-string/jumbo v2, "closeDiskLru"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 747
    :catch_1
    move-exception v0

    .line 748
    const-string/jumbo v1, "LogProcessor"

    const-string/jumbo v2, "closeDiskLru"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method c(Landroid/content/Context;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 474
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/fx;->e(Landroid/content/Context;)V

    .line 476
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/fx;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    :goto_0
    return-void

    .line 482
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :try_start_1
    new-instance v0, Lcom/amap/api/mapcore/util/gh;

    invoke-direct {v0, p1}, Lcom/amap/api/mapcore/util/gh;-><init>(Landroid/content/Context;)V

    .line 485
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/fx;->b()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/amap/api/mapcore/util/fx;->a(Lcom/amap/api/mapcore/util/gh;I)V

    .line 491
    const/4 v2, 0x0

    .line 492
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/fx;->b()I

    move-result v3

    invoke-static {v3}, Lcom/amap/api/mapcore/util/fr;->a(I)Ljava/lang/Class;

    move-result-object v3

    .line 491
    invoke-virtual {v0, v2, v3}, Lcom/amap/api/mapcore/util/gh;->a(ILjava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 494
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 495
    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 507
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 509
    :catch_0
    move-exception v0

    .line 511
    const-string/jumbo v1, "LogProcessor"

    const-string/jumbo v2, "processUpdateLog"

    .line 512
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 498
    :cond_2
    :try_start_3
    invoke-direct {p0, v2, p1}, Lcom/amap/api/mapcore/util/fx;->a(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 499
    if-nez v3, :cond_3

    .line 500
    monitor-exit v1

    goto :goto_0

    .line 502
    :cond_3
    invoke-direct {p0, v3}, Lcom/amap/api/mapcore/util/fx;->c(Ljava/lang/String;)I

    move-result v3

    .line 503
    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 504
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/fx;->b()I

    move-result v3

    invoke-direct {p0, v2, v0, v3}, Lcom/amap/api/mapcore/util/fx;->a(Ljava/util/List;Lcom/amap/api/mapcore/util/gh;I)V

    .line 507
    :cond_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
