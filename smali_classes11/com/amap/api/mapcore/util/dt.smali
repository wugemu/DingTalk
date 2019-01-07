.class public Lcom/amap/api/mapcore/util/dt;
.super Ljava/lang/Object;
.source "StyleParser.java"


# static fields
.field public static final a:Ljava/lang/Integer;


# instance fields
.field private b:Landroid/content/Context;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0x457

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/util/dt;->a:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/dt;->c:I

    .line 43
    iput-object p1, p0, Lcom/amap/api/mapcore/util/dt;->b:Landroid/content/Context;

    .line 44
    return-void
.end method

.method private a(I)I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 661
    iget v0, p0, Lcom/amap/api/mapcore/util/dt;->c:I

    .line 662
    iget v1, p0, Lcom/amap/api/mapcore/util/dt;->c:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/amap/api/mapcore/util/dt;->c:I

    .line 663
    return v0
.end method

.method private static a([BII)Ljava/lang/String;
    .locals 2

    .prologue
    .line 668
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "UTF-8"

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    :goto_0
    return-object v0

    .line 669
    :catch_0
    move-exception v0

    .line 670
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 673
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/amap/api/mapcore/util/dp;Lcom/amap/api/mapcore/util/ds;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 228
    iget-object v0, p2, Lcom/amap/api/mapcore/util/ds;->n:Ljava/lang/String;

    iput-object v0, p1, Lcom/amap/api/mapcore/util/dp;->a:Ljava/lang/String;

    .line 229
    iget-object v0, p2, Lcom/amap/api/mapcore/util/ds;->o:Ljava/lang/String;

    const-string/jumbo v1, "geometry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p2, Lcom/amap/api/mapcore/util/ds;->p:Lcom/amap/api/mapcore/util/du;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/du;->a:Ljava/lang/String;

    iput-object v0, p1, Lcom/amap/api/mapcore/util/dp;->b:Ljava/lang/String;

    .line 231
    iget-object v0, p2, Lcom/amap/api/mapcore/util/ds;->p:Lcom/amap/api/mapcore/util/du;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/du;->b:Ljava/lang/String;

    iput-object v0, p1, Lcom/amap/api/mapcore/util/dp;->c:Ljava/lang/String;

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v0, p2, Lcom/amap/api/mapcore/util/ds;->o:Ljava/lang/String;

    const-string/jumbo v1, "geometry.fill"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p2, Lcom/amap/api/mapcore/util/ds;->p:Lcom/amap/api/mapcore/util/du;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/du;->a:Ljava/lang/String;

    iput-object v0, p1, Lcom/amap/api/mapcore/util/dp;->d:Ljava/lang/String;

    .line 235
    iget-object v0, p2, Lcom/amap/api/mapcore/util/ds;->p:Lcom/amap/api/mapcore/util/du;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/du;->b:Ljava/lang/String;

    iput-object v0, p1, Lcom/amap/api/mapcore/util/dp;->e:Ljava/lang/String;

    goto :goto_0

    .line 236
    :cond_2
    iget-object v0, p2, Lcom/amap/api/mapcore/util/ds;->o:Ljava/lang/String;

    const-string/jumbo v1, "geometry.stroke"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 237
    iget-object v0, p2, Lcom/amap/api/mapcore/util/ds;->p:Lcom/amap/api/mapcore/util/du;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/du;->a:Ljava/lang/String;

    iput-object v0, p1, Lcom/amap/api/mapcore/util/dp;->f:Ljava/lang/String;

    .line 238
    iget-object v0, p2, Lcom/amap/api/mapcore/util/ds;->p:Lcom/amap/api/mapcore/util/du;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/du;->b:Ljava/lang/String;

    iput-object v0, p1, Lcom/amap/api/mapcore/util/dp;->g:Ljava/lang/String;

    goto :goto_0

    .line 239
    :cond_3
    iget-object v0, p2, Lcom/amap/api/mapcore/util/ds;->o:Ljava/lang/String;

    const-string/jumbo v1, "labels.text.fill"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 240
    iget-object v0, p2, Lcom/amap/api/mapcore/util/ds;->p:Lcom/amap/api/mapcore/util/du;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/du;->a:Ljava/lang/String;

    iput-object v0, p1, Lcom/amap/api/mapcore/util/dp;->h:Ljava/lang/String;

    .line 241
    iget-object v0, p2, Lcom/amap/api/mapcore/util/ds;->p:Lcom/amap/api/mapcore/util/du;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/du;->b:Ljava/lang/String;

    iput-object v0, p1, Lcom/amap/api/mapcore/util/dp;->i:Ljava/lang/String;

    goto :goto_0

    .line 242
    :cond_4
    iget-object v0, p2, Lcom/amap/api/mapcore/util/ds;->o:Ljava/lang/String;

    const-string/jumbo v1, "labels.text.stroke"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p2, Lcom/amap/api/mapcore/util/ds;->p:Lcom/amap/api/mapcore/util/du;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/du;->a:Ljava/lang/String;

    iput-object v0, p1, Lcom/amap/api/mapcore/util/dp;->j:Ljava/lang/String;

    .line 244
    iget-object v0, p2, Lcom/amap/api/mapcore/util/ds;->p:Lcom/amap/api/mapcore/util/du;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/du;->b:Ljava/lang/String;

    iput-object v0, p1, Lcom/amap/api/mapcore/util/dp;->k:Ljava/lang/String;

    goto :goto_0
.end method

.method private a([BILjava/lang/String;)V
    .locals 1

    .prologue
    .line 683
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    :try_start_0
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 689
    if-eqz v0, :cond_0

    .line 690
    invoke-static {p1, p2, v0}, Lcom/autonavi/amap/mapcore/Convert;->writeInt([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 692
    :catch_0
    move-exception v0

    .line 693
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private a([BLcom/amap/api/mapcore/util/dp;)V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x4

    const/4 v1, 0x0

    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "-------------------  readPoiStyleItem start "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/amap/api/mapcore/util/dp;->a:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "------------------------ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/dt;->c(Ljava/lang/String;)V

    .line 343
    invoke-direct {p0, v8}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v3

    .line 344
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v4

    .line 345
    invoke-direct {p0, v9}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->readOneByteToInt([BI)I

    move-result v5

    .line 347
    const-string/jumbo v0, ""

    move-object v2, v0

    move v0, v1

    .line 348
    :goto_1
    if-ge v0, v5, :cond_1

    .line 349
    invoke-direct {p0, v9}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v6

    invoke-static {p1, v6}, Lcom/autonavi/amap/mapcore/Convert;->readOneByteToInt([BI)I

    move-result v6

    .line 350
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 348
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 342
    :cond_0
    const-string/jumbo v0, "null"

    goto :goto_0

    .line 353
    :cond_1
    invoke-direct {p0, v10}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getShort([BI)S

    .line 354
    invoke-direct {p0, v9}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->readOneByteToInt([BI)I

    .line 355
    invoke-direct {p0, v9}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->readOneByteToInt([BI)I

    .line 356
    invoke-direct {p0, v10}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getShort([BI)S

    .line 360
    invoke-direct {p0, v8}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    .line 361
    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 364
    invoke-direct {p0, v8}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v2

    .line 365
    invoke-static {p1, v2}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 367
    if-eqz p2, :cond_2

    .line 369
    iget-object v5, p2, Lcom/amap/api/mapcore/util/dp;->h:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v5}, Lcom/amap/api/mapcore/util/dt;->a([BILjava/lang/String;)V

    .line 371
    iget-object v0, p2, Lcom/amap/api/mapcore/util/dp;->j:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v0}, Lcom/amap/api/mapcore/util/dt;->a([BILjava/lang/String;)V

    .line 374
    :cond_2
    invoke-direct {p0, v8}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 378
    const/4 v0, -0x1

    .line 382
    add-int v2, v4, v3

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v5

    if-le v2, v5, :cond_3

    .line 383
    invoke-direct {p0, v9}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v2

    invoke-static {p1, v2}, Lcom/autonavi/amap/mapcore/Convert;->readOneByteToInt([BI)I

    .line 386
    :cond_3
    add-int v2, v4, v3

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v5

    if-le v2, v5, :cond_4

    .line 387
    invoke-direct {p0, v8}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v2

    invoke-static {p1, v2}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 390
    :cond_4
    add-int v2, v4, v3

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v5

    if-le v2, v5, :cond_5

    .line 391
    invoke-direct {p0, v8}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v0

    .line 394
    :cond_5
    add-int v2, v4, v3

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v5

    if-le v2, v5, :cond_6

    .line 395
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v2

    invoke-static {p1, v2, v0}, Lcom/amap/api/mapcore/util/dt;->a([BII)Ljava/lang/String;

    .line 398
    :cond_6
    add-int v0, v4, v3

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v1

    if-le v0, v1, :cond_7

    .line 399
    invoke-direct {p0, v8}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 401
    :cond_7
    return-void
.end method

.method private b([BLcom/amap/api/mapcore/util/dp;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x4

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "-------------------  readLineStyleRecord start "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/amap/api/mapcore/util/dp;->a:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "------------------------ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/dt;->c(Ljava/lang/String;)V

    .line 407
    invoke-direct {p0, v6}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 408
    invoke-direct {p0, v5}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->readOneByteToInt([BI)I

    move-result v2

    .line 410
    const-string/jumbo v1, ""

    .line 411
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    .line 412
    invoke-direct {p0, v5}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v3

    invoke-static {p1, v3}, Lcom/autonavi/amap/mapcore/Convert;->readOneByteToInt([BI)I

    move-result v3

    .line 413
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 411
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 405
    :cond_0
    const-string/jumbo v0, "null"

    goto :goto_0

    .line 416
    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getShort([BI)S

    .line 417
    invoke-direct {p0, v5}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->readOneByteToInt([BI)I

    .line 418
    invoke-direct {p0, v5}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->readOneByteToInt([BI)I

    .line 419
    invoke-direct {p0, v5}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->readOneByteToInt([BI)I

    .line 420
    invoke-direct {p0, v5}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->readOneByteToInt([BI)I

    .line 421
    invoke-direct {p0, v5}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->readOneByteToInt([BI)I

    .line 427
    invoke-direct {p0, v6}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    .line 428
    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 431
    invoke-direct {p0, v6}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v1

    .line 432
    invoke-static {p1, v1}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 435
    invoke-direct {p0, v6}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v2

    .line 436
    invoke-static {p1, v2}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 439
    invoke-direct {p0, v6}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v3

    .line 440
    invoke-static {p1, v3}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 443
    if-eqz p2, :cond_2

    .line 444
    iget-object v4, p2, Lcom/amap/api/mapcore/util/dp;->a:Ljava/lang/String;

    const-string/jumbo v5, "local"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 447
    iget-object v4, p2, Lcom/amap/api/mapcore/util/dp;->d:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v4}, Lcom/amap/api/mapcore/util/dt;->a([BILjava/lang/String;)V

    .line 449
    iget-object v0, p2, Lcom/amap/api/mapcore/util/dp;->f:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v0}, Lcom/amap/api/mapcore/util/dt;->a([BILjava/lang/String;)V

    .line 451
    iget-object v0, p2, Lcom/amap/api/mapcore/util/dp;->h:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v0}, Lcom/amap/api/mapcore/util/dt;->a([BILjava/lang/String;)V

    .line 453
    iget-object v0, p2, Lcom/amap/api/mapcore/util/dp;->j:Ljava/lang/String;

    invoke-direct {p0, p1, v3, v0}, Lcom/amap/api/mapcore/util/dt;->a([BILjava/lang/String;)V

    .line 457
    :cond_2
    invoke-direct {p0, v6}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 458
    invoke-direct {p0, v6}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 459
    invoke-direct {p0, v6}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 461
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 699
    return-void
.end method

.method private c([BLcom/amap/api/mapcore/util/dp;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x4

    const/4 v1, 0x0

    .line 465
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "-------------------  readRegionStyleRecord start "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/amap/api/mapcore/util/dp;->a:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "------------------------ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/dt;->c(Ljava/lang/String;)V

    .line 467
    invoke-direct {p0, v8}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v3

    .line 469
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v4

    .line 471
    invoke-direct {p0, v9}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->readOneByteToInt([BI)I

    move-result v5

    .line 473
    const-string/jumbo v0, ""

    move-object v2, v0

    move v0, v1

    .line 474
    :goto_1
    if-ge v0, v5, :cond_1

    .line 475
    invoke-direct {p0, v9}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v6

    invoke-static {p1, v6}, Lcom/autonavi/amap/mapcore/Convert;->readOneByteToInt([BI)I

    move-result v6

    .line 476
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 474
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 465
    :cond_0
    const-string/jumbo v0, "null"

    goto :goto_0

    .line 479
    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getShort([BI)S

    .line 480
    invoke-direct {p0, v9}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->readOneByteToInt([BI)I

    .line 483
    invoke-direct {p0, v8}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    .line 484
    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 487
    if-eqz p2, :cond_2

    .line 489
    iget-object v2, p2, Lcom/amap/api/mapcore/util/dp;->d:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v2}, Lcom/amap/api/mapcore/util/dt;->a([BILjava/lang/String;)V

    .line 496
    :cond_2
    add-int v0, v4, v3

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v2

    if-le v0, v2, :cond_3

    .line 497
    invoke-direct {p0, v8}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 500
    :cond_3
    add-int v0, v4, v3

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v2

    if-le v0, v2, :cond_4

    .line 501
    invoke-direct {p0, v8}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 504
    :cond_4
    add-int v0, v4, v3

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v2

    if-le v0, v2, :cond_5

    .line 505
    invoke-direct {p0, v8}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 508
    :cond_5
    add-int v0, v4, v3

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v1

    if-le v0, v1, :cond_6

    .line 509
    invoke-direct {p0, v8}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 512
    :cond_6
    return-void
.end method

.method private d([BLcom/amap/api/mapcore/util/dp;)V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x4

    .line 517
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "-------------------  readGuideboardStyleRecord start "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/amap/api/mapcore/util/dp;->a:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "------------------------ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/dt;->c(Ljava/lang/String;)V

    .line 519
    invoke-direct {p0, v8}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v3

    .line 520
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v4

    .line 521
    invoke-direct {p0, v9}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->readOneByteToInt([BI)I

    move-result v5

    .line 522
    const-string/jumbo v0, ""

    move-object v2, v0

    move v0, v1

    .line 523
    :goto_1
    if-ge v0, v5, :cond_1

    .line 524
    invoke-direct {p0, v9}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v6

    invoke-static {p1, v6}, Lcom/autonavi/amap/mapcore/Convert;->readOneByteToInt([BI)I

    move-result v6

    .line 525
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 523
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 517
    :cond_0
    const-string/jumbo v0, "null"

    goto :goto_0

    .line 528
    :cond_1
    invoke-direct {p0, v10}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getShort([BI)S

    .line 529
    invoke-direct {p0, v9}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->readOneByteToInt([BI)I

    .line 530
    invoke-direct {p0, v8}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 531
    invoke-direct {p0, v8}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 532
    invoke-direct {p0, v10}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getShort([BI)S

    .line 538
    add-int v0, v4, v3

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v2

    if-le v0, v2, :cond_2

    .line 539
    invoke-direct {p0, v8}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v0

    .line 540
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v2

    invoke-static {p1, v2, v0}, Lcom/amap/api/mapcore/util/dt;->a([BII)Ljava/lang/String;

    .line 543
    :cond_2
    add-int v0, v4, v3

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v2

    if-le v0, v2, :cond_3

    .line 544
    invoke-direct {p0, v8}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 547
    :cond_3
    add-int v0, v4, v3

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v1

    if-le v0, v1, :cond_4

    .line 548
    invoke-direct {p0, v8}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 551
    :cond_4
    return-void
.end method

.method private e([BLcom/amap/api/mapcore/util/dp;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 555
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "-------------------  readBuildingStyleRecord start "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/amap/api/mapcore/util/dp;->a:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "------------------------ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/dt;->c(Ljava/lang/String;)V

    .line 557
    invoke-direct {p0, v9}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v3

    .line 558
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v4

    .line 559
    invoke-direct {p0, v8}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->readOneByteToInt([BI)I

    move-result v5

    .line 560
    const-string/jumbo v0, ""

    move-object v2, v0

    move v0, v1

    .line 561
    :goto_1
    if-ge v0, v5, :cond_1

    .line 562
    invoke-direct {p0, v8}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v6

    invoke-static {p1, v6}, Lcom/autonavi/amap/mapcore/Convert;->readOneByteToInt([BI)I

    move-result v6

    .line 563
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 561
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 555
    :cond_0
    const-string/jumbo v0, "null"

    goto :goto_0

    .line 566
    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getShort([BI)S

    .line 570
    invoke-direct {p0, v9}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    .line 571
    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 573
    invoke-direct {p0, v9}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v2

    .line 574
    invoke-static {p1, v2}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 577
    if-eqz p2, :cond_2

    .line 579
    iget-object v5, p2, Lcom/amap/api/mapcore/util/dp;->d:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v5}, Lcom/amap/api/mapcore/util/dt;->a([BILjava/lang/String;)V

    .line 582
    iget-object v0, p2, Lcom/amap/api/mapcore/util/dp;->f:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v0}, Lcom/amap/api/mapcore/util/dt;->a([BILjava/lang/String;)V

    .line 585
    :cond_2
    invoke-direct {p0, v9}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 586
    invoke-direct {p0, v9}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 587
    invoke-direct {p0, v8}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->readOneByteToInt([BI)I

    .line 594
    add-int v0, v4, v3

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v2

    if-le v0, v2, :cond_3

    .line 595
    invoke-direct {p0, v9}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 598
    :cond_3
    add-int v0, v4, v3

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v2

    if-le v0, v2, :cond_4

    .line 599
    invoke-direct {p0, v8}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->readOneByteToInt([BI)I

    .line 602
    :cond_4
    add-int v0, v4, v3

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v2

    if-le v0, v2, :cond_5

    .line 603
    invoke-direct {p0, v8}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->readOneByteToInt([BI)I

    .line 606
    :cond_5
    add-int v0, v4, v3

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v1

    if-le v0, v1, :cond_6

    .line 607
    invoke-direct {p0, v8}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->readOneByteToInt([BI)I

    .line 610
    :cond_6
    return-void
.end method

.method private f([BLcom/amap/api/mapcore/util/dp;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x4

    .line 616
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "-------------------  readRoadSurfaceStyleRecord start "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/amap/api/mapcore/util/dp;->a:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "------------------------ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/dt;->c(Ljava/lang/String;)V

    .line 618
    invoke-direct {p0, v5}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 619
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    .line 620
    invoke-direct {p0, v7}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->readOneByteToInt([BI)I

    move-result v2

    .line 621
    const-string/jumbo v0, ""

    move v8, v1

    move-object v1, v0

    move v0, v8

    .line 622
    :goto_1
    if-ge v0, v2, :cond_1

    .line 623
    invoke-direct {p0, v7}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v3

    invoke-static {p1, v3}, Lcom/autonavi/amap/mapcore/Convert;->readOneByteToInt([BI)I

    move-result v3

    .line 624
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 622
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 616
    :cond_0
    const-string/jumbo v0, "null"

    goto :goto_0

    .line 627
    :cond_1
    invoke-direct {p0, v6}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getShort([BI)S

    .line 628
    invoke-direct {p0, v7}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->readOneByteToInt([BI)I

    .line 629
    invoke-direct {p0, v6}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getShort([BI)S

    .line 630
    invoke-direct {p0, v5}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 631
    invoke-direct {p0, v5}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 632
    invoke-direct {p0, v5}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 633
    invoke-direct {p0, v6}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getShort([BI)S

    .line 634
    invoke-direct {p0, v5}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 635
    invoke-direct {p0, v5}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 636
    invoke-direct {p0, v5}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 637
    invoke-direct {p0, v6}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getShort([BI)S

    .line 638
    invoke-direct {p0, v5}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 639
    invoke-direct {p0, v5}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 640
    invoke-direct {p0, v5}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 641
    invoke-direct {p0, v7}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->readOneByteToInt([BI)I

    .line 642
    invoke-direct {p0, v6}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getShort([BI)S

    .line 643
    invoke-direct {p0, v5}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 644
    invoke-direct {p0, v5}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 645
    invoke-direct {p0, v5}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 646
    invoke-direct {p0, v5}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 647
    invoke-direct {p0, v7}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->readOneByteToInt([BI)I

    .line 648
    invoke-direct {p0, v6}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getShort([BI)S

    .line 649
    invoke-direct {p0, v5}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 650
    invoke-direct {p0, v5}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 651
    invoke-direct {p0, v5}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 652
    invoke-direct {p0, v5}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 653
    invoke-direct {p0, v5}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 654
    invoke-direct {p0, v5}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 655
    invoke-direct {p0, v6}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getShort([BI)S

    .line 656
    invoke-direct {p0, v5}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 657
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore/util/ds;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/autonavi/amap/mapcore/FileUtil;->readFileContents(Ljava/lang/String;)[B

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 57
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 59
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 60
    new-instance v3, Lcom/amap/api/mapcore/util/ds;

    invoke-direct {v3}, Lcom/amap/api/mapcore/util/ds;-><init>()V

    .line 62
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 63
    const-string/jumbo v5, "featureType"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/amap/api/mapcore/util/ds;->n:Ljava/lang/String;

    .line 64
    const-string/jumbo v5, "elementType"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/amap/api/mapcore/util/ds;->o:Ljava/lang/String;

    .line 66
    new-instance v5, Lcom/amap/api/mapcore/util/du;

    invoke-direct {v5}, Lcom/amap/api/mapcore/util/du;-><init>()V

    .line 67
    const-string/jumbo v6, "stylers"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 68
    if-eqz v4, :cond_1

    .line 69
    const-string/jumbo v6, "color"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/amap/api/mapcore/util/du;->a:Ljava/lang/String;

    .line 70
    const-string/jumbo v6, "visibility"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 71
    const-string/jumbo v6, "visibility"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/amap/api/mapcore/util/du;->b:Ljava/lang/String;

    .line 73
    :cond_0
    iput-object v5, v3, Lcom/amap/api/mapcore/util/ds;->p:Lcom/amap/api/mapcore/util/du;

    .line 76
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    :cond_2
    return-object v1
.end method

.method public a([BLcom/amap/api/mapcore/util/dr;)V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v9, 0x4

    .line 296
    invoke-direct {p0, v9}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v4

    move v3, v2

    .line 298
    :goto_0
    if-ge v3, v4, :cond_9

    .line 299
    invoke-direct {p0, v9}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    .line 300
    invoke-direct {p0, v9}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v1

    .line 301
    invoke-direct {p0, v9}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v0

    .line 302
    invoke-direct {p0, v10}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v5

    invoke-static {p1, v5}, Lcom/autonavi/amap/mapcore/Convert;->readOneByteToInt([BI)I

    move-result v5

    .line 304
    invoke-direct {p0, v11}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v6

    invoke-static {p1, v6}, Lcom/autonavi/amap/mapcore/Convert;->getShort([BI)S

    move-result v6

    .line 306
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/amap/api/mapcore/util/dr;->a(Ljava/lang/String;)Lcom/amap/api/mapcore/util/dp;

    move-result-object v0

    .line 307
    const-string/jumbo v7, "30003"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v1, v7, :cond_0

    const-string/jumbo v7, "10001"

    .line 308
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v1, v7, :cond_0

    const-string/jumbo v7, "10002"

    .line 309
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v1, v7, :cond_0

    .line 310
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "20"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 311
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/amap/api/mapcore/util/dr;->a(Ljava/lang/String;)Lcom/amap/api/mapcore/util/dp;

    move-result-object v0

    .line 314
    const-string/jumbo v7, "20004"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lt v1, v7, :cond_1

    const-string/jumbo v7, "20008"

    .line 315
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-gt v1, v7, :cond_1

    .line 316
    const-string/jumbo v0, "20004"

    invoke-virtual {p2, v0}, Lcom/amap/api/mapcore/util/dr;->a(Ljava/lang/String;)Lcom/amap/api/mapcore/util/dp;

    move-result-object v0

    :cond_1
    move v1, v2

    .line 320
    :goto_1
    if-ge v1, v6, :cond_8

    .line 321
    if-nez v5, :cond_3

    .line 322
    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/util/dt;->a([BLcom/amap/api/mapcore/util/dp;)V

    .line 320
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 323
    :cond_3
    if-ne v5, v10, :cond_4

    .line 324
    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/util/dt;->b([BLcom/amap/api/mapcore/util/dp;)V

    goto :goto_2

    .line 325
    :cond_4
    if-ne v5, v11, :cond_5

    .line 326
    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/util/dt;->c([BLcom/amap/api/mapcore/util/dp;)V

    goto :goto_2

    .line 327
    :cond_5
    const/4 v7, 0x3

    if-ne v5, v7, :cond_6

    .line 328
    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/util/dt;->e([BLcom/amap/api/mapcore/util/dp;)V

    goto :goto_2

    .line 329
    :cond_6
    if-ne v5, v9, :cond_7

    .line 330
    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/util/dt;->d([BLcom/amap/api/mapcore/util/dp;)V

    goto :goto_2

    .line 331
    :cond_7
    const/4 v7, 0x5

    if-ne v5, v7, :cond_2

    .line 332
    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/util/dt;->f([BLcom/amap/api/mapcore/util/dp;)V

    goto :goto_2

    .line 298
    :cond_8
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    .line 338
    :cond_9
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/amap/api/mapcore/util/dr;)[B
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 261
    :try_start_0
    invoke-static {p1}, Lcom/amap/api/mapcore/util/el;->a(Landroid/content/Context;)Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "map_assets/style_1_7_1445219169.data"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 263
    invoke-static {v0}, Lcom/autonavi/amap/mapcore/FileUtil;->readStream(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 265
    invoke-static {v0}, Lcom/amap/api/mapcore/util/dq;->a([B)[B

    move-result-object v0

    .line 267
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v1

    .line 268
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v2

    .line 270
    sget-object v3, Lcom/amap/api/mapcore/util/dt;->a:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 271
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v2

    .line 273
    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v3

    invoke-static {v0, v3, v2}, Lcom/amap/api/mapcore/util/dt;->a([BII)Ljava/lang/String;

    .line 276
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/amap/api/mapcore/util/dt;->a([BLcom/amap/api/mapcore/util/dr;)V

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "dataLength is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/dt;->c(Ljava/lang/String;)V

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "strartIndex is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/util/dt;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/dt;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :goto_0
    return-object v0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 286
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)[B
    .locals 18

    .prologue
    .line 94
    invoke-virtual/range {p0 .. p1}, Lcom/amap/api/mapcore/util/dt;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 96
    const/4 v13, 0x0

    .line 97
    const/4 v12, 0x0

    .line 98
    const/4 v11, 0x0

    .line 99
    const/4 v10, 0x0

    .line 100
    const/4 v9, 0x0

    .line 101
    const/4 v8, 0x0

    .line 102
    const/4 v7, 0x0

    .line 103
    const/4 v6, 0x0

    .line 104
    const/4 v5, 0x0

    .line 105
    const/4 v4, 0x0

    .line 106
    const/4 v3, 0x0

    .line 107
    const/4 v1, 0x0

    .line 108
    const/4 v2, 0x0

    .line 109
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore/util/ds;

    .line 110
    iget-object v0, v1, Lcom/amap/api/mapcore/util/ds;->n:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v17, "land"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 111
    if-nez v14, :cond_1

    .line 112
    new-instance v14, Lcom/amap/api/mapcore/util/dp;

    invoke-direct {v14}, Lcom/amap/api/mapcore/util/dp;-><init>()V

    .line 114
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v1}, Lcom/amap/api/mapcore/util/dt;->a(Lcom/amap/api/mapcore/util/dp;Lcom/amap/api/mapcore/util/ds;)V

    goto :goto_0

    .line 115
    :cond_2
    iget-object v0, v1, Lcom/amap/api/mapcore/util/ds;->n:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v17, "water"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 116
    if-nez v13, :cond_3

    .line 117
    new-instance v13, Lcom/amap/api/mapcore/util/dp;

    invoke-direct {v13}, Lcom/amap/api/mapcore/util/dp;-><init>()V

    .line 119
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v1}, Lcom/amap/api/mapcore/util/dt;->a(Lcom/amap/api/mapcore/util/dp;Lcom/amap/api/mapcore/util/ds;)V

    goto :goto_0

    .line 120
    :cond_4
    iget-object v0, v1, Lcom/amap/api/mapcore/util/ds;->n:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v17, "green"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 121
    if-nez v12, :cond_5

    .line 122
    new-instance v12, Lcom/amap/api/mapcore/util/dp;

    invoke-direct {v12}, Lcom/amap/api/mapcore/util/dp;-><init>()V

    .line 124
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v1}, Lcom/amap/api/mapcore/util/dt;->a(Lcom/amap/api/mapcore/util/dp;Lcom/amap/api/mapcore/util/ds;)V

    goto :goto_0

    .line 125
    :cond_6
    iget-object v0, v1, Lcom/amap/api/mapcore/util/ds;->n:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v17, "manmade"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 126
    if-nez v11, :cond_7

    .line 127
    new-instance v11, Lcom/amap/api/mapcore/util/dp;

    invoke-direct {v11}, Lcom/amap/api/mapcore/util/dp;-><init>()V

    .line 129
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v1}, Lcom/amap/api/mapcore/util/dt;->a(Lcom/amap/api/mapcore/util/dp;Lcom/amap/api/mapcore/util/ds;)V

    goto/16 :goto_0

    .line 130
    :cond_8
    iget-object v0, v1, Lcom/amap/api/mapcore/util/ds;->n:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v17, "building"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 131
    if-nez v10, :cond_9

    .line 132
    new-instance v10, Lcom/amap/api/mapcore/util/dp;

    invoke-direct {v10}, Lcom/amap/api/mapcore/util/dp;-><init>()V

    .line 134
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v1}, Lcom/amap/api/mapcore/util/dt;->a(Lcom/amap/api/mapcore/util/dp;Lcom/amap/api/mapcore/util/ds;)V

    goto/16 :goto_0

    .line 135
    :cond_a
    iget-object v0, v1, Lcom/amap/api/mapcore/util/ds;->n:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v17, "highway"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 136
    if-nez v9, :cond_b

    .line 137
    new-instance v9, Lcom/amap/api/mapcore/util/dp;

    invoke-direct {v9}, Lcom/amap/api/mapcore/util/dp;-><init>()V

    .line 139
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v1}, Lcom/amap/api/mapcore/util/dt;->a(Lcom/amap/api/mapcore/util/dp;Lcom/amap/api/mapcore/util/ds;)V

    goto/16 :goto_0

    .line 140
    :cond_c
    iget-object v0, v1, Lcom/amap/api/mapcore/util/ds;->n:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v17, "arterial"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 141
    if-nez v8, :cond_d

    .line 142
    new-instance v8, Lcom/amap/api/mapcore/util/dp;

    invoke-direct {v8}, Lcom/amap/api/mapcore/util/dp;-><init>()V

    .line 144
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v1}, Lcom/amap/api/mapcore/util/dt;->a(Lcom/amap/api/mapcore/util/dp;Lcom/amap/api/mapcore/util/ds;)V

    goto/16 :goto_0

    .line 145
    :cond_e
    iget-object v0, v1, Lcom/amap/api/mapcore/util/ds;->n:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v17, "local"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    .line 146
    if-nez v7, :cond_f

    .line 147
    new-instance v7, Lcom/amap/api/mapcore/util/dp;

    invoke-direct {v7}, Lcom/amap/api/mapcore/util/dp;-><init>()V

    .line 149
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v1}, Lcom/amap/api/mapcore/util/dt;->a(Lcom/amap/api/mapcore/util/dp;Lcom/amap/api/mapcore/util/ds;)V

    goto/16 :goto_0

    .line 150
    :cond_10
    iget-object v0, v1, Lcom/amap/api/mapcore/util/ds;->n:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v17, "railway"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_12

    .line 151
    if-nez v6, :cond_11

    .line 152
    new-instance v6, Lcom/amap/api/mapcore/util/dp;

    invoke-direct {v6}, Lcom/amap/api/mapcore/util/dp;-><init>()V

    .line 154
    :cond_11
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v1}, Lcom/amap/api/mapcore/util/dt;->a(Lcom/amap/api/mapcore/util/dp;Lcom/amap/api/mapcore/util/ds;)V

    goto/16 :goto_0

    .line 155
    :cond_12
    iget-object v0, v1, Lcom/amap/api/mapcore/util/ds;->n:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v17, "subway"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_14

    .line 156
    if-nez v5, :cond_13

    .line 157
    new-instance v5, Lcom/amap/api/mapcore/util/dp;

    invoke-direct {v5}, Lcom/amap/api/mapcore/util/dp;-><init>()V

    .line 159
    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v1}, Lcom/amap/api/mapcore/util/dt;->a(Lcom/amap/api/mapcore/util/dp;Lcom/amap/api/mapcore/util/ds;)V

    goto/16 :goto_0

    .line 160
    :cond_14
    iget-object v0, v1, Lcom/amap/api/mapcore/util/ds;->n:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v17, "boundary"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_16

    .line 161
    if-nez v4, :cond_15

    .line 162
    new-instance v4, Lcom/amap/api/mapcore/util/dp;

    invoke-direct {v4}, Lcom/amap/api/mapcore/util/dp;-><init>()V

    .line 164
    :cond_15
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v1}, Lcom/amap/api/mapcore/util/dt;->a(Lcom/amap/api/mapcore/util/dp;Lcom/amap/api/mapcore/util/ds;)V

    goto/16 :goto_0

    .line 165
    :cond_16
    iget-object v0, v1, Lcom/amap/api/mapcore/util/ds;->n:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v17, "poilabel"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_18

    .line 166
    if-nez v3, :cond_17

    .line 167
    new-instance v3, Lcom/amap/api/mapcore/util/dp;

    invoke-direct {v3}, Lcom/amap/api/mapcore/util/dp;-><init>()V

    .line 169
    :cond_17
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v1}, Lcom/amap/api/mapcore/util/dt;->a(Lcom/amap/api/mapcore/util/dp;Lcom/amap/api/mapcore/util/ds;)V

    goto/16 :goto_0

    .line 170
    :cond_18
    iget-object v0, v1, Lcom/amap/api/mapcore/util/ds;->n:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v17, "districtlable"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 171
    if-nez v2, :cond_19

    .line 172
    new-instance v2, Lcom/amap/api/mapcore/util/dp;

    invoke-direct {v2}, Lcom/amap/api/mapcore/util/dp;-><init>()V

    .line 174
    :cond_19
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1}, Lcom/amap/api/mapcore/util/dt;->a(Lcom/amap/api/mapcore/util/dp;Lcom/amap/api/mapcore/util/ds;)V

    goto/16 :goto_0

    .line 179
    :cond_1a
    new-instance v1, Lcom/amap/api/mapcore/util/dr;

    invoke-direct {v1}, Lcom/amap/api/mapcore/util/dr;-><init>()V

    .line 180
    if-eqz v14, :cond_1b

    .line 181
    const-string/jumbo v8, "300011"

    invoke-virtual {v1, v8, v14}, Lcom/amap/api/mapcore/util/dr;->a(Ljava/lang/String;Lcom/amap/api/mapcore/util/dp;)V

    .line 183
    :cond_1b
    if-eqz v13, :cond_1c

    .line 184
    const-string/jumbo v8, "300012"

    invoke-virtual {v1, v8, v13}, Lcom/amap/api/mapcore/util/dr;->a(Ljava/lang/String;Lcom/amap/api/mapcore/util/dp;)V

    .line 186
    :cond_1c
    if-eqz v12, :cond_1d

    .line 187
    const-string/jumbo v8, "300013"

    invoke-virtual {v1, v8, v12}, Lcom/amap/api/mapcore/util/dr;->a(Ljava/lang/String;Lcom/amap/api/mapcore/util/dp;)V

    .line 189
    :cond_1d
    if-eqz v10, :cond_1e

    .line 190
    const-string/jumbo v8, "500011"

    invoke-virtual {v1, v8, v10}, Lcom/amap/api/mapcore/util/dr;->a(Ljava/lang/String;Lcom/amap/api/mapcore/util/dp;)V

    .line 192
    :cond_1e
    if-eqz v9, :cond_1f

    .line 193
    const-string/jumbo v8, "20001"

    invoke-virtual {v1, v8, v9}, Lcom/amap/api/mapcore/util/dr;->a(Ljava/lang/String;Lcom/amap/api/mapcore/util/dp;)V

    .line 194
    const-string/jumbo v8, "20003"

    invoke-virtual {v1, v8, v9}, Lcom/amap/api/mapcore/util/dr;->a(Ljava/lang/String;Lcom/amap/api/mapcore/util/dp;)V

    .line 195
    const-string/jumbo v8, "20002"

    invoke-virtual {v1, v8, v9}, Lcom/amap/api/mapcore/util/dr;->a(Ljava/lang/String;Lcom/amap/api/mapcore/util/dp;)V

    .line 202
    :cond_1f
    if-eqz v7, :cond_20

    .line 203
    const-string/jumbo v8, "20004"

    invoke-virtual {v1, v8, v7}, Lcom/amap/api/mapcore/util/dr;->a(Ljava/lang/String;Lcom/amap/api/mapcore/util/dp;)V

    .line 205
    :cond_20
    if-eqz v6, :cond_21

    .line 206
    const-string/jumbo v7, "20010"

    invoke-virtual {v1, v7, v6}, Lcom/amap/api/mapcore/util/dr;->a(Ljava/lang/String;Lcom/amap/api/mapcore/util/dp;)V

    .line 208
    :cond_21
    if-eqz v5, :cond_22

    .line 209
    const-string/jumbo v6, "30003"

    invoke-virtual {v1, v6, v5}, Lcom/amap/api/mapcore/util/dr;->a(Ljava/lang/String;Lcom/amap/api/mapcore/util/dp;)V

    .line 211
    :cond_22
    if-eqz v4, :cond_23

    .line 212
    const-string/jumbo v5, "20016"

    invoke-virtual {v1, v5, v4}, Lcom/amap/api/mapcore/util/dr;->a(Ljava/lang/String;Lcom/amap/api/mapcore/util/dp;)V

    .line 214
    :cond_23
    if-eqz v3, :cond_24

    .line 215
    const-string/jumbo v4, "10001"

    invoke-virtual {v1, v4, v3}, Lcom/amap/api/mapcore/util/dr;->a(Ljava/lang/String;Lcom/amap/api/mapcore/util/dp;)V

    .line 217
    :cond_24
    if-eqz v2, :cond_25

    .line 218
    const-string/jumbo v3, "10002"

    invoke-virtual {v1, v3, v2}, Lcom/amap/api/mapcore/util/dr;->a(Ljava/lang/String;Lcom/amap/api/mapcore/util/dp;)V

    .line 220
    :cond_25
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/dr;->a()I

    move-result v2

    if-lez v2, :cond_26

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/dt;->b:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lcom/amap/api/mapcore/util/dt;->a(Landroid/content/Context;Lcom/amap/api/mapcore/util/dr;)[B

    move-result-object v1

    .line 224
    :goto_1
    return-object v1

    :cond_26
    const/4 v1, 0x0

    goto :goto_1
.end method
