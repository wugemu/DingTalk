.class public abstract Lcom/taobao/artc/api/ArtcEngine;
.super Ljava/lang/Object;
.source "ArtcEngine.java"


# static fields
.field public static load_fail:Z

.field private static mInstance:Lcom/taobao/artc/api/ArtcEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    :try_start_0
    const-string/jumbo v1, "AliEffectModule"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 31
    const-string/jumbo v1, "tbffmpeg"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 32
    const-string/jumbo v1, "artc_engine"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/taobao/artc/api/ArtcEngine;->load_fail:Z

    .line 42
    const/4 v1, 0x0

    sput-object v1, Lcom/taobao/artc/api/ArtcEngine;->mInstance:Lcom/taobao/artc/api/ArtcEngine;

    return-void

    .line 33
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 34
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized create(Landroid/content/Context;)Lcom/taobao/artc/api/ArtcEngine;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .prologue
    .line 56
    const-class v1, Lcom/taobao/artc/api/ArtcEngine;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/taobao/artc/api/ArtcEngine;->mInstance:Lcom/taobao/artc/api/ArtcEngine;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-direct {v0, p0}, Lcom/taobao/artc/internal/ArtcEngineImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/taobao/artc/api/ArtcEngine;->mInstance:Lcom/taobao/artc/api/ArtcEngine;

    .line 60
    :cond_0
    sget-object v0, Lcom/taobao/artc/api/ArtcEngine;->mInstance:Lcom/taobao/artc/api/ArtcEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isHardwareVideoSupported()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 69
    invoke-static {}, Lorg/webrtc/MediaCodecVideoEncoder;->isH264HwSupported()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract answer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract answer2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract call(Ljava/lang/String;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract call2(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract cancelCall(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract cancelCall2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract checkCameraLight()Z
.end method

.method public abstract createChannel(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract createChannel2(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract enableCameraLight(Z)V
.end method

.method public abstract enableFaceBeauty(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract encodeVideoCustomFrame(Ljava/lang/String;)V
.end method

.method public abstract getCameraBrightness()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract initialize(Lcom/taobao/artc/api/ArtcConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract initialize2(Lcom/taobao/artc/api/ArtcConfig;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract invite(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract invite2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract isFaceBeautyAvailable()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract isFrontFacingCamera()Z
.end method

.method public abstract isSpeakerphoneEnabled()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract isVideoHardwareEncoderRuning()Z
.end method

.method public abstract joinChannel(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract joinChannel2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract kick(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract kick2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract leaveChannel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract leaveChannel2(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract muteLocalAudioStream(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract muteLocalVideoStream(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract muteRemoteAudioStream(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract muteRemoteAudioStream(ZLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract muteRemoteVideoStream(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract registCameraCallback(Lcom/taobao/artc/api/IArtcCameraHandle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract registLogCallback(Lcom/taobao/artc/api/IArtcLogHandle;)V
.end method

.method public abstract registUser(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract registerHandler(Lcom/taobao/artc/api/ArtcEngineEventHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract registerHandler(Lcom/taobao/artc/api/IArtcEngineEventHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract registerSpeakerCallback(Lcom/taobao/artc/api/IArtcSpeakerHandle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract setAudioEventHandler(Lorg/webrtc/voiceengine/ArtcAudioRecord$IAudioRecordEventHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract setAudioOutputVolume(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract setBroadcast(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract setCallTimeout(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract setCameraBrightness(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract setChannelProfile(Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract setEnableSpeakerphone(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract setFaceBeautyParam(FFFFFFF)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract setLocalView(Lorg/webrtc/SurfaceViewRenderer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract setRemoteView(Lorg/webrtc/SurfaceViewRenderer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract setUserId(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract setVideoLayout(Lcom/taobao/artc/api/ArtcVideoLayout;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract setVideoMirror(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract setVideoProfile(Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract setVideoResolution(Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract setVideoRotation(ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract startPreview()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract startPreview2(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract stopPreview()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract stopPreview2(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract swapScreen()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract switchCamera()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract unInitialize()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract unInitialize2(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract unRegisterHandler()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract unregistUser()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method
