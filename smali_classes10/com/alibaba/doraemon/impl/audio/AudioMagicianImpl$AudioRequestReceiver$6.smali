.class Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver$6;
.super Ljava/lang/Object;
.source "AudioMagicianImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;->onRequestStarted(Lcom/alibaba/doraemon/request/Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;

    .prologue
    .line 1641
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver$6;->this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;

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
    .line 1644
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver$6;->this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$000(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Lcom/alibaba/doraemon/audio/OnPlayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1645
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver$6;->this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$000(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Lcom/alibaba/doraemon/audio/OnPlayListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver$6;->this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;

    iget-object v1, v1, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$100(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/audio/OnPlayListener;->onRequestStart(Ljava/lang/String;)V

    .line 1647
    :cond_0
    return-void
.end method
