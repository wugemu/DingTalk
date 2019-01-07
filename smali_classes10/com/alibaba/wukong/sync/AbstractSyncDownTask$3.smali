.class Lcom/alibaba/wukong/sync/AbstractSyncDownTask$3;
.super Ljava/lang/Object;
.source "AbstractSyncDownTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/sync/AbstractSyncDownTask;->parseData(Lcom/alibaba/wukong/auth/ag;Lcom/alibaba/wukong/auth/bb;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/wukong/sync/AbstractSyncDownTask;

.field final synthetic val$handler:Lcom/alibaba/wukong/sync/SyncDataHandler;

.field final synthetic val$reconnectType:I

.field final synthetic val$val:Lcom/alibaba/wukong/sync/AbstractSyncDownTask$ParsedEntity;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/sync/AbstractSyncDownTask;Lcom/alibaba/wukong/sync/SyncDataHandler;Lcom/alibaba/wukong/sync/AbstractSyncDownTask$ParsedEntity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/wukong/sync/AbstractSyncDownTask;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$3;->this$0:Lcom/alibaba/wukong/sync/AbstractSyncDownTask;

    iput-object p2, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$3;->val$handler:Lcom/alibaba/wukong/sync/SyncDataHandler;

    iput-object p3, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$3;->val$val:Lcom/alibaba/wukong/sync/AbstractSyncDownTask$ParsedEntity;

    iput p4, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$3;->val$reconnectType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 227
    iget-object v1, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$3;->val$handler:Lcom/alibaba/wukong/sync/SyncDataHandler;

    invoke-virtual {v1}, Lcom/alibaba/wukong/sync/SyncDataHandler;->getTypeFilter()Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->getObjectTypes()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "types":Ljava/lang/String;
    const-string/jumbo v1, "[TAG] Sync task"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[SYNC] dispatch handler "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "base"

    invoke-static {v1, v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$3;->val$val:Lcom/alibaba/wukong/sync/AbstractSyncDownTask$ParsedEntity;

    invoke-static {v1}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$ParsedEntity;->access$300(Lcom/alibaba/wukong/sync/AbstractSyncDownTask$ParsedEntity;)Lcom/alibaba/wukong/sync/SyncAck;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$3;->val$val:Lcom/alibaba/wukong/sync/AbstractSyncDownTask$ParsedEntity;

    invoke-static {v1}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$ParsedEntity;->access$300(Lcom/alibaba/wukong/sync/AbstractSyncDownTask$ParsedEntity;)Lcom/alibaba/wukong/sync/SyncAck;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$3;->val$reconnectType:I

    invoke-virtual {v1, v2}, Lcom/alibaba/wukong/sync/SyncAck;->setReconnectType(I)V

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$3;->val$handler:Lcom/alibaba/wukong/sync/SyncDataHandler;

    iget-object v2, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$3;->val$val:Lcom/alibaba/wukong/sync/AbstractSyncDownTask$ParsedEntity;

    invoke-static {v2}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$ParsedEntity;->access$400(Lcom/alibaba/wukong/sync/AbstractSyncDownTask$ParsedEntity;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$3;->val$val:Lcom/alibaba/wukong/sync/AbstractSyncDownTask$ParsedEntity;

    invoke-static {v3}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$ParsedEntity;->access$300(Lcom/alibaba/wukong/sync/AbstractSyncDownTask$ParsedEntity;)Lcom/alibaba/wukong/sync/SyncAck;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/wukong/sync/SyncDataHandler;->onReceived(Ljava/util/List;Lcom/alibaba/wukong/sync/SyncAck;)V

    .line 232
    return-void
.end method
