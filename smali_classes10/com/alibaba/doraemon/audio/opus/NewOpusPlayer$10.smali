.class Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$10;
.super Ljava/lang/Object;
.source "NewOpusPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->handlePlayComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$10;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 414
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$10;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    const-string/jumbo v1, "NewOpusPlayer"

    const-string/jumbo v2, "onCompletion()"

    invoke-static {v0, v1, v2}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$200(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$10;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->getOnCompletionListener()Lcom/alibaba/doraemon/audio/opus/IOpusPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$10;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->getOnCompletionListener()Lcom/alibaba/doraemon/audio/opus/IOpusPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$10;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/audio/opus/IOpusPlayer$OnCompletionListener;->onCompletion(Lcom/alibaba/doraemon/audio/opus/IOpusPlayer;)V

    .line 418
    :cond_0
    return-void
.end method
