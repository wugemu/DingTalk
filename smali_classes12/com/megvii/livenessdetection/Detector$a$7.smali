.class final Lcom/megvii/livenessdetection/Detector$a$7;
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
    .line 605
    iput-object p1, p0, Lcom/megvii/livenessdetection/Detector$a$7;->c:Lcom/megvii/livenessdetection/Detector$a;

    iput-object p2, p0, Lcom/megvii/livenessdetection/Detector$a$7;->a:Lcom/megvii/livenessdetection/Detector$DetectionListener;

    iput-object p3, p0, Lcom/megvii/livenessdetection/Detector$a$7;->b:Lcom/megvii/livenessdetection/impl/b;

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
    .line 608
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector$a$7;->a:Lcom/megvii/livenessdetection/Detector$DetectionListener;

    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a$7;->c:Lcom/megvii/livenessdetection/Detector$a;

    iget-object v1, v1, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->d(Lcom/megvii/livenessdetection/Detector;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a$7;->c:Lcom/megvii/livenessdetection/Detector$a;

    iget-object v1, v1, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    .line 609
    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->e(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdetection/DetectionConfig;

    move-result-object v1

    iget-wide v4, v1, Lcom/megvii/livenessdetection/DetectionConfig;->timeout:J

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a$7;->b:Lcom/megvii/livenessdetection/impl/b;

    .line 608
    invoke-interface {v0, v2, v3, v1}, Lcom/megvii/livenessdetection/Detector$DetectionListener;->onFrameDetected(JLcom/megvii/livenessdetection/DetectionFrame;)V

    .line 611
    return-void
.end method
