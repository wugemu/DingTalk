.class public final Lbwl;
.super Lcom/alibaba/wukong/sync/SyncParaDataHandler;
.source "PowerMessageSyncHandler.java"


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
    .line 27
    const/16 v0, 0x2710

    const-class v1, Lbwo;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/wukong/sync/SyncParaDataHandler;-><init>(ILjava/lang/Class;)V

    .line 28
    return-void
.end method


# virtual methods
.method public final onReceived(Ljava/util/List;Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 8
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

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lbwo;>;"
    const/4 v2, 0x0

    .line 32
    if-eqz p2, :cond_0

    .line 33
    invoke-virtual {p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 36
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 37
    :cond_1
    const-string/jumbo v0, "live"

    const/4 v1, 0x0

    const-string/jumbo v2, "[SYNC] power message models empty"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_2
    return-void

    .line 1045
    :cond_3
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1046
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 1050
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    .line 1051
    :goto_0
    if-ge v3, v4, :cond_5

    .line 1052
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbwo;

    .line 1053
    const-string/jumbo v1, "1"

    const/4 v6, 0x1

    const-string/jumbo v7, "18"

    iget-object v0, v0, Lbwo;->a:[B

    invoke-static {v1, v6, v7, v0}, Lcom/alibaba/android/dingtalk/live/msg/ReceivedConverter;->parseReceive(Ljava/lang/String;ILjava/lang/String;[B)Ljava/util/List;

    move-result-object v6

    .line 1057
    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    move v1, v2

    .line 1058
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1059
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;->msg:Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;

    check-cast v0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/msg/PowerMessageUtils;->fromBaseMessage(Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;)Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1058
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1051
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 1064
    :cond_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 1065
    if-lez v1, :cond_2

    .line 1066
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1068
    :goto_2
    if-ge v2, v1, :cond_2

    .line 1069
    invoke-static {}, Lbwg;->a()Lbwg;

    move-result-object v3

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;

    .line 2055
    if-eqz v0, :cond_6

    .line 2059
    new-instance v4, Lbwg$1;

    invoke-direct {v4, v3, v0}, Lbwg$1;-><init>(Lbwg;Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;)V

    invoke-static {v4}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1068
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method
