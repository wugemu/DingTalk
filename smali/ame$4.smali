.class final Lame$4;
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
    .line 242
    iput-object p1, p0, Lame$4;->a:Lame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 5
    .param p1, "count"    # J

    .prologue
    .line 245
    iget-object v0, p0, Lame$4;->a:Lame;

    invoke-static {v0, p1, p2}, Lame;->a(Lame;J)J

    .line 246
    sget-object v0, Lcom/alibaba/analytics/core/sync/UploadMode;->LAUNCH:Lcom/alibaba/analytics/core/sync/UploadMode;

    iget-object v1, p0, Lame$4;->a:Lame;

    invoke-static {v1}, Lame;->b(Lame;)Lcom/alibaba/analytics/core/sync/UploadMode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 247
    iget-object v0, p0, Lame$4;->a:Lame;

    invoke-static {v0}, Lame;->f(Lame;)J

    move-result-wide v0

    iget-object v2, p0, Lame$4;->a:Lame;

    invoke-static {v2}, Lame;->g(Lame;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 248
    iget-object v0, p0, Lame$4;->a:Lame;

    invoke-static {v0}, Lame;->e(Lame;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 251
    :cond_0
    return-void
.end method
