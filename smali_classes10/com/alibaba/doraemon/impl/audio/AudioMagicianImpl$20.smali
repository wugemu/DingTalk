.class Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$20;
.super Ljava/lang/Object;
.source "AudioMagicianImpl.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 931
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$20;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 935
    new-instance v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$20$1;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$20$1;-><init>(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$20;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 943
    return-void
.end method
