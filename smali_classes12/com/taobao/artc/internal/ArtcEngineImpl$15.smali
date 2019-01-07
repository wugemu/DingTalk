.class final Lcom/taobao/artc/internal/ArtcEngineImpl$15;
.super Ljava/lang/Object;
.source "ArtcEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/artc/internal/ArtcEngineImpl;->switchCamera(Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;

.field final synthetic b:Lcom/taobao/artc/internal/ArtcEngineImpl;


# direct methods
.method constructor <init>(Lcom/taobao/artc/internal/ArtcEngineImpl;Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 1261
    iput-object p1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$15;->b:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iput-object p2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$15;->a:Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1264
    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$15;->b:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$400(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lorg/webrtc/VideoCapturer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$15;->b:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$400(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lorg/webrtc/VideoCapturer;

    move-result-object v1

    instance-of v1, v1, Lorg/webrtc/CameraVideoCapturer;

    if-eqz v1, :cond_0

    .line 1265
    const-string/jumbo v1, "ArtcEngineImpl"

    const-string/jumbo v2, "switchCamera start"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1267
    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$15;->b:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$400(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lorg/webrtc/VideoCapturer;

    move-result-object v0

    check-cast v0, Lorg/webrtc/CameraVideoCapturer;

    .line 1268
    .local v0, "cameraVideoCapturer":Lorg/webrtc/CameraVideoCapturer;
    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$15;->a:Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;

    invoke-interface {v0, v1}, Lorg/webrtc/CameraVideoCapturer;->switchCamera(Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V

    .line 1272
    .end local v0    # "cameraVideoCapturer":Lorg/webrtc/CameraVideoCapturer;
    :goto_0
    return-void

    .line 1270
    :cond_0
    const-string/jumbo v1, "ArtcEngineImpl"

    const-string/jumbo v2, "switchCamera fail as video caputurer is not a camera"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
