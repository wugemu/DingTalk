.class public abstract Lcim;
.super Ljava/lang/Object;
.source "DebugLocationMonitor.java"


# instance fields
.field a:J

.field public b:J

.field c:Z

.field d:Ljava/lang/Runnable;

.field private e:J


# direct methods
.method protected constructor <init>()V
    .locals 4

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-wide/32 v2, 0xea60

    iput-wide v2, p0, Lcim;->e:J

    .line 17
    const-wide/16 v2, 0x2710

    iput-wide v2, p0, Lcim;->a:J

    .line 19
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcim;->b:J

    .line 22
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcim;->c:Z

    .line 24
    new-instance v1, Lcim$1;

    invoke-direct {v1, p0}, Lcim$1;-><init>(Lcim;)V

    iput-object v1, p0, Lcim;->d:Ljava/lang/Runnable;

    .line 32
    const-string/jumbo v1, "LIFECYCLE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 33
    .local v0, "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    new-instance v1, Lcim$2;

    invoke-direct {v1, p0}, Lcim$2;-><init>(Lcim;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->registerAppStateListener(Lcom/alibaba/doraemon/lifecycle/APPStateListener;)V

    .line 49
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 6
    .param p1, "info"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 62
    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 63
    const-wide/16 v2, -0x1

    iget-wide v4, p0, Lcim;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcim;->b:J

    sub-long v0, v2, v4

    .line 65
    .local v0, "interval":J
    iget-wide v2, p0, Lcim;->e:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 66
    invoke-virtual {p0, p1}, Lcim;->b(Ljava/lang/String;)V

    .line 70
    .end local v0    # "interval":J
    :cond_0
    iget-boolean v2, p0, Lcim;->c:Z

    if-nez v2, :cond_1

    .line 71
    invoke-virtual {p0, p1}, Lcim;->c(Ljava/lang/String;)V

    .line 74
    :cond_1
    return-void
.end method

.method public abstract b(Ljava/lang/String;)V
.end method

.method public abstract c(Ljava/lang/String;)V
.end method
