.class public Lcom/taobao/artc/internal/ArtcProxyRenderer;
.super Ljava/lang/Object;
.source "ArtcProxyRenderer.java"

# interfaces
.implements Lorg/webrtc/VideoRenderer$Callbacks;


# instance fields
.field private curMirror:Z

.field private target:Lorg/webrtc/SurfaceViewRenderer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTarget()Lorg/webrtc/SurfaceViewRenderer;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcProxyRenderer;->target:Lorg/webrtc/SurfaceViewRenderer;

    return-object v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcProxyRenderer;->target:Lorg/webrtc/SurfaceViewRenderer;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcProxyRenderer;->target:Lorg/webrtc/SurfaceViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/SurfaceViewRenderer;->release()V

    .line 31
    :cond_0
    return-void
.end method

.method public declared-synchronized renderFrame(Lorg/webrtc/VideoRenderer$I420Frame;)V
    .locals 1
    .param p1, "frame"    # Lorg/webrtc/VideoRenderer$I420Frame;

    .prologue
    .line 15
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcProxyRenderer;->target:Lorg/webrtc/SurfaceViewRenderer;

    if-nez v0, :cond_0

    .line 16
    invoke-static {p1}, Lorg/webrtc/VideoRenderer;->renderFrameDone(Lorg/webrtc/VideoRenderer$I420Frame;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :goto_0
    monitor-exit p0

    return-void

    .line 20
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcProxyRenderer;->target:Lorg/webrtc/SurfaceViewRenderer;

    invoke-virtual {v0, p1}, Lorg/webrtc/SurfaceViewRenderer;->renderFrame(Lorg/webrtc/VideoRenderer$I420Frame;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 15
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMirror(Z)V
    .locals 2
    .param p1, "mirror"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcProxyRenderer;->target:Lorg/webrtc/SurfaceViewRenderer;

    if-eqz v0, :cond_0

    .line 39
    iput-boolean p1, p0, Lcom/taobao/artc/internal/ArtcProxyRenderer;->curMirror:Z

    .line 40
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcProxyRenderer;->target:Lorg/webrtc/SurfaceViewRenderer;

    iget-boolean v1, p0, Lcom/taobao/artc/internal/ArtcProxyRenderer;->curMirror:Z

    invoke-virtual {v0, v1}, Lorg/webrtc/SurfaceViewRenderer;->setMirror(Z)V

    .line 42
    :cond_0
    return-void
.end method

.method public setTarget(Lorg/webrtc/SurfaceViewRenderer;)V
    .locals 0
    .param p1, "target"    # Lorg/webrtc/SurfaceViewRenderer;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/taobao/artc/internal/ArtcProxyRenderer;->target:Lorg/webrtc/SurfaceViewRenderer;

    .line 25
    return-void
.end method
