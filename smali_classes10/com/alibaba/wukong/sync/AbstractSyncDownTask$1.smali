.class Lcom/alibaba/wukong/sync/AbstractSyncDownTask$1;
.super Ljava/lang/Object;
.source "AbstractSyncDownTask.java"

# interfaces
.implements Lcom/alibaba/wukong/auth/bb$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/sync/AbstractSyncDownTask;->process(Lcom/alibaba/wukong/auth/af;Lcom/alibaba/wukong/auth/bb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/wukong/sync/AbstractSyncDownTask;

.field final synthetic val$model:Lcom/alibaba/wukong/auth/ag;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/sync/AbstractSyncDownTask;Lcom/alibaba/wukong/auth/ag;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/wukong/sync/AbstractSyncDownTask;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$1;->this$0:Lcom/alibaba/wukong/sync/AbstractSyncDownTask;

    iput-object p2, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$1;->val$model:Lcom/alibaba/wukong/auth/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeAckFailed()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$1;->this$0:Lcom/alibaba/wukong/sync/AbstractSyncDownTask;

    invoke-virtual {v0}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask;->finish()V

    .line 102
    return-void
.end method

.method public onBeforeAckSuccess()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 92
    iget-object v2, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$1;->this$0:Lcom/alibaba/wukong/sync/AbstractSyncDownTask;

    iget-object v3, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$1;->val$model:Lcom/alibaba/wukong/auth/ag;

    invoke-static {v2, v3}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask;->access$000(Lcom/alibaba/wukong/sync/AbstractSyncDownTask;Lcom/alibaba/wukong/auth/ag;)Lcom/alibaba/wukong/auth/az;

    move-result-object v0

    .line 93
    .local v0, "newSyncInfo":Lcom/alibaba/wukong/auth/az;
    iget-object v2, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$1;->this$0:Lcom/alibaba/wukong/sync/AbstractSyncDownTask;

    invoke-static {v2, v0}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask;->access$100(Lcom/alibaba/wukong/sync/AbstractSyncDownTask;Lcom/alibaba/wukong/auth/az;)Z

    move-result v1

    .line 94
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$1;->this$0:Lcom/alibaba/wukong/sync/AbstractSyncDownTask;

    iget-object v3, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$1;->val$model:Lcom/alibaba/wukong/auth/ag;

    invoke-static {v2, v3}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask;->access$200(Lcom/alibaba/wukong/sync/AbstractSyncDownTask;Lcom/alibaba/wukong/auth/ag;)V

    .line 95
    iget-object v2, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$1;->this$0:Lcom/alibaba/wukong/sync/AbstractSyncDownTask;

    invoke-virtual {v2}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask;->finish()V

    .line 96
    return v1
.end method
