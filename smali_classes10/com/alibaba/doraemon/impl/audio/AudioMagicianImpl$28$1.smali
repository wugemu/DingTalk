.class Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$28$1;
.super Ljava/lang/Object;
.source "AudioMagicianImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$28;->onCompletion(Lcom/alibaba/doraemon/audio/opus/IOpusPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$28;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$28;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$28;

    .prologue
    .line 1092
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$28$1;->this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$28;

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

    .line 1095
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$28$1;->this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$28;

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$28;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$1100(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)V

    .line 1096
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$28$1;->this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$28;

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$28;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$000(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Lcom/alibaba/doraemon/audio/OnPlayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$28$1;->this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$28;

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$28;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$000(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Lcom/alibaba/doraemon/audio/OnPlayListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$28$1;->this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$28;

    iget-object v1, v1, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$28;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$100(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/audio/OnPlayListener;->onPlayStateListener(Ljava/lang/String;I)V

    .line 1098
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$28$1;->this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$28;

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$28;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0, v3}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$002(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;Lcom/alibaba/doraemon/audio/OnPlayListener;)Lcom/alibaba/doraemon/audio/OnPlayListener;

    .line 1100
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$28$1;->this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$28;

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$28;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0, v3}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$102(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 1101
    return-void
.end method
