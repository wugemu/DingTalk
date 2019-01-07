.class final Lcom/megvii/livenessdetection/Detector$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/megvii/livenessdetection/Detector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/megvii/livenessdetection/Detector;

.field private b:Ljes;


# direct methods
.method public constructor <init>(Lcom/megvii/livenessdetection/Detector;)V
    .locals 1

    .prologue
    .line 427
    iput-object p1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 428
    new-instance v0, Ljes;

    invoke-direct {v0}, Ljes;-><init>()V

    iput-object v0, p0, Lcom/megvii/livenessdetection/Detector$a;->b:Ljes;

    .line 429
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector$a;->b:Ljes;

    invoke-virtual {v0}, Ljes;->b()V

    .line 430
    return-void
.end method

.method private a(Lcom/megvii/livenessdetection/Detector$DetectionFailedType;Lcom/megvii/livenessdetection/Detector$DetectionListener;Lcom/megvii/livenessdetection/DetectionFrame;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 462
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v0}, Lcom/megvii/livenessdetection/Detector;->h(Lcom/megvii/livenessdetection/Detector;)Ljer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljer;->a(Lcom/megvii/livenessdetection/Detector$DetectionFailedType;)V

    .line 463
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v0}, Lcom/megvii/livenessdetection/Detector;->h(Lcom/megvii/livenessdetection/Detector;)Ljer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v0}, Lcom/megvii/livenessdetection/Detector;->i(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdeteciton/obf/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v0}, Lcom/megvii/livenessdetection/Detector;->i(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdeteciton/obf/e;

    move-result-object v0

    const-string/jumbo v1, "8cd0604ba33e2ba7f38a56f0aec08a54"

    iget-object v2, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v2}, Lcom/megvii/livenessdetection/Detector;->h(Lcom/megvii/livenessdetection/Detector;)Ljer;

    move-result-object v2

    invoke-virtual {v2}, Ljer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/megvii/livenessdeteciton/obf/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/megvii/livenessdetection/Detector;->a(Lcom/megvii/livenessdetection/Detector;Z)Z

    .line 467
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v0}, Lcom/megvii/livenessdetection/Detector;->j(Lcom/megvii/livenessdetection/Detector;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/megvii/livenessdetection/Detector$a$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/megvii/livenessdetection/Detector$a$1;-><init>(Lcom/megvii/livenessdetection/Detector$a;Lcom/megvii/livenessdetection/Detector$DetectionListener;Lcom/megvii/livenessdetection/DetectionFrame;Lcom/megvii/livenessdetection/Detector$DetectionFailedType;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 478
    return-void
.end method

.method private a(Lcom/megvii/livenessdetection/impl/b;)V
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v0}, Lcom/megvii/livenessdetection/Detector;->m(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdetection/impl/b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v0, p1}, Lcom/megvii/livenessdetection/Detector;->a(Lcom/megvii/livenessdetection/Detector;Lcom/megvii/livenessdetection/impl/b;)Lcom/megvii/livenessdetection/impl/b;

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v0}, Lcom/megvii/livenessdetection/Detector;->m(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdetection/impl/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/megvii/livenessdetection/impl/b;->a(Lcom/megvii/livenessdetection/DetectionFrame;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 630
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v0, p1}, Lcom/megvii/livenessdetection/Detector;->a(Lcom/megvii/livenessdetection/Detector;Lcom/megvii/livenessdetection/impl/b;)Lcom/megvii/livenessdetection/impl/b;

    .line 633
    :cond_1
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v12, 0x0

    .line 436
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v0}, Lcom/megvii/livenessdetection/Detector;->a(Lcom/megvii/livenessdetection/Detector;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/megvii/livenessdetection/impl/b;

    .line 437
    if-eqz v0, :cond_0

    .line 440
    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->b(Lcom/megvii/livenessdetection/Detector;)J

    move-result-wide v2

    cmp-long v1, v2, v12

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->c(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdetection/Detector$DetectionType;

    move-result-object v1

    sget-object v2, Lcom/megvii/livenessdetection/Detector$DetectionType;->DONE:Lcom/megvii/livenessdetection/Detector$DetectionType;

    if-eq v1, v2, :cond_0

    .line 442
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->d(Lcom/megvii/livenessdetection/Detector;)J

    move-result-wide v4

    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->e(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdetection/DetectionConfig;

    move-result-object v1

    iget-wide v6, v1, Lcom/megvii/livenessdetection/DetectionConfig;->timeout:J

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->c(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdetection/Detector$DetectionType;

    move-result-object v1

    sget-object v2, Lcom/megvii/livenessdetection/Detector$DetectionType;->NONE:Lcom/megvii/livenessdetection/Detector$DetectionType;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    .line 443
    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->c(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdetection/Detector$DetectionType;

    move-result-object v1

    sget-object v2, Lcom/megvii/livenessdetection/Detector$DetectionType;->AIMLESS:Lcom/megvii/livenessdetection/Detector$DetectionType;

    if-eq v1, v2, :cond_1

    .line 445
    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->f(Lcom/megvii/livenessdetection/Detector;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 446
    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->g(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdetection/Detector$DetectionListener;

    move-result-object v1

    .line 447
    sget-object v2, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->TIMEOUT:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    invoke-direct {p0, v2, v1, v0}, Lcom/megvii/livenessdetection/Detector$a;->a(Lcom/megvii/livenessdetection/Detector$DetectionFailedType;Lcom/megvii/livenessdetection/Detector$DetectionListener;Lcom/megvii/livenessdetection/DetectionFrame;)V

    goto :goto_0

    .line 458
    :catch_0
    move-exception v0

    return-void

    .line 450
    :cond_1
    invoke-virtual {v0}, Lcom/megvii/livenessdetection/impl/b;->getYUVData()[B

    move-result-object v5

    invoke-virtual {v0}, Lcom/megvii/livenessdetection/impl/b;->getImageWidth()I

    move-result v6

    .line 451
    invoke-virtual {v0}, Lcom/megvii/livenessdetection/impl/b;->getImageHeight()I

    move-result v7

    .line 452
    invoke-virtual {v0}, Lcom/megvii/livenessdetection/impl/b;->getRotation()I

    move-result v8

    .line 1482
    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->c(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdetection/Detector$DetectionType;

    move-result-object v9

    .line 1483
    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->g(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdetection/Detector$DetectionListener;

    move-result-object v10

    .line 1484
    if-eqz v9, :cond_0

    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->b(Lcom/megvii/livenessdetection/Detector;)J

    move-result-wide v2

    cmp-long v1, v2, v12

    if-eqz v1, :cond_0

    if-eqz v10, :cond_0

    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->f(Lcom/megvii/livenessdetection/Detector;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1486
    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->k(Lcom/megvii/livenessdetection/Detector;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1487
    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/megvii/livenessdetection/Detector;->b(Lcom/megvii/livenessdetection/Detector;Z)Z

    .line 1488
    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    iget-object v2, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v2}, Lcom/megvii/livenessdetection/Detector;->b(Lcom/megvii/livenessdetection/Detector;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/megvii/livenessdetection/Detector;->a(Lcom/megvii/livenessdetection/Detector;J)V

    .line 1490
    :cond_2
    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    iget-object v2, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v2}, Lcom/megvii/livenessdetection/Detector;->b(Lcom/megvii/livenessdetection/Detector;)J

    move-result-wide v2

    invoke-static {v9}, Lcom/megvii/livenessdetection/Detector$DetectionType;->access$1200(Lcom/megvii/livenessdetection/Detector$DetectionType;)I

    move-result v4

    invoke-static/range {v1 .. v8}, Lcom/megvii/livenessdetection/Detector;->a(Lcom/megvii/livenessdetection/Detector;JI[BIII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1493
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1494
    iget-object v3, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v3}, Lcom/megvii/livenessdetection/Detector;->f(Lcom/megvii/livenessdetection/Detector;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/megvii/livenessdetection/impl/b;->a()Lcom/megvii/livenessdetection/Detector$DetectionType;

    move-result-object v3

    if-ne v9, v3, :cond_0

    .line 1497
    iget-object v3, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v3}, Lcom/megvii/livenessdetection/Detector;->e(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdetection/DetectionConfig;

    move-result-object v3

    iget-object v4, p0, Lcom/megvii/livenessdetection/Detector$a;->b:Ljes;

    invoke-virtual {v0, v1, v3, v4}, Lcom/megvii/livenessdetection/impl/b;->a(Ljava/lang/String;Lcom/megvii/livenessdetection/DetectionConfig;Ljes;)V

    .line 1498
    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionType;->NONE:Lcom/megvii/livenessdetection/Detector$DetectionType;

    if-eq v9, v1, :cond_3

    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionType;->AIMLESS:Lcom/megvii/livenessdetection/Detector$DetectionType;

    if-ne v9, v1, :cond_4

    .line 1499
    :cond_3
    sget-object v1, Lcom/megvii/livenessdetection/DetectionFrame$FrameType;->NONE:Lcom/megvii/livenessdetection/DetectionFrame$FrameType;

    invoke-virtual {v0, v1}, Lcom/megvii/livenessdetection/impl/b;->setFrameType(Lcom/megvii/livenessdetection/DetectionFrame$FrameType;)V

    .line 1500
    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->j(Lcom/megvii/livenessdetection/Detector;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/megvii/livenessdetection/Detector$a$2;

    invoke-direct {v2, p0, v10, v0}, Lcom/megvii/livenessdetection/Detector$a$2;-><init>(Lcom/megvii/livenessdetection/Detector$a;Lcom/megvii/livenessdetection/Detector$DetectionListener;Lcom/megvii/livenessdetection/impl/b;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1620
    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1510
    :cond_4
    :try_start_3
    const-string/jumbo v1, "result"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1511
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 1514
    :pswitch_0
    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->l(Lcom/megvii/livenessdetection/Detector;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1515
    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/megvii/livenessdetection/Detector;->a(Lcom/megvii/livenessdetection/Detector;Z)Z

    .line 1516
    sget-object v1, Lcom/megvii/livenessdetection/DetectionFrame$FrameType;->NONE:Lcom/megvii/livenessdetection/DetectionFrame$FrameType;

    invoke-virtual {v0, v1}, Lcom/megvii/livenessdetection/impl/b;->setFrameType(Lcom/megvii/livenessdetection/DetectionFrame$FrameType;)V

    .line 1517
    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->j(Lcom/megvii/livenessdetection/Detector;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/megvii/livenessdetection/Detector$a$3;

    invoke-direct {v2, p0, v10, v0}, Lcom/megvii/livenessdetection/Detector$a$3;-><init>(Lcom/megvii/livenessdetection/Detector$a;Lcom/megvii/livenessdetection/Detector$DetectionListener;Lcom/megvii/livenessdetection/impl/b;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1544
    :pswitch_1
    sget-object v1, Lcom/megvii/livenessdetection/DetectionFrame$FrameType;->NONE:Lcom/megvii/livenessdetection/DetectionFrame$FrameType;

    invoke-virtual {v0, v1}, Lcom/megvii/livenessdetection/impl/b;->setFrameType(Lcom/megvii/livenessdetection/DetectionFrame$FrameType;)V

    .line 1545
    invoke-direct {p0, v0}, Lcom/megvii/livenessdetection/Detector$a;->a(Lcom/megvii/livenessdetection/impl/b;)V

    .line 1546
    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->j(Lcom/megvii/livenessdetection/Detector;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/megvii/livenessdetection/Detector$a$4;

    invoke-direct {v2, p0, v10, v0}, Lcom/megvii/livenessdetection/Detector$a$4;-><init>(Lcom/megvii/livenessdetection/Detector$a;Lcom/megvii/livenessdetection/Detector$DetectionListener;Lcom/megvii/livenessdetection/impl/b;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1557
    :pswitch_2
    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->j(Lcom/megvii/livenessdetection/Detector;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/megvii/livenessdetection/Detector$a$5;

    invoke-direct {v2, p0, v10, v0}, Lcom/megvii/livenessdetection/Detector$a$5;-><init>(Lcom/megvii/livenessdetection/Detector$a;Lcom/megvii/livenessdetection/Detector$DetectionListener;Lcom/megvii/livenessdetection/impl/b;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1570
    :pswitch_3
    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->NOTVIDEO:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    invoke-direct {p0, v1, v10, v0}, Lcom/megvii/livenessdetection/Detector$a;->a(Lcom/megvii/livenessdetection/Detector$DetectionFailedType;Lcom/megvii/livenessdetection/Detector$DetectionListener;Lcom/megvii/livenessdetection/DetectionFrame;)V

    goto/16 :goto_0

    .line 1573
    :pswitch_4
    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->MASK:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    invoke-direct {p0, v1, v10, v0}, Lcom/megvii/livenessdetection/Detector$a;->a(Lcom/megvii/livenessdetection/Detector$DetectionFailedType;Lcom/megvii/livenessdetection/Detector$DetectionListener;Lcom/megvii/livenessdetection/DetectionFrame;)V

    goto/16 :goto_0

    .line 1576
    :pswitch_5
    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->FACELOSTNOTCONTINUOUS:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    invoke-direct {p0, v1, v10, v0}, Lcom/megvii/livenessdetection/Detector$a;->a(Lcom/megvii/livenessdetection/Detector$DetectionFailedType;Lcom/megvii/livenessdetection/Detector$DetectionListener;Lcom/megvii/livenessdetection/DetectionFrame;)V

    goto/16 :goto_0

    .line 1579
    :pswitch_6
    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->TOOMANYFACELOST:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    invoke-direct {p0, v1, v10, v0}, Lcom/megvii/livenessdetection/Detector$a;->a(Lcom/megvii/livenessdetection/Detector$DetectionFailedType;Lcom/megvii/livenessdetection/Detector$DetectionListener;Lcom/megvii/livenessdetection/DetectionFrame;)V

    goto/16 :goto_0

    .line 1582
    :pswitch_7
    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->FACENOTCONTINUOUS:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    invoke-direct {p0, v1, v10, v0}, Lcom/megvii/livenessdetection/Detector$a;->a(Lcom/megvii/livenessdetection/Detector$DetectionFailedType;Lcom/megvii/livenessdetection/Detector$DetectionListener;Lcom/megvii/livenessdetection/DetectionFrame;)V

    goto/16 :goto_0

    .line 1585
    :pswitch_8
    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->ACTIONBLEND:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    invoke-direct {p0, v1, v10, v0}, Lcom/megvii/livenessdetection/Detector$a;->a(Lcom/megvii/livenessdetection/Detector$DetectionFailedType;Lcom/megvii/livenessdetection/Detector$DetectionListener;Lcom/megvii/livenessdetection/DetectionFrame;)V

    goto/16 :goto_0

    .line 1588
    :pswitch_9
    const-string/jumbo v1, "LivenessDetection"

    const-string/jumbo v2, "wait for normal success"

    invoke-static {v1, v2}, Ljeu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    sget-object v1, Lcom/megvii/livenessdetection/DetectionFrame$FrameType;->WAITINGNORMAL:Lcom/megvii/livenessdetection/DetectionFrame$FrameType;

    invoke-virtual {v0, v1}, Lcom/megvii/livenessdetection/impl/b;->setFrameType(Lcom/megvii/livenessdetection/DetectionFrame$FrameType;)V

    .line 1590
    invoke-direct {p0, v0}, Lcom/megvii/livenessdetection/Detector$a;->a(Lcom/megvii/livenessdetection/impl/b;)V

    .line 1591
    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->j(Lcom/megvii/livenessdetection/Detector;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/megvii/livenessdetection/Detector$a$6;

    invoke-direct {v2, p0, v10, v0}, Lcom/megvii/livenessdetection/Detector$a$6;-><init>(Lcom/megvii/livenessdetection/Detector$a;Lcom/megvii/livenessdetection/Detector$DetectionListener;Lcom/megvii/livenessdetection/impl/b;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1602
    :pswitch_a
    const-string/jumbo v1, "LivenessDetection"

    const-string/jumbo v2, "is waiting for normal"

    invoke-static {v1, v2}, Ljeu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    sget-object v1, Lcom/megvii/livenessdetection/DetectionFrame$FrameType;->WAITINGNORMAL:Lcom/megvii/livenessdetection/DetectionFrame$FrameType;

    invoke-virtual {v0, v1}, Lcom/megvii/livenessdetection/impl/b;->setFrameType(Lcom/megvii/livenessdetection/DetectionFrame$FrameType;)V

    .line 1604
    invoke-direct {p0, v0}, Lcom/megvii/livenessdetection/Detector$a;->a(Lcom/megvii/livenessdetection/impl/b;)V

    .line 1605
    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->j(Lcom/megvii/livenessdetection/Detector;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/megvii/livenessdetection/Detector$a$7;

    invoke-direct {v2, p0, v10, v0}, Lcom/megvii/livenessdetection/Detector$a$7;-><init>(Lcom/megvii/livenessdetection/Detector$a;Lcom/megvii/livenessdetection/Detector$DetectionListener;Lcom/megvii/livenessdetection/impl/b;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1511
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
