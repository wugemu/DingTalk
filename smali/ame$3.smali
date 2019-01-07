.class final Lame$3;
.super Ljava/lang/Object;
.source "UploadMgr.java"

# interfaces
.implements Lalr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lame;


# direct methods
.method constructor <init>(Lame;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lame$3;->a:Lame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 7
    .param p1, "count"    # J
    .param p3, "dbSize"    # J

    .prologue
    .line 222
    const-string/jumbo v0, "BatchMode"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "count"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "dbSize"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lame$3;->a:Lame;

    invoke-static {v0}, Lame;->d(Lame;)J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    sget-object v0, Lcom/alibaba/analytics/core/sync/UploadMode;->BATCH:Lcom/alibaba/analytics/core/sync/UploadMode;

    iget-object v1, p0, Lame$3;->a:Lame;

    invoke-static {v1}, Lame;->b(Lame;)Lcom/alibaba/analytics/core/sync/UploadMode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 225
    invoke-static {}, Lamd;->b()Lamd;

    move-result-object v0

    iget-object v1, p0, Lame$3;->a:Lame;

    invoke-static {v1}, Lame;->a(Lame;)Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lamd;->a(Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;)V

    .line 226
    iget-object v0, p0, Lame$3;->a:Lame;

    invoke-static {}, Lanh;->a()Lanh;

    iget-object v1, p0, Lame$3;->a:Lame;

    invoke-static {v1}, Lame;->e(Lame;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iget-object v2, p0, Lame$3;->a:Lame;

    invoke-static {v2}, Lame;->c(Lame;)Lamg;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-static {v1, v2, v4, v5}, Lanh;->a(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    invoke-static {v0, v1}, Lame;->a(Lame;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 228
    :cond_0
    return-void
.end method
