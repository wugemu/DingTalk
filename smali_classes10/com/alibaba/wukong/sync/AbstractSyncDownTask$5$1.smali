.class Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5$1;
.super Ljava/lang/Object;
.source "AbstractSyncDownTask.java"

# interfaces
.implements Lcom/alibaba/wukong/auth/bb$b;


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

.field final synthetic val$syncInfo:Lcom/alibaba/wukong/auth/az;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5;Lcom/alibaba/wukong/auth/az;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5$1;->this$1:Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5;

    iput-object p2, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5$1;->val$syncInfo:Lcom/alibaba/wukong/auth/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeAckFailed()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 375
    const-string/jumbo v0, "[TAG] Sync task"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[SYNC] tooLong2 fail seq="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5$1;->val$syncInfo:Lcom/alibaba/wukong/auth/az;

    iget-wide v2, v2, Lcom/alibaba/wukong/auth/az;->bd:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "base"

    invoke-static {v0, v1, v2}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5$1;->this$1:Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5;

    iget-object v0, v0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5;->this$0:Lcom/alibaba/wukong/sync/AbstractSyncDownTask;

    invoke-virtual {v0}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask;->finish()V

    .line 378
    return-void
.end method

.method public onBeforeAckSuccess()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 364
    iget-object v0, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5$1;->this$1:Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5;

    iget-object v0, v0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5;->this$0:Lcom/alibaba/wukong/sync/AbstractSyncDownTask;

    iget-object v1, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5$1;->val$syncInfo:Lcom/alibaba/wukong/auth/az;

    invoke-static {v0, v1}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask;->access$100(Lcom/alibaba/wukong/sync/AbstractSyncDownTask;Lcom/alibaba/wukong/auth/az;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5$1;->this$1:Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5;

    iget-object v0, v0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5;->this$0:Lcom/alibaba/wukong/sync/AbstractSyncDownTask;

    iget-object v1, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5$1;->val$syncInfo:Lcom/alibaba/wukong/auth/az;

    invoke-static {v0, v1}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask;->access$500(Lcom/alibaba/wukong/sync/AbstractSyncDownTask;Lcom/alibaba/wukong/auth/az;)V

    .line 366
    const/4 v0, 0x1

    .line 369
    :goto_0
    return v0

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5$1;->this$1:Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5;

    iget-object v0, v0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$5;->this$0:Lcom/alibaba/wukong/sync/AbstractSyncDownTask;

    invoke-virtual {v0}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask;->finish()V

    .line 369
    const/4 v0, 0x0

    goto :goto_0
.end method
