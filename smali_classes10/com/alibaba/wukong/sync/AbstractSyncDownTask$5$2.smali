.class Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5$2;
.super Ljava/lang/Object;
.source "AbstractSyncDownTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5;->onSuccess(Lcom/alibaba/wukong/auth/az;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5;

.field final synthetic val$mergeAck:Lcom/alibaba/wukong/auth/bb;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5;Lcom/alibaba/wukong/auth/bb;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5$2;->this$1:Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5;

    iput-object p2, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5$2;->val$mergeAck:Lcom/alibaba/wukong/auth/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 386
    iget-object v5, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5$2;->this$1:Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5;

    iget-object v5, v5, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5;->val$listeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 387
    .local v4, "size":I
    iget-object v5, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5$2;->val$mergeAck:Lcom/alibaba/wukong/auth/bb;

    invoke-virtual {v5, v4}, Lcom/alibaba/wukong/auth/bb;->a(I)Ljava/util/List;

    move-result-object v1

    .line 390
    .local v1, "acks":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/sync/SyncAck;>;"
    const-string/jumbo v5, "[TAG] Sync task"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[SYNC] onTooLong2 listeners size="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "base"

    invoke-static {v5, v6, v7}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 394
    iget-object v5, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5$2;->this$1:Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5;

    iget-object v5, v5, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5;->val$listeners:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/sync/SyncEventListener;

    .line 395
    .local v3, "listener":Lcom/alibaba/wukong/sync/SyncEventListener;
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/sync/SyncAck;

    .line 396
    .local v0, "ack":Lcom/alibaba/wukong/sync/SyncAck;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/alibaba/wukong/sync/SyncAck;->setTag(Ljava/lang/String;)V

    .line 397
    invoke-interface {v3, v0}, Lcom/alibaba/wukong/sync/SyncEventListener;->onTooLong2(Lcom/alibaba/wukong/sync/SyncAck;)V

    .line 393
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 399
    .end local v0    # "ack":Lcom/alibaba/wukong/sync/SyncAck;
    .end local v3    # "listener":Lcom/alibaba/wukong/sync/SyncEventListener;
    :cond_0
    return-void
.end method
