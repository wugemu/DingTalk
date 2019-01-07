.class Lcom/alibaba/wukong/sync/AbstractSyncDownTask$4;
.super Ljava/lang/Object;
.source "AbstractSyncDownTask.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/sync/AbstractSyncDownTask;->getDifference(Lcom/alibaba/wukong/auth/az;)V
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
        "Lcom/alibaba/wukong/auth/ag;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/wukong/sync/AbstractSyncDownTask;

.field final synthetic val$syncInfo:Lcom/alibaba/wukong/auth/az;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/sync/AbstractSyncDownTask;Lcom/alibaba/wukong/auth/az;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/wukong/sync/AbstractSyncDownTask;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$4;->this$0:Lcom/alibaba/wukong/sync/AbstractSyncDownTask;

    iput-object p2, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$4;->val$syncInfo:Lcom/alibaba/wukong/auth/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 335
    iget-object v0, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$4;->this$0:Lcom/alibaba/wukong/sync/AbstractSyncDownTask;

    iget-object v1, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$4;->val$syncInfo:Lcom/alibaba/wukong/auth/az;

    invoke-static {v0, v1}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask;->access$500(Lcom/alibaba/wukong/sync/AbstractSyncDownTask;Lcom/alibaba/wukong/auth/az;)V

    .line 336
    return-void
.end method

.method public onProgress(Lcom/alibaba/wukong/auth/ag;I)V
    .locals 0
    .param p1, "data"    # Lcom/alibaba/wukong/auth/ag;
    .param p2, "progress"    # I

    .prologue
    .line 340
    return-void
.end method

.method public bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 277
    check-cast p1, Lcom/alibaba/wukong/auth/ag;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$4;->onProgress(Lcom/alibaba/wukong/auth/ag;I)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/wukong/auth/ag;)V
    .locals 12
    .param p1, "data"    # Lcom/alibaba/wukong/auth/ag;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 280
    const-string/jumbo v8, "[TAG] Sync task"

    const-string/jumbo v9, "base"

    invoke-static {v8, v9}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v3

    .line 282
    .local v3, "trace":Lhzv;
    if-nez p1, :cond_0

    .line 283
    :try_start_0
    const-string/jumbo v8, "[SYNC] getDiff null & ackDiff"

    invoke-virtual {v3, v8}, Lhzv;->b(Ljava/lang/String;)V

    .line 284
    iget-object v8, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$4;->this$0:Lcom/alibaba/wukong/sync/AbstractSyncDownTask;

    iget-object v9, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$4;->val$syncInfo:Lcom/alibaba/wukong/auth/az;

    invoke-static {v8, v9}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask;->access$500(Lcom/alibaba/wukong/sync/AbstractSyncDownTask;Lcom/alibaba/wukong/auth/az;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    invoke-static {v3}, Lhzt;->a(Lhzv;)V

    .line 329
    :goto_0
    return-void

    .line 288
    :cond_0
    :try_start_1
    iget-object v8, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$4;->val$syncInfo:Lcom/alibaba/wukong/auth/az;

    iget-wide v8, v8, Lcom/alibaba/wukong/auth/az;->bd:J

    const-wide/16 v10, 0x1

    add-long v4, v8, v10

    .line 289
    .local v4, "nextSeq":J
    iget-object v8, p1, Lcom/alibaba/wukong/auth/ag;->ay:Ljava/lang/Long;

    invoke-static {v8}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v6

    .line 290
    .local v6, "startSeq":J
    iget-object v8, p1, Lcom/alibaba/wukong/auth/ag;->az:Ljava/lang/Long;

    invoke-static {v8}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v0

    .line 291
    .local v0, "endSeq":J
    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    cmp-long v8, v0, v6

    if-lez v8, :cond_1

    .line 292
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[SYNC] getDiff next=start:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " end:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lhzv;->a(Ljava/lang/String;)V

    .line 293
    new-instance v2, Lcom/alibaba/wukong/auth/bb;

    const/4 v8, 0x0

    invoke-direct {v2, v8}, Lcom/alibaba/wukong/auth/bb;-><init>(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V

    .line 294
    .local v2, "mergeAck":Lcom/alibaba/wukong/auth/bb;
    new-instance v8, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$4$1;

    invoke-direct {v8, p0, p1}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$4$1;-><init>(Lcom/alibaba/wukong/sync/AbstractSyncDownTask$4;Lcom/alibaba/wukong/auth/ag;)V

    invoke-virtual {v2, v8}, Lcom/alibaba/wukong/auth/bb;->a(Lcom/alibaba/wukong/auth/bb$b;)V

    .line 322
    iget-object v8, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$4;->this$0:Lcom/alibaba/wukong/sync/AbstractSyncDownTask;

    const/4 v9, 0x0

    invoke-virtual {v8, p1, v2, v9}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask;->parseData(Lcom/alibaba/wukong/auth/ag;Lcom/alibaba/wukong/auth/bb;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    .end local v2    # "mergeAck":Lcom/alibaba/wukong/auth/bb;
    :goto_1
    invoke-static {v3}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 324
    :cond_1
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[SYNC] getDiff finish. next:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " start:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " end:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lhzv;->a(Ljava/lang/String;)V

    .line 325
    iget-object v8, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$4;->this$0:Lcom/alibaba/wukong/sync/AbstractSyncDownTask;

    iget-object v9, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$4;->val$syncInfo:Lcom/alibaba/wukong/auth/az;

    invoke-static {v8, v9}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask;->access$500(Lcom/alibaba/wukong/sync/AbstractSyncDownTask;Lcom/alibaba/wukong/auth/az;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 328
    .end local v0    # "endSeq":J
    .end local v4    # "nextSeq":J
    .end local v6    # "startSeq":J
    :catchall_0
    move-exception v8

    invoke-static {v3}, Lhzt;->a(Lhzv;)V

    throw v8
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 277
    check-cast p1, Lcom/alibaba/wukong/auth/ag;

    invoke-virtual {p0, p1}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$4;->onSuccess(Lcom/alibaba/wukong/auth/ag;)V

    return-void
.end method
