.class public final Lbng;
.super Lcom/alibaba/wukong/sync/SyncDataHandler;
.source "UpdateSsidPushHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/wukong/sync/SyncDataHandler",
        "<",
        "Lbmx;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$PushType;->UPDATE_SSID:Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$PushType;

    iget v0, v0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$PushType;->value:I

    const-class v1, Lbmx;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/wukong/sync/SyncDataHandler;-><init>(ILjava/lang/Class;)V

    .line 17
    return-void
.end method


# virtual methods
.method public final onReceived(Ljava/util/List;Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 6
    .param p2, "syncAck"    # Lcom/alibaba/wukong/sync/SyncAck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbmx;",
            ">;",
            "Lcom/alibaba/wukong/sync/SyncAck;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 21
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lbmx;>;"
    invoke-virtual {p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 22
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbmx;

    .line 24
    .local v0, "model":Lbmx;
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->a()Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$PushType;->UPDATE_SSID:Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$PushType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->a(Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$PushType;Ljava/lang/Object;ILjava/lang/String;)V

    goto :goto_0

    .line 27
    .end local v0    # "model":Lbmx;
    :cond_0
    return-void
.end method
