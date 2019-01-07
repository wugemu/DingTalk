.class Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$2;
.super Ljava/lang/Object;
.source "NewOpusPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->doPlay(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

.field final synthetic val$ret:[I

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;[ILjava/util/concurrent/Semaphore;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$2;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    iput-object p2, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$2;->val$ret:[I

    iput-object p3, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$2;->val$semaphore:Ljava/util/concurrent/Semaphore;

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
    const/4 v3, 0x0

    .line 98
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$2;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$2;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-static {v1}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$100(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "openOpusFile:"

    invoke-static {v0, v1, v2}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$200(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$2;->val$ret:[I

    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$2;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-static {v1}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$400(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)Lcom/alibaba/doraemon/audio/opus/OpusTool;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$2;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-static {v2}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$300(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/audio/opus/OpusTool;->openOpusFile(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v3

    .line 100
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$2;->val$ret:[I

    aget v0, v0, v3

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$2;->val$ret:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$2;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-static {v2}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$400(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)Lcom/alibaba/doraemon/audio/opus/OpusTool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/doraemon/audio/opus/OpusTool;->getChannelCount()I

    move-result v2

    aput v2, v0, v1

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$2;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 104
    return-void
.end method
