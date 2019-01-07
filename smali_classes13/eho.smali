.class public final Leho;
.super Lcom/alibaba/wukong/sync/SyncDataHandler;
.source "PWPMessageCenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/wukong/sync/SyncDataHandler",
        "<",
        "Lehh;",
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
    const/16 v1, 0x96f

    .line 24
    const-class v0, Lehh;

    invoke-direct {p0, v1, v0}, Lcom/alibaba/wukong/sync/SyncDataHandler;-><init>(ILjava/lang/Class;)V

    .line 25
    iput v1, p0, Leho;->a:I

    .line 26
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
            "Lehh;",
            ">;",
            "Lcom/alibaba/wukong/sync/SyncAck;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 30
    .local p1, "createModels":Ljava/util/List;, "Ljava/util/List<Lehh;>;"
    invoke-virtual {p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 31
    if-eqz p1, :cond_1

    .line 32
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lehh;

    .line 33
    .local v0, "model":Lehh;
    if-eqz v0, :cond_0

    .line 34
    invoke-static {}, Lehs;->a()Lehs;

    move-result-object v2

    iget v3, p0, Leho;->a:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Lehs;->a(ILjava/lang/Object;ILjava/lang/String;)V

    goto :goto_0

    .line 38
    .end local v0    # "model":Lehh;
    :cond_1
    return-void
.end method
