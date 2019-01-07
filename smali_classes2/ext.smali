.class public final Lext;
.super Lcom/alibaba/wukong/sync/SyncDataHandler;
.source "MemberChangedHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/wukong/sync/SyncDataHandler",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/MemberChangedModel;",
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
    const-class v0, Lcom/alibaba/android/teleconf/sdk/idl/model/MemberChangedModel;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/wukong/sync/SyncDataHandler;-><init>(ILjava/lang/Class;)V

    .line 34
    iput p1, p0, Lext;->a:I

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
            "Lcom/alibaba/android/teleconf/sdk/idl/model/MemberChangedModel;",
            ">;",
            "Lcom/alibaba/wukong/sync/SyncAck;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 39
    .local p1, "memberChangedModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/sdk/idl/model/MemberChangedModel;>;"
    invoke-virtual {p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 40
    if-eqz p1, :cond_1

    .line 41
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/model/MemberChangedModel;

    .line 42
    .local v0, "model":Lcom/alibaba/android/teleconf/sdk/idl/model/MemberChangedModel;
    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v2

    iget v3, p0, Lext;->a:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Leyn;->a(ILjava/lang/Object;ILjava/lang/String;)V

    goto :goto_0

    .line 47
    .end local v0    # "model":Lcom/alibaba/android/teleconf/sdk/idl/model/MemberChangedModel;
    :cond_1
    return-void
.end method
