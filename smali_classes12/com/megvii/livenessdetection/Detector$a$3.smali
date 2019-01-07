.class final Lcom/megvii/livenessdetection/Detector$a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/megvii/livenessdetection/Detector$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/megvii/livenessdetection/Detector$DetectionListener;

.field private synthetic b:Lcom/megvii/livenessdetection/impl/b;

.field private synthetic c:Lcom/megvii/livenessdetection/Detector$a;


# direct methods
.method constructor <init>(Lcom/megvii/livenessdetection/Detector$a;Lcom/megvii/livenessdetection/Detector$DetectionListener;Lcom/megvii/livenessdetection/impl/b;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lcom/megvii/livenessdetection/Detector$a$3;->c:Lcom/megvii/livenessdetection/Detector$a;

    iput-object p2, p0, Lcom/megvii/livenessdetection/Detector$a$3;->a:Lcom/megvii/livenessdetection/Detector$DetectionListener;

    iput-object p3, p0, Lcom/megvii/livenessdetection/Detector$a$3;->b:Lcom/megvii/livenessdetection/impl/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 521
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector$a$3;->a:Lcom/megvii/livenessdetection/Detector$DetectionListener;

    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a$3;->c:Lcom/megvii/livenessdetection/Detector$a;

    iget-object v1, v1, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->d(Lcom/megvii/livenessdetection/Detector;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a$3;->c:Lcom/megvii/livenessdetection/Detector$a;

    iget-object v1, v1, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    .line 522
    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->e(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdetection/DetectionConfig;

    move-result-object v1

    iget-wide v4, v1, Lcom/megvii/livenessdetection/DetectionConfig;->timeout:J

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a$3;->b:Lcom/megvii/livenessdetection/impl/b;

    .line 521
    invoke-interface {v0, v2, v3, v1}, Lcom/megvii/livenessdetection/Detector$DetectionListener;->onFrameDetected(JLcom/megvii/livenessdetection/DetectionFrame;)V

    .line 524
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector$a$3;->a:Lcom/megvii/livenessdetection/Detector$DetectionListener;

    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a$3;->b:Lcom/megvii/livenessdetection/impl/b;

    .line 525
    invoke-interface {v0, v1}, Lcom/megvii/livenessdetection/Detector$DetectionListener;->onDetectionSuccess(Lcom/megvii/livenessdetection/DetectionFrame;)Lcom/megvii/livenessdetection/Detector$DetectionType;

    move-result-object v0

    .line 526
    if-eqz v0, :cond_0

    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionType;->DONE:Lcom/megvii/livenessdetection/Detector$DetectionType;

    if-ne v0, v1, :cond_2

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector$a$3;->c:Lcom/megvii/livenessdetection/Detector$a;

    iget-object v0, v0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionType;->DONE:Lcom/megvii/livenessdetection/Detector$DetectionType;

    invoke-static {v0, v1}, Lcom/megvii/livenessdetection/Detector;->a(Lcom/megvii/livenessdetection/Detector;Lcom/megvii/livenessdetection/Detector$DetectionType;)Lcom/megvii/livenessdetection/Detector$DetectionType;

    .line 528
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector$a$3;->c:Lcom/megvii/livenessdetection/Detector$a;

    iget-object v0, v0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v0}, Lcom/megvii/livenessdetection/Detector;->a(Lcom/megvii/livenessdetection/Detector;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 529
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector$a$3;->c:Lcom/megvii/livenessdetection/Detector$a;

    iget-object v0, v0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v0}, Lcom/megvii/livenessdetection/Detector;->h(Lcom/megvii/livenessdetection/Detector;)Ljer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 530
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector$a$3;->c:Lcom/megvii/livenessdetection/Detector$a;

    iget-object v0, v0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v0}, Lcom/megvii/livenessdetection/Detector;->h(Lcom/megvii/livenessdetection/Detector;)Ljer;

    move-result-object v0

    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a$3;->c:Lcom/megvii/livenessdetection/Detector$a;

    iget-object v1, v1, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->c(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdetection/Detector$DetectionType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljer;->a(Lcom/megvii/livenessdetection/Detector$DetectionType;)V

    .line 531
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector$a$3;->c:Lcom/megvii/livenessdetection/Detector$a;

    iget-object v0, v0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v0}, Lcom/megvii/livenessdetection/Detector;->i(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdeteciton/obf/e;

    move-result-object v0

    const-string/jumbo v1, "8cd0604ba33e2ba7f38a56f0aec08a54"

    iget-object v2, p0, Lcom/megvii/livenessdetection/Detector$a$3;->c:Lcom/megvii/livenessdetection/Detector$a;

    iget-object v2, v2, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v2}, Lcom/megvii/livenessdetection/Detector;->h(Lcom/megvii/livenessdetection/Detector;)Ljer;

    move-result-object v2

    invoke-virtual {v2}, Ljer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/megvii/livenessdeteciton/obf/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    :cond_1
    :goto_0
    return-void

    .line 536
    :cond_2
    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a$3;->c:Lcom/megvii/livenessdetection/Detector$a;

    iget-object v1, v1, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-virtual {v1, v0}, Lcom/megvii/livenessdetection/Detector;->changeDetectionType(Lcom/megvii/livenessdetection/Detector$DetectionType;)V

    goto :goto_0
.end method
