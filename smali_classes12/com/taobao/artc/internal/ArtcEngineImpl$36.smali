.class final Lcom/taobao/artc/internal/ArtcEngineImpl$36;
.super Ljava/lang/Object;
.source "ArtcEngineImpl.java"

# interfaces
.implements Lorg/webrtc/voiceengine/ArtcAudioRecord$IAudioRecordEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/artc/internal/ArtcEngineImpl;->initialize2(Lcom/taobao/artc/api/ArtcConfig;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/artc/internal/ArtcEngineImpl;


# direct methods
.method constructor <init>(Lcom/taobao/artc/internal/ArtcEngineImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$36;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitError(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorDescription"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ArtcAudioRecord.onInitError: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$000(Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$36;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$1000(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lorg/webrtc/voiceengine/ArtcAudioRecord$IAudioRecordEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onStartError: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$000(Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$36;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$1000(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lorg/webrtc/voiceengine/ArtcAudioRecord$IAudioRecordEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/webrtc/voiceengine/ArtcAudioRecord$IAudioRecordEventHandler;->onInitError(Ljava/lang/String;)V

    .line 524
    :cond_0
    return-void
.end method

.method public final onReadError(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorDescription"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ArtcAudioRecord.onReadError: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$000(Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$36;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$1000(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lorg/webrtc/voiceengine/ArtcAudioRecord$IAudioRecordEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$36;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$1000(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lorg/webrtc/voiceengine/ArtcAudioRecord$IAudioRecordEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/webrtc/voiceengine/ArtcAudioRecord$IAudioRecordEventHandler;->onReadError(Ljava/lang/String;)V

    .line 532
    :cond_0
    return-void
.end method

.method public final onStartError(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorDescription"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ArtcAudioRecord.onStartError: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$000(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$36;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$1000(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lorg/webrtc/voiceengine/ArtcAudioRecord$IAudioRecordEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$36;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$1000(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lorg/webrtc/voiceengine/ArtcAudioRecord$IAudioRecordEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/webrtc/voiceengine/ArtcAudioRecord$IAudioRecordEventHandler;->onStartError(Ljava/lang/String;)V

    .line 515
    :cond_0
    return-void
.end method
