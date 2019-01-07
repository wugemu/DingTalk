.class public final Lbwd;
.super Lcom/alibaba/wukong/sync/SyncParaDataHandler;
.source "LinkMicListSyncHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/wukong/sync/SyncParaDataHandler",
        "<",
        "Lbur;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 21
    const/16 v0, 0x2713

    const-class v1, Lbur;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/wukong/sync/SyncParaDataHandler;-><init>(ILjava/lang/Class;)V

    .line 22
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
            "Lbur;",
            ">;",
            "Lcom/alibaba/wukong/sync/SyncAck;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 26
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lbur;>;"
    if-eqz p2, :cond_0

    .line 27
    invoke-virtual {p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 30
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 31
    :cond_1
    const-string/jumbo v2, "live"

    const/4 v3, 0x0

    const-string/jumbo v4, "[SYNC] live linkmic models empty"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_2
    return-void

    .line 35
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbur;

    .line 36
    .local v0, "model":Lbur;
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/rpc/model/EvenWheatBroadCastObject;->fromIdl(Lbur;)Lcom/alibaba/android/dingtalk/live/rpc/model/EvenWheatBroadCastObject;

    move-result-object v1

    .line 37
    .local v1, "object":Lcom/alibaba/android/dingtalk/live/rpc/model/EvenWheatBroadCastObject;
    if-eqz v1, :cond_4

    .line 38
    invoke-static {}, Lbwg;->a()Lbwg;

    move-result-object v3

    .line 1103
    if-eqz v1, :cond_4

    .line 1107
    new-instance v4, Lbwg$3;

    invoke-direct {v4, v3, v1}, Lbwg$3;-><init>(Lbwg;Lcom/alibaba/android/dingtalk/live/rpc/model/EvenWheatBroadCastObject;)V

    invoke-static {v4}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
