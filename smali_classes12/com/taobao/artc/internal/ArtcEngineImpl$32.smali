.class final Lcom/taobao/artc/internal/ArtcEngineImpl$32;
.super Ljava/lang/Object;
.source "ArtcEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/artc/internal/ArtcEngineImpl;->enableCameraLight(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/taobao/artc/internal/ArtcEngineImpl;


# direct methods
.method constructor <init>(Lcom/taobao/artc/internal/ArtcEngineImpl;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 1998
    iput-object p1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$32;->b:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iput-boolean p2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$32;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 2001
    const-string/jumbo v1, "ArtcEngineImpl"

    const-string/jumbo v2, "enableCameraLight"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "checkCameraLight"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$32;->b:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-virtual {v5}, Lcom/taobao/artc/internal/ArtcEngineImpl;->checkCameraLight()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "enable"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-boolean v5, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$32;->a:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2002
    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$32;->b:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$400(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lorg/webrtc/VideoCapturer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$32;->b:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$400(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lorg/webrtc/VideoCapturer;

    move-result-object v1

    instance-of v1, v1, Lorg/webrtc/CameraVideoCapturer;

    if-eqz v1, :cond_0

    .line 2003
    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$32;->b:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$400(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lorg/webrtc/VideoCapturer;

    move-result-object v0

    check-cast v0, Lorg/webrtc/CameraVideoCapturer;

    .line 2004
    .local v0, "cameraVideoCapturer":Lorg/webrtc/CameraVideoCapturer;
    iget-boolean v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$32;->a:Z

    invoke-interface {v0, v1}, Lorg/webrtc/CameraVideoCapturer;->enableCameraLight(Z)V

    .line 2008
    .end local v0    # "cameraVideoCapturer":Lorg/webrtc/CameraVideoCapturer;
    :goto_0
    return-void

    .line 2006
    :cond_0
    const-string/jumbo v1, "ArtcEngineImpl"

    const-string/jumbo v2, "enableCameraLight fail as video capturer is not a camera"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
