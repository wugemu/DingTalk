.class final Lmz;
.super Ljava/lang/Object;
.source "RequestContext.java"


# instance fields
.field public final a:Lmn;

.field public final b:Lmm;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public volatile e:Lanetwork/channel/statist/StatisticData;

.field public volatile f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile g:Lmx;

.field public volatile h:Ljava/util/concurrent/Future;


# direct methods
.method public constructor <init>(Lmn;Lmm;I)V
    .locals 2
    .param p1, "config"    # Lmn;
    .param p2, "repeater"    # Lmm;
    .param p3, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lanetwork/channel/statist/StatisticData;

    invoke-direct {v0}, Lanetwork/channel/statist/StatisticData;-><init>()V

    iput-object v0, p0, Lmz;->e:Lanetwork/channel/statist/StatisticData;

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lmz;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    iput-object v1, p0, Lmz;->g:Lmx;

    .line 23
    iput-object v1, p0, Lmz;->h:Ljava/util/concurrent/Future;

    .line 26
    invoke-virtual {p1}, Lmn;->a()Ljava/lang/String;

    move-result-object v1

    if-nez p3, :cond_0

    const-string/jumbo v0, "HTTP"

    :goto_0
    invoke-static {v1, v0}, Lnc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmz;->c:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lmz;->a:Lmn;

    .line 28
    iget-object v0, p0, Lmz;->a:Lmn;

    iget-object v1, p0, Lmz;->c:Ljava/lang/String;

    .line 1137
    iput-object v1, v0, Lmn;->j:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lmz;->b:Lmm;

    .line 30
    iget-object v0, p0, Lmz;->b:Lmm;

    iget-object v1, p0, Lmz;->c:Ljava/lang/String;

    .line 1150
    iput-object v1, v0, Lmm;->b:Ljava/lang/String;

    .line 31
    iput p3, p0, Lmz;->d:I

    .line 32
    iget-object v0, p0, Lmz;->e:Lanetwork/channel/statist/StatisticData;

    .line 1177
    iget-object v1, p1, Lmn;->c:Ljava/lang/String;

    .line 32
    iput-object v1, v0, Lanetwork/channel/statist/StatisticData;->host:Ljava/lang/String;

    .line 33
    return-void

    .line 26
    :cond_0
    const-string/jumbo v0, "DGRD"

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 36
    iget-object v0, p0, Lmz;->h:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lmz;->h:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lmz;->h:Ljava/util/concurrent/Future;

    .line 40
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lmz;->g:Lmx;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lmz;->g:Lmx;

    invoke-interface {v0}, Lmx;->a()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lmz;->g:Lmx;

    .line 47
    :cond_0
    return-void
.end method
