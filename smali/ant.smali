.class public final Lant;
.super Lcom/alibaba/wukong/sync/SyncDataHandler;
.source "AdsReceiveHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/wukong/sync/SyncDataHandler",
        "<",
        "Lans;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    const/16 v0, 0xfa0

    const-class v1, Lans;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/wukong/sync/SyncDataHandler;-><init>(ILjava/lang/Class;)V

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
            "Lans;",
            ">;",
            "Lcom/alibaba/wukong/sync/SyncAck;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lans;>;"
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 42
    invoke-virtual {p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 43
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 44
    :cond_0
    const-string/jumbo v0, "sync"

    const-string/jumbo v1, "list=%d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    :goto_0
    return-void

    .line 47
    :cond_1
    const-string/jumbo v0, "sync"

    const-string/jumbo v1, "list=%d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    new-instance v0, Lant$1;

    invoke-direct {v0, p0, p1}, Lant$1;-><init>(Lant;Ljava/util/List;)V

    invoke-static {v0}, Lano;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
