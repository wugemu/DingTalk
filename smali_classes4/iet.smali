.class public final Liet;
.super Lcom/alibaba/wukong/sync/SyncDataHandler;
.source "CallPushHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/wukong/sync/SyncDataHandler",
        "<",
        "Lcom/alibaba/wukong/openav/internal/channel/model/ConferenceIPCallSignalModel;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/16 v1, 0x7f3

    .line 36
    const-class v0, Lcom/alibaba/wukong/openav/internal/channel/model/ConferenceIPCallSignalModel;

    invoke-direct {p0, v1, v0}, Lcom/alibaba/wukong/sync/SyncDataHandler;-><init>(ILjava/lang/Class;)V

    .line 37
    iput v1, p0, Liet;->a:I

    .line 38
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
            "Lcom/alibaba/wukong/openav/internal/channel/model/ConferenceIPCallSignalModel;",
            ">;",
            "Lcom/alibaba/wukong/sync/SyncAck;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 42
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/openav/internal/channel/model/ConferenceIPCallSignalModel;>;"
    invoke-virtual {p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 43
    if-eqz p1, :cond_1

    .line 44
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/openav/internal/channel/model/ConferenceIPCallSignalModel;

    .line 45
    .local v0, "model":Lcom/alibaba/wukong/openav/internal/channel/model/ConferenceIPCallSignalModel;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/alibaba/wukong/openav/internal/channel/model/ConferenceIPCallSignalModel;->messageContent:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 47
    invoke-static {}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a()Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    move-result-object v2

    iget-object v3, v0, Lcom/alibaba/wukong/openav/internal/channel/model/ConferenceIPCallSignalModel;->messageContent:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 51
    .end local v0    # "model":Lcom/alibaba/wukong/openav/internal/channel/model/ConferenceIPCallSignalModel;
    :cond_1
    return-void
.end method
