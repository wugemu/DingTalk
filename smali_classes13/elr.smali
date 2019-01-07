.class public final Lelr;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "SyncAdapter.java"


# instance fields
.field private a:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "autoInitialize"    # Z

    .prologue
    .line 25
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 22
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lelr;->a:J

    .line 26
    return-void
.end method


# virtual methods
.method public final onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 8
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "provider"    # Landroid/content/ContentProviderClient;
    .param p5, "syncResult"    # Landroid/content/SyncResult;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 38
    .local v0, "curTime":J
    const-wide/16 v4, -0x1

    iget-wide v6, p0, Lelr;->a:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    iget-wide v4, p0, Lelr;->a:J

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 39
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 40
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    if-eqz v2, :cond_0

    .line 41
    const-string/jumbo v3, "Sync"

    const-string/jumbo v4, "Interval"

    iget-wide v6, p0, Lelr;->a:J

    sub-long v6, v0, v6

    long-to-double v6, v6

    invoke-interface {v2, v3, v4, v6, v7}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;D)V

    .line 45
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :cond_0
    iput-wide v0, p0, Lelr;->a:J

    .line 46
    return-void
.end method
