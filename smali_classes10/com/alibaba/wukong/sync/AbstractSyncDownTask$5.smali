.class Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5;
.super Ljava/lang/Object;
.source "AbstractSyncDownTask.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/sync/AbstractSyncDownTask;->onTooLong2(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/auth/az;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/wukong/sync/AbstractSyncDownTask;

.field final synthetic val$listeners:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/sync/AbstractSyncDownTask;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/wukong/sync/AbstractSyncDownTask;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5;->this$0:Lcom/alibaba/wukong/sync/AbstractSyncDownTask;

    iput-object p2, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5;->val$listeners:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5;->this$0:Lcom/alibaba/wukong/sync/AbstractSyncDownTask;

    invoke-virtual {v0}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask;->finish()V

    .line 406
    return-void
.end method

.method public onProgress(Lcom/alibaba/wukong/auth/az;I)V
    .locals 0
    .param p1, "data"    # Lcom/alibaba/wukong/auth/az;
    .param p2, "progress"    # I

    .prologue
    .line 410
    return-void
.end method

.method public bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 352
    check-cast p1, Lcom/alibaba/wukong/auth/az;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5;->onProgress(Lcom/alibaba/wukong/auth/az;I)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/wukong/auth/az;)V
    .locals 4
    .param p1, "syncInfo"    # Lcom/alibaba/wukong/auth/az;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 356
    const-string/jumbo v1, "[TAG] Sync task"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[SYNC] tooLong2 getState success "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p1}, Lcom/alibaba/wukong/auth/az;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "base"

    .line 356
    invoke-static {v1, v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    new-instance v0, Lcom/alibaba/wukong/auth/bb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/wukong/auth/bb;-><init>(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V

    .line 359
    .local v0, "mergeAck":Lcom/alibaba/wukong/auth/bb;
    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/wukong/auth/bb;->setTimeout(J)V

    .line 360
    new-instance v1, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5$1;-><init>(Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5;Lcom/alibaba/wukong/auth/az;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/auth/bb;->a(Lcom/alibaba/wukong/auth/bb$b;)V

    .line 382
    iget-object v1, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5;->this$0:Lcom/alibaba/wukong/sync/AbstractSyncDownTask;

    invoke-virtual {v1}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5$2;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5$2;-><init>(Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5;Lcom/alibaba/wukong/auth/bb;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 401
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 352
    check-cast p1, Lcom/alibaba/wukong/auth/az;

    invoke-virtual {p0, p1}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5;->onSuccess(Lcom/alibaba/wukong/auth/az;)V

    return-void
.end method
