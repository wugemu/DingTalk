.class public final Lbwh;
.super Lcom/alibaba/wukong/sync/SyncParaDataHandler;
.source "LiveMessageSyncHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/wukong/sync/SyncParaDataHandler",
        "<",
        "Lbwm;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 22
    const/16 v0, 0x2712

    const-class v1, Lbwm;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/wukong/sync/SyncParaDataHandler;-><init>(ILjava/lang/Class;)V

    .line 23
    return-void
.end method


# virtual methods
.method public final onReceived(Ljava/util/List;Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 4
    .param p2, "syncAck"    # Lcom/alibaba/wukong/sync/SyncAck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbwm;",
            ">;",
            "Lcom/alibaba/wukong/sync/SyncAck;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 27
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lbwm;>;"
    if-eqz p2, :cond_0

    .line 28
    invoke-virtual {p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 31
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 32
    :cond_1
    const-string/jumbo v1, "live"

    const/4 v2, 0x0

    const-string/jumbo v3, "[SYNC] live message models empty"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_2
    :goto_0
    return-void

    .line 36
    :cond_3
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;->fromIdl(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 37
    .local v0, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;>;"
    if-eqz v0, :cond_2

    .line 38
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 39
    invoke-static {}, Lbwg;->a()Lbwg;

    move-result-object v1

    .line 1127
    if-eqz v0, :cond_2

    .line 1131
    new-instance v2, Lbwg$4;

    invoke-direct {v2, v1, v0}, Lbwg$4;-><init>(Lbwg;Ljava/util/List;)V

    invoke-static {v2}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
