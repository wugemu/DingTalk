.class final Lcom/taobao/artc/internal/ArtcEngineImpl$37;
.super Ljava/lang/Object;
.source "ArtcEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 544
    iput-object p1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$37;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 547
    invoke-static {}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$1100()Lcom/taobao/artc/utils/ArtcDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 548
    new-instance v0, Lcom/taobao/artc/utils/ArtcDeviceInfo;

    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$37;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$1200(Lcom/taobao/artc/internal/ArtcEngineImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/artc/utils/ArtcDeviceInfo;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$1102(Lcom/taobao/artc/utils/ArtcDeviceInfo;)Lcom/taobao/artc/utils/ArtcDeviceInfo;

    .line 549
    invoke-static {}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$1100()Lcom/taobao/artc/utils/ArtcDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/artc/utils/ArtcDeviceInfo;->init()V

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$37;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iget-object v0, v0, Lcom/taobao/artc/internal/ArtcEngineImpl;->localEglbase:Lorg/webrtc/EglBase;

    if-eqz v0, :cond_1

    .line 552
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$37;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iget-object v0, v0, Lcom/taobao/artc/internal/ArtcEngineImpl;->localEglbase:Lorg/webrtc/EglBase;

    invoke-virtual {v0}, Lorg/webrtc/EglBase;->release()V

    .line 554
    :cond_1
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$37;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iget-object v0, v0, Lcom/taobao/artc/internal/ArtcEngineImpl;->remoteEglbase:Lorg/webrtc/EglBase;

    if-eqz v0, :cond_2

    .line 555
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$37;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iget-object v0, v0, Lcom/taobao/artc/internal/ArtcEngineImpl;->remoteEglbase:Lorg/webrtc/EglBase;

    invoke-virtual {v0}, Lorg/webrtc/EglBase;->release()V

    .line 557
    :cond_2
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$37;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iget-object v0, v0, Lcom/taobao/artc/internal/ArtcEngineImpl;->effectEglbase:Lorg/webrtc/EglBase;

    if-eqz v0, :cond_3

    .line 558
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$37;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iget-object v0, v0, Lcom/taobao/artc/internal/ArtcEngineImpl;->effectEglbase:Lorg/webrtc/EglBase;

    invoke-virtual {v0}, Lorg/webrtc/EglBase;->release()V

    .line 561
    :cond_3
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$37;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$37;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$1300(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lorg/webrtc/EglBase$Context;

    move-result-object v1

    invoke-static {v1}, Lorg/webrtc/EglBase;->create(Lorg/webrtc/EglBase$Context;)Lorg/webrtc/EglBase;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/artc/internal/ArtcEngineImpl;->localEglbase:Lorg/webrtc/EglBase;

    .line 562
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$37;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$37;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$1300(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lorg/webrtc/EglBase$Context;

    move-result-object v1

    invoke-static {v1}, Lorg/webrtc/EglBase;->create(Lorg/webrtc/EglBase$Context;)Lorg/webrtc/EglBase;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/artc/internal/ArtcEngineImpl;->remoteEglbase:Lorg/webrtc/EglBase;

    .line 563
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$37;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$37;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$1300(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lorg/webrtc/EglBase$Context;

    move-result-object v1

    invoke-static {v1}, Lorg/webrtc/EglBase;->create(Lorg/webrtc/EglBase$Context;)Lorg/webrtc/EglBase;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/artc/internal/ArtcEngineImpl;->effectEglbase:Lorg/webrtc/EglBase;

    .line 564
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$37;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$37;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$1200(Lcom/taobao/artc/internal/ArtcEngineImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$37;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iget-object v2, v2, Lcom/taobao/artc/internal/ArtcEngineImpl;->localEglbase:Lorg/webrtc/EglBase;

    .line 565
    invoke-virtual {v2}, Lorg/webrtc/EglBase;->getEglBaseContext()Lorg/webrtc/EglBase$Context;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$37;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iget-object v3, v3, Lcom/taobao/artc/internal/ArtcEngineImpl;->remoteEglbase:Lorg/webrtc/EglBase;

    .line 566
    invoke-virtual {v3}, Lorg/webrtc/EglBase;->getEglBaseContext()Lorg/webrtc/EglBase$Context;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$37;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iget-object v4, v4, Lcom/taobao/artc/internal/ArtcEngineImpl;->effectEglbase:Lorg/webrtc/EglBase;

    .line 567
    invoke-virtual {v4}, Lorg/webrtc/EglBase;->getEglBaseContext()Lorg/webrtc/EglBase$Context;

    move-result-object v4

    .line 564
    invoke-static {v0, v1, v2, v3, v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$1400(Lcom/taobao/artc/internal/ArtcEngineImpl;Landroid/content/Context;Lorg/webrtc/EglBase$Context;Lorg/webrtc/EglBase$Context;Lorg/webrtc/EglBase$Context;)V

    .line 568
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$37;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$1500(Lcom/taobao/artc/internal/ArtcEngineImpl;)V

    .line 569
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$37;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$37;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$1600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lcom/taobao/artc/api/ArtcConfig;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$1700(Lcom/taobao/artc/internal/ArtcEngineImpl;Lcom/taobao/artc/api/ArtcConfig;)I

    .line 570
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$37;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$37;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$1600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lcom/taobao/artc/api/ArtcConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/artc/api/ArtcConfig;->callTimeoutSec()I

    move-result v1

    invoke-static {v0, v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$1800(Lcom/taobao/artc/internal/ArtcEngineImpl;I)I

    .line 571
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$37;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$1900(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lcom/taobao/artc/api/ArtcExternalAudioProcess;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 572
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$37;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$37;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$1900(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lcom/taobao/artc/api/ArtcExternalAudioProcess;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$2000(Lcom/taobao/artc/internal/ArtcEngineImpl;Lcom/taobao/artc/api/ArtcExternalAudioProcess;)V

    .line 574
    :cond_4
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "native init done, sdk version:"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$37;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-virtual {v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->getVersion()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 575
    const-string/jumbo v0, "initialize done"

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$000(Ljava/lang/String;)V

    .line 576
    return-void
.end method
