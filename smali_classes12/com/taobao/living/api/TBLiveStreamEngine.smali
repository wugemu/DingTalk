.class public abstract Lcom/taobao/living/api/TBLiveStreamEngine;
.super Ljava/lang/Object;
.source "TBLiveStreamEngine.java"


# static fields
.field private static mInstance:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/living/api/TBLiveStreamEngine;->mInstance:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized create(Landroid/content/Context;Lcom/taobao/living/api/TBLSConfig;)Lcom/taobao/living/api/TBLiveStreamEngine;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tbLSConfig"    # Lcom/taobao/living/api/TBLSConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/living/api/TBLiveStreamException;
        }
    .end annotation

    .prologue
    .line 20
    const-class v6, Lcom/taobao/living/api/TBLiveStreamEngine;

    monitor-enter v6

    :try_start_0
    sget-object v0, Lcom/taobao/living/api/TBLiveStreamEngine;->mInstance:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;-><init>(Landroid/content/Context;Lcom/taobao/living/api/TBLSConfig;Lcom/taobao/living/internal/TBLiveStreamEngineImpl$b;Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;)V

    sput-object v0, Lcom/taobao/living/api/TBLiveStreamEngine;->mInstance:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    .line 23
    :cond_0
    sget-object v0, Lcom/taobao/living/api/TBLiveStreamEngine;->mInstance:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized create(Landroid/content/Context;Lcom/taobao/living/api/TBLSConfig;Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;)Lcom/taobao/living/api/TBLiveStreamEngine;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tbLSConfig"    # Lcom/taobao/living/api/TBLSConfig;
    .param p2, "tbLSLinkMicListener"    # Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/living/api/TBLiveStreamException;
        }
    .end annotation

    .prologue
    .line 44
    const-class v6, Lcom/taobao/living/api/TBLiveStreamEngine;

    monitor-enter v6

    :try_start_0
    sget-object v0, Lcom/taobao/living/api/TBLiveStreamEngine;->mInstance:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;-><init>(Landroid/content/Context;Lcom/taobao/living/api/TBLSConfig;Lcom/taobao/living/internal/TBLiveStreamEngineImpl$b;Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;)V

    sput-object v0, Lcom/taobao/living/api/TBLiveStreamEngine;->mInstance:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    .line 47
    :cond_0
    sget-object v0, Lcom/taobao/living/api/TBLiveStreamEngine;->mInstance:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized create(Landroid/content/Context;Lcom/taobao/living/api/TBLSConfig;Lcom/taobao/living/internal/TBLiveStreamEngineImpl$b;)Lcom/taobao/living/api/TBLiveStreamEngine;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tbLSConfig"    # Lcom/taobao/living/api/TBLSConfig;
    .param p2, "netStatusListener"    # Lcom/taobao/living/internal/TBLiveStreamEngineImpl$b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/living/api/TBLiveStreamException;
        }
    .end annotation

    .prologue
    .line 28
    const-class v6, Lcom/taobao/living/api/TBLiveStreamEngine;

    monitor-enter v6

    :try_start_0
    sget-object v0, Lcom/taobao/living/api/TBLiveStreamEngine;->mInstance:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;-><init>(Landroid/content/Context;Lcom/taobao/living/api/TBLSConfig;Lcom/taobao/living/internal/TBLiveStreamEngineImpl$b;Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;)V

    sput-object v0, Lcom/taobao/living/api/TBLiveStreamEngine;->mInstance:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    .line 31
    :cond_0
    sget-object v0, Lcom/taobao/living/api/TBLiveStreamEngine;->mInstance:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized create(Landroid/content/Context;Lcom/taobao/living/api/TBLSConfig;Lcom/taobao/living/internal/TBLiveStreamEngineImpl$b;Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;)Lcom/taobao/living/api/TBLiveStreamEngine;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tbLSConfig"    # Lcom/taobao/living/api/TBLSConfig;
    .param p2, "netStatusListener"    # Lcom/taobao/living/internal/TBLiveStreamEngineImpl$b;
    .param p3, "tbLSStateListener"    # Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;
    .param p4, "tbLSLinkMicListener"    # Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/living/api/TBLiveStreamException;
        }
    .end annotation

    .prologue
    .line 65
    const-class v6, Lcom/taobao/living/api/TBLiveStreamEngine;

    monitor-enter v6

    :try_start_0
    sget-object v0, Lcom/taobao/living/api/TBLiveStreamEngine;->mInstance:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;-><init>(Landroid/content/Context;Lcom/taobao/living/api/TBLSConfig;Lcom/taobao/living/internal/TBLiveStreamEngineImpl$b;Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;)V

    sput-object v0, Lcom/taobao/living/api/TBLiveStreamEngine;->mInstance:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    .line 68
    :cond_0
    sget-object v0, Lcom/taobao/living/api/TBLiveStreamEngine;->mInstance:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-virtual {v0, p2}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->setmOnNetworkStatusListener(Lcom/taobao/living/internal/TBLiveStreamEngineImpl$b;)V

    .line 69
    sget-object v0, Lcom/taobao/living/api/TBLiveStreamEngine;->mInstance:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-virtual {v0, p3}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->setmOnTBLiveStreamStateListener(Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;)V

    .line 70
    sget-object v0, Lcom/taobao/living/api/TBLiveStreamEngine;->mInstance:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    invoke-virtual {v0, p4}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;->setmOnLinkMicEventListener(Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;)V

    .line 72
    sget-object v0, Lcom/taobao/living/api/TBLiveStreamEngine;->mInstance:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized create(Landroid/content/Context;Lcom/taobao/living/api/TBLSConfig;Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;)Lcom/taobao/living/api/TBLiveStreamEngine;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tbLSConfig"    # Lcom/taobao/living/api/TBLSConfig;
    .param p2, "tbLSStateListener"    # Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/living/api/TBLiveStreamException;
        }
    .end annotation

    .prologue
    .line 36
    const-class v6, Lcom/taobao/living/api/TBLiveStreamEngine;

    monitor-enter v6

    :try_start_0
    sget-object v0, Lcom/taobao/living/api/TBLiveStreamEngine;->mInstance:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/taobao/living/internal/TBLiveStreamEngineImpl;-><init>(Landroid/content/Context;Lcom/taobao/living/api/TBLSConfig;Lcom/taobao/living/internal/TBLiveStreamEngineImpl$b;Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;Lcom/taobao/living/internal/TBLiveStreamEngineImpl$a;)V

    sput-object v0, Lcom/taobao/living/api/TBLiveStreamEngine;->mInstance:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    .line 39
    :cond_0
    sget-object v0, Lcom/taobao/living/api/TBLiveStreamEngine;->mInstance:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method


# virtual methods
.method public abstract changeLocalVideoPreview(Landroid/widget/RelativeLayout;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/living/api/TBLiveStreamException;
        }
    .end annotation
.end method

.method public abstract checkCameraLight()Z
.end method

.method public deInit()V
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/living/api/TBLiveStreamEngine;->mInstance:Lcom/taobao/living/internal/TBLiveStreamEngineImpl;

    .line 248
    return-void
.end method

.method public abstract enableCameraLight(Z)V
.end method

.method public abstract endLinkLiveWithPeer(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getLastPreviewFrame()Landroid/graphics/Bitmap;
.end method

.method public abstract init()V
.end method

.method public abstract isBackCameraAvaliable()Z
.end method

.method public abstract isFacebeautyEnable()Z
.end method

.method public abstract isFacebeautySupported()Z
.end method

.method public abstract isFrontCameraAvaliable()Z
.end method

.method public abstract isFrontCameraInUse()Z
.end method

.method public abstract isFrontFacingCamera()Z
.end method

.method public abstract onReceiveLWPData([B)V
.end method

.method public abstract reconnectServerAsync()I
.end method

.method public abstract respondToLinkLiveCall(Ljava/lang/String;ZLjava/lang/String;)V
.end method

.method public abstract setFacebeautyEnable(Z)V
.end method

.method public abstract setFrontCameraMirrored(Z)V
.end method

.method public abstract setNSAGCEnable(Z)V
.end method

.method public abstract setRemoteRenderView(Landroid/widget/RelativeLayout;)V
.end method

.method public abstract setVideoEncoderBitrate(J)V
.end method

.method public abstract startLinkLiveWithPeer(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract startLive(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/living/api/TBLiveStreamException;
        }
    .end annotation
.end method

.method public abstract startPreview(Landroid/widget/RelativeLayout;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/living/api/TBLiveStreamException;
        }
    .end annotation
.end method

.method public abstract stopLive()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/living/api/TBLiveStreamException;
        }
    .end annotation
.end method

.method public abstract stopPreview()V
.end method

.method public abstract switchCamera()V
.end method

.method public abstract updateFaceBeautyParam(FFFFFFFFF)V
.end method
