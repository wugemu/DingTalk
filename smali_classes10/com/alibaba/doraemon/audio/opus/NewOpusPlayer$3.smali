.class Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$3;
.super Ljava/lang/Object;
.source "NewOpusPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->handlePrepared()V
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
    .line 150
    iput-object p1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$3;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$3;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->getOnPreparedListener()Lcom/alibaba/doraemon/audio/opus/IOpusPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$3;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->getOnPreparedListener()Lcom/alibaba/doraemon/audio/opus/IOpusPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$3;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/audio/opus/IOpusPlayer$OnPreparedListener;->onPrepared(Lcom/alibaba/doraemon/audio/opus/IOpusPlayer;)V

    .line 156
    :cond_0
    return-void
.end method
