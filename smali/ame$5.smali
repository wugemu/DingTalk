.class final Lame$5;
.super Ljava/lang/Object;
.source "UploadMgr.java"

# interfaces
.implements Laly;


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
    .line 266
    iput-object p1, p0, Lame$5;->a:Lame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 6
    .param p1, "count"    # J

    .prologue
    .line 269
    iget-object v0, p0, Lame$5;->a:Lame;

    iget-object v1, p0, Lame$5;->a:Lame;

    invoke-static {v1}, Lame;->h(Lame;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lame;->b(Lame;J)J

    .line 270
    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "mCurrentUploadInterval"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lame$5;->a:Lame;

    invoke-static {v3}, Lame;->i(Lame;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    invoke-static {}, Lamd;->b()Lamd;

    move-result-object v0

    iget-object v1, p0, Lame$5;->a:Lame;

    invoke-static {v1}, Lame;->a(Lame;)Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lamd;->a(Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;)V

    .line 272
    iget-object v0, p0, Lame$5;->a:Lame;

    invoke-static {}, Lanh;->a()Lanh;

    iget-object v1, p0, Lame$5;->a:Lame;

    invoke-static {v1}, Lame;->e(Lame;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iget-object v2, p0, Lame$5;->a:Lame;

    invoke-static {v2}, Lame;->c(Lame;)Lamg;

    move-result-object v2

    iget-object v3, p0, Lame$5;->a:Lame;

    invoke-static {v3}, Lame;->i(Lame;)J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Lanh;->a(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    invoke-static {v0, v1}, Lame;->a(Lame;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 273
    return-void
.end method
