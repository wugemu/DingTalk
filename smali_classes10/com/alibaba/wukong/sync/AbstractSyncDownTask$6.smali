.class Lcom/alibaba/wukong/sync/AbstractSyncDownTask$6;
.super Ljava/lang/Object;
.source "AbstractSyncDownTask.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/sync/AbstractSyncDownTask;->getStateAndDiff()V
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


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/sync/AbstractSyncDownTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/wukong/sync/AbstractSyncDownTask;

    .prologue
    .line 420
    iput-object p1, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$6;->this$0:Lcom/alibaba/wukong/sync/AbstractSyncDownTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 435
    iget-object v0, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$6;->this$0:Lcom/alibaba/wukong/sync/AbstractSyncDownTask;

    invoke-virtual {v0}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask;->finish()V

    .line 436
    return-void
.end method

.method public onProgress(Lcom/alibaba/wukong/auth/az;I)V
    .locals 0
    .param p1, "data"    # Lcom/alibaba/wukong/auth/az;
    .param p2, "progress"    # I

    .prologue
    .line 440
    return-void
.end method

.method public bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 420
    check-cast p1, Lcom/alibaba/wukong/auth/az;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$6;->onProgress(Lcom/alibaba/wukong/auth/az;I)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/wukong/auth/az;)V
    .locals 3
    .param p1, "syncInfo"    # Lcom/alibaba/wukong/auth/az;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 424
    const-string/jumbo v0, "[TAG] Sync task"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[SYNC] tooLong2 getState success no listeners "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p1}, Lcom/alibaba/wukong/auth/az;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "base"

    .line 424
    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$6;->this$0:Lcom/alibaba/wukong/sync/AbstractSyncDownTask;

    invoke-static {v0, p1}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask;->access$100(Lcom/alibaba/wukong/sync/AbstractSyncDownTask;Lcom/alibaba/wukong/auth/az;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$6;->this$0:Lcom/alibaba/wukong/sync/AbstractSyncDownTask;

    invoke-static {v0, p1}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask;->access$500(Lcom/alibaba/wukong/sync/AbstractSyncDownTask;Lcom/alibaba/wukong/auth/az;)V

    .line 431
    :goto_0
    return-void

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$6;->this$0:Lcom/alibaba/wukong/sync/AbstractSyncDownTask;

    invoke-virtual {v0}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask;->finish()V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 420
    check-cast p1, Lcom/alibaba/wukong/auth/az;

    invoke-virtual {p0, p1}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$6;->onSuccess(Lcom/alibaba/wukong/auth/az;)V

    return-void
.end method
