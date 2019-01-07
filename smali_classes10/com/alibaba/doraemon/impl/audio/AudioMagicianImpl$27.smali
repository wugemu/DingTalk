.class Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$27;
.super Ljava/lang/Object;
.source "AudioMagicianImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/audio/opus/IOpusPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->playByOpusPlayer(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    .prologue
    .line 1072
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$27;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lcom/alibaba/doraemon/audio/opus/IOpusPlayer;)V
    .locals 1
    .param p1, "mp"    # Lcom/alibaba/doraemon/audio/opus/IOpusPlayer;

    .prologue
    .line 1076
    new-instance v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$27$1;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$27$1;-><init>(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$27;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1084
    return-void
.end method
