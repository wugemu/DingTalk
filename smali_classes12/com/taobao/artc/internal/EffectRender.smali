.class public Lcom/taobao/artc/internal/EffectRender;
.super Ljava/lang/Object;
.source "EffectRender.java"


# instance fields
.field private eglBase:Lorg/webrtc/EglBase14;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/artc/internal/EffectRender;->eglBase:Lorg/webrtc/EglBase14;

    .line 16
    return-void
.end method


# virtual methods
.method public init(Lorg/webrtc/EglBase14$Context;)V
    .locals 2
    .param p1, "sharedContext"    # Lorg/webrtc/EglBase14$Context;

    .prologue
    .line 19
    new-instance v0, Lorg/webrtc/EglBase14;

    sget-object v1, Lorg/webrtc/EglBase;->CONFIG_PIXEL_BUFFER:[I

    invoke-direct {v0, p1, v1}, Lorg/webrtc/EglBase14;-><init>(Lorg/webrtc/EglBase14$Context;[I)V

    iput-object v0, p0, Lcom/taobao/artc/internal/EffectRender;->eglBase:Lorg/webrtc/EglBase14;

    .line 20
    iget-object v0, p0, Lcom/taobao/artc/internal/EffectRender;->eglBase:Lorg/webrtc/EglBase14;

    invoke-virtual {v0}, Lorg/webrtc/EglBase14;->createDummyPbufferSurface()V

    .line 21
    return-void
.end method

.method public makeCurrent()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/taobao/artc/internal/EffectRender;->eglBase:Lorg/webrtc/EglBase14;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/taobao/artc/internal/EffectRender;->eglBase:Lorg/webrtc/EglBase14;

    invoke-virtual {v0}, Lorg/webrtc/EglBase14;->makeCurrent()V

    .line 28
    :cond_0
    return-void
.end method

.method public recoverLastContext()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/taobao/artc/internal/EffectRender;->eglBase:Lorg/webrtc/EglBase14;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/taobao/artc/internal/EffectRender;->eglBase:Lorg/webrtc/EglBase14;

    invoke-virtual {v0}, Lorg/webrtc/EglBase14;->recoverLastContext()V

    .line 35
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/taobao/artc/internal/EffectRender;->eglBase:Lorg/webrtc/EglBase14;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/taobao/artc/internal/EffectRender;->eglBase:Lorg/webrtc/EglBase14;

    invoke-virtual {v0}, Lorg/webrtc/EglBase14;->release()V

    .line 41
    :cond_0
    return-void
.end method
