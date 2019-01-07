.class final Lcom/taobao/artc/internal/ArtcEngineImpl$23;
.super Ljava/lang/Object;
.source "ArtcEngineImpl.java"

# interfaces
.implements Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/artc/internal/ArtcEngineImpl;
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
    .line 216
    iput-object p1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$23;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCameraSwitchDone(Z)V
    .locals 3
    .param p1, "isFrontCamera"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 219
    const-string/jumbo v0, "ArtcEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onCameraSwitchDone isFrontCamera: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$23;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$200(Lcom/taobao/artc/internal/ArtcEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$23;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    .line 222
    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$300(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lorg/webrtc/SurfaceViewRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$23;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    .line 223
    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$400(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lorg/webrtc/VideoCapturer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$23;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    .line 224
    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$400(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lorg/webrtc/VideoCapturer;

    move-result-object v0

    instance-of v0, v0, Lorg/webrtc/CameraVideoCapturer;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$23;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v0, p1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$500(Lcom/taobao/artc/internal/ArtcEngineImpl;Z)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$23;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljka;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$23;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljka;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljka;->onCameraSwitchDone(Z)V

    .line 232
    :cond_1
    return-void
.end method

.method public final onCameraSwitchError(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorDescription"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 236
    const-string/jumbo v0, "ArtcEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onCameraSwitchError: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onCameraSwitchError: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$000(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$23;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v0, p1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$700(Lcom/taobao/artc/internal/ArtcEngineImpl;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$23;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljka;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$23;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljka;

    move-result-object v0

    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;->ARTC_EVENT_CAMERA_SWITCH:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljka;->onError(Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;I)V

    .line 242
    :cond_0
    return-void
.end method
