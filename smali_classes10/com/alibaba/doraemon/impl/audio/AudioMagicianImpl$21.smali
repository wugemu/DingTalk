.class Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$21;
.super Ljava/lang/Object;
.source "AudioMagicianImpl.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->playByCommonPlayer(Ljava/lang/String;I)V
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
    .line 947
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$21;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 951
    new-instance v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$21$1;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$21$1;-><init>(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$21;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 962
    return-void
.end method
