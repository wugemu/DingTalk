.class public Lcom/alibaba/wukong/auth/ak;
.super Lcom/alibaba/wukong/sync/SyncDataHandler;
.source "CustomSyncPushHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/wukong/sync/SyncDataHandler",
        "<",
        "Lcom/alibaba/wukong/auth/w;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    const/16 v0, 0xdad

    const-class v1, Lcom/alibaba/wukong/auth/w;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/wukong/sync/SyncDataHandler;-><init>(ILjava/lang/Class;)V

    .line 25
    return-void
.end method


# virtual methods
.method public onReceived(Ljava/util/List;Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 5
    .param p2, "ack"    # Lcom/alibaba/wukong/sync/SyncAck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/auth/w;",
            ">;",
            "Lcom/alibaba/wukong/sync/SyncAck;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 30
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/auth/w;>;"
    if-nez p1, :cond_0

    .line 31
    const-string/jumbo v3, "CustomSyncPushHandler"

    const-string/jumbo v4, "received CustomSyncModel is invalid"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v1, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lifj;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/auth/w;

    .line 37
    .local v2, "model":Lcom/alibaba/wukong/auth/w;
    new-instance v0, Lifj;

    invoke-direct {v0}, Lifj;-><init>()V

    .line 38
    .local v0, "data":Lifj;
    iget-object v4, v2, Lcom/alibaba/wukong/auth/w;->ad:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v0, Lifj;->a:I

    .line 39
    iget-object v4, v2, Lcom/alibaba/wukong/auth/w;->content:[B

    iput-object v4, v0, Lifj;->b:[B

    .line 40
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 43
    .end local v0    # "data":Lifj;
    .end local v2    # "model":Lcom/alibaba/wukong/auth/w;
    :cond_1
    invoke-static {v1}, Lcom/alibaba/wukong/auth/am;->b(Ljava/util/List;)V

    goto :goto_0
.end method
