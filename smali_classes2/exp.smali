.class public final Lexp;
.super Lcom/alibaba/wukong/sync/SyncDataHandler;
.source "ConfChangedHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/wukong/sync/SyncDataHandler",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/ConfChangedModel;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 33
    const-class v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfChangedModel;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/wukong/sync/SyncDataHandler;-><init>(ILjava/lang/Class;)V

    .line 34
    iput p1, p0, Lexp;->a:I

    .line 35
    return-void
.end method


# virtual methods
.method public final onReceived(Ljava/util/List;Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 6
    .param p2, "ack"    # Lcom/alibaba/wukong/sync/SyncAck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConfChangedModel;",
            ">;",
            "Lcom/alibaba/wukong/sync/SyncAck;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p1, "confChangedModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/sdk/idl/model/ConfChangedModel;>;"
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 39
    invoke-virtual {p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 40
    if-eqz p1, :cond_1

    .line 41
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lexp;->a:I

    const/16 v2, 0x7d0

    if-eq v1, v2, :cond_0

    iget v1, p0, Lexp;->a:I

    const/16 v2, 0x7d5

    if-ne v1, v2, :cond_2

    .line 42
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfChangedModel;

    .line 43
    .local v0, "model":Lcom/alibaba/android/teleconf/sdk/idl/model/ConfChangedModel;
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v1

    iget v2, p0, Lexp;->a:I

    invoke-virtual {v1, v2, v0, v4, v5}, Leyn;->a(ILjava/lang/Object;ILjava/lang/String;)V

    .line 52
    .end local v0    # "model":Lcom/alibaba/android/teleconf/sdk/idl/model/ConfChangedModel;
    :cond_1
    return-void

    .line 46
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfChangedModel;

    .line 47
    .restart local v0    # "model":Lcom/alibaba/android/teleconf/sdk/idl/model/ConfChangedModel;
    if-eqz v0, :cond_3

    .line 48
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v2

    iget v3, p0, Lexp;->a:I

    invoke-virtual {v2, v3, v0, v4, v5}, Leyn;->a(ILjava/lang/Object;ILjava/lang/String;)V

    goto :goto_0
.end method
