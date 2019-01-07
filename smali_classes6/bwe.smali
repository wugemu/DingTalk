.class public final Lbwe;
.super Lcom/alibaba/wukong/sync/SyncParaDataHandler;
.source "LinkMicSyncParaHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/wukong/sync/SyncParaDataHandler",
        "<",
        "Lbwo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 20
    const/16 v0, 0x2711

    const-class v1, Lbwo;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/wukong/sync/SyncParaDataHandler;-><init>(ILjava/lang/Class;)V

    .line 21
    return-void
.end method


# virtual methods
.method public final onReceived(Ljava/util/List;Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 5
    .param p2, "syncAck"    # Lcom/alibaba/wukong/sync/SyncAck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbwo;",
            ">;",
            "Lcom/alibaba/wukong/sync/SyncAck;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 25
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lbwo;>;"
    if-eqz p2, :cond_0

    .line 26
    invoke-virtual {p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 29
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 30
    :cond_1
    const-string/jumbo v1, "live"

    const/4 v2, 0x0

    const-string/jumbo v3, "[SYNC] live models empty"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_2
    return-void

    .line 34
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbwo;

    .line 35
    .local v0, "model":Lbwo;
    if-eqz v0, :cond_4

    .line 38
    invoke-static {}, Lbwg;->a()Lbwg;

    move-result-object v2

    iget-object v3, v0, Lbwo;->a:[B

    .line 1079
    if-eqz v3, :cond_4

    .line 1083
    new-instance v4, Lbwg$2;

    invoke-direct {v4, v2, v3}, Lbwg$2;-><init>(Lbwg;[B)V

    invoke-static {v4}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
