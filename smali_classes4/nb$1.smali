.class final Lnb$1;
.super Ljava/lang/Object;
.source "UnifiedRequestTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnb;


# direct methods
.method constructor <init>(Lnb;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lnb$1;->a:Lnb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v5, -0xca

    .line 63
    iget-object v1, p0, Lnb$1;->a:Lnb;

    .line 1026
    iget-object v1, v1, Lnb;->a:Lmz;

    .line 63
    iget-object v1, v1, Lmz;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    const-string/jumbo v1, "ANet.UnifiedRequestTask"

    const-string/jumbo v2, "task time out"

    iget-object v3, p0, Lnb$1;->a:Lnb;

    .line 2026
    iget-object v3, v3, Lnb;->a:Lmz;

    .line 64
    iget-object v3, v3, Lmz;->c:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v1, p0, Lnb$1;->a:Lnb;

    .line 3026
    iget-object v1, v1, Lnb;->a:Lmz;

    .line 66
    invoke-virtual {v1}, Lmz;->b()V

    .line 67
    iget-object v1, p0, Lnb$1;->a:Lnb;

    .line 4026
    iget-object v1, v1, Lnb;->a:Lmz;

    .line 67
    iget-object v1, v1, Lmz;->e:Lanetwork/channel/statist/StatisticData;

    iput v5, v1, Lanetwork/channel/statist/StatisticData;->resultCode:I

    .line 68
    iget-object v1, p0, Lnb$1;->a:Lnb;

    .line 5026
    iget-object v1, v1, Lnb;->a:Lmz;

    .line 68
    iget-object v1, v1, Lmz;->b:Lmm;

    new-instance v2, Lanetwork/channel/aidl/DefaultFinishEvent;

    iget-object v3, p0, Lnb$1;->a:Lnb;

    .line 6026
    iget-object v3, v3, Lnb;->a:Lmz;

    .line 68
    iget-object v3, v3, Lmz;->e:Lanetwork/channel/statist/StatisticData;

    invoke-direct {v2, v5, v6, v3}, Lanetwork/channel/aidl/DefaultFinishEvent;-><init>(ILjava/lang/String;Lanetwork/channel/statist/StatisticData;)V

    invoke-virtual {v1, v2}, Lmm;->a(Lanetwork/channel/aidl/DefaultFinishEvent;)V

    .line 70
    iget-object v1, p0, Lnb$1;->a:Lnb;

    .line 7026
    iget-object v1, v1, Lnb;->a:Lmz;

    .line 70
    iget-object v1, v1, Lmz;->a:Lmn;

    .line 7106
    iget-object v0, v1, Lmn;->k:Lanet/channel/statist/RequestStatistic;

    .line 71
    .local v0, "rs":Lanet/channel/statist/RequestStatistic;
    iput v5, v0, Lanet/channel/statist/RequestStatistic;->statusCode:I

    .line 72
    invoke-static {v5}, Lks;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanet/channel/statist/RequestStatistic;->msg:Ljava/lang/String;

    .line 73
    invoke-static {}, Lih;->a()Lij;

    move-result-object v1

    invoke-interface {v1, v0}, Lij;->a(Lanet/channel/statist/StatObject;)V

    .line 74
    invoke-static {}, Lih;->a()Lij;

    move-result-object v1

    new-instance v2, Lanet/channel/statist/ExceptionStatistic;

    invoke-direct {v2, v5, v6, v0, v6}, Lanet/channel/statist/ExceptionStatistic;-><init>(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lij;->a(Lanet/channel/statist/StatObject;)V

    .line 76
    .end local v0    # "rs":Lanet/channel/statist/RequestStatistic;
    :cond_0
    return-void
.end method
