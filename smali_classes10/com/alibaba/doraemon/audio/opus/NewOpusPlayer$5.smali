.class Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$5;
.super Ljava/lang/Object;
.source "NewOpusPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->seekOpusFile(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

.field final synthetic val$scale:F

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;FLjava/util/concurrent/Semaphore;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$5;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    iput p2, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$5;->val$scale:F

    iput-object p3, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$5;->val$semaphore:Ljava/util/concurrent/Semaphore;

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
    const/4 v4, 0x0

    .line 224
    iget-object v2, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$5;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    monitor-enter v2

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$5;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-static {v1}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$600(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$5;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-static {v1}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$400(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)Lcom/alibaba/doraemon/audio/opus/OpusTool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/doraemon/audio/opus/OpusTool;->closeOpusFile()V

    .line 227
    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$5;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-static {v1}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$400(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)Lcom/alibaba/doraemon/audio/opus/OpusTool;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$5;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-static {v3}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$300(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/audio/opus/OpusTool;->openOpusFile(Ljava/lang/String;)I

    .line 230
    :cond_0
    iget v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$5;->val$scale:F

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$5;->val$scale:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_1

    .line 231
    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$5;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-static {v1}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$400(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)Lcom/alibaba/doraemon/audio/opus/OpusTool;

    move-result-object v1

    iget v3, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$5;->val$scale:F

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/audio/opus/OpusTool;->seekOpusFile(F)I

    move-result v0

    .line 235
    .local v0, "result":I
    :goto_0
    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$5;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    const-string/jumbo v3, "NewOpusPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "result:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",current position:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$5;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-static {v5}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$400(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)Lcom/alibaba/doraemon/audio/opus/OpusTool;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/doraemon/audio/opus/OpusTool;->getCurrentPosition()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",totalPosition:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$5;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-static {v5}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$400(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)Lcom/alibaba/doraemon/audio/opus/OpusTool;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/doraemon/audio/opus/OpusTool;->getTotalDuration()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$200(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$5;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 237
    monitor-exit v2

    return-void

    .line 233
    .end local v0    # "result":I
    :cond_1
    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$5;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-static {v1}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$400(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)Lcom/alibaba/doraemon/audio/opus/OpusTool;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/audio/opus/OpusTool;->seekOpusFile(F)I

    move-result v0

    .restart local v0    # "result":I
    goto :goto_0

    .line 237
    .end local v0    # "result":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
