.class Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$11;
.super Ljava/lang/Object;
.source "AudioMagicianImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/audio/opus/OpusRecorder$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->initOpusRecord(Lcom/alibaba/doraemon/audio/OnRecordListener;)Ljava/lang/String;
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
    .line 552
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$11;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared()V
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$11;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$800(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$11;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$800(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$11;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$900(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)V

    .line 560
    :cond_0
    return-void
.end method
