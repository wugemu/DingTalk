.class Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$9;
.super Ljava/lang/Object;
.source "NewOpusPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->handleError(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

.field final synthetic val$extra:I

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$9;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    iput p2, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$9;->val$what:I

    iput p3, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$9;->val$extra:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 393
    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$9;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    const-string/jumbo v2, "NewOpusPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "handleError run() what:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$9;->val$what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",extra:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$9;->val$extra:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$200(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$9;->val$extra:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 395
    invoke-static {}, Lcom/alibaba/doraemon/audio/opus/OpusTool;->increaseOpusPlayErrorTimes()V

    .line 397
    :cond_0
    const/4 v0, 0x0

    .line 398
    .local v0, "errorWasHandled":Z
    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$9;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->getOnErrorlistener()Lcom/alibaba/doraemon/audio/opus/IOpusPlayer$OnErrorListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 399
    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$9;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->getOnErrorlistener()Lcom/alibaba/doraemon/audio/opus/IOpusPlayer$OnErrorListener;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$9;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    iget v3, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$9;->val$what:I

    iget v4, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$9;->val$extra:I

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/audio/opus/IOpusPlayer$OnErrorListener;->onError(Lcom/alibaba/doraemon/audio/opus/IOpusPlayer;II)Z

    move-result v0

    .line 401
    :cond_1
    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$9;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->getOnCompletionListener()Lcom/alibaba/doraemon/audio/opus/IOpusPlayer$OnCompletionListener;

    move-result-object v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 402
    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$9;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->getOnCompletionListener()Lcom/alibaba/doraemon/audio/opus/IOpusPlayer$OnCompletionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$9;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/audio/opus/IOpusPlayer$OnCompletionListener;->onCompletion(Lcom/alibaba/doraemon/audio/opus/IOpusPlayer;)V

    .line 404
    :cond_2
    return-void
.end method
