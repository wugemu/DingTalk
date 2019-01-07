.class public abstract Lorg/webrtc/alirtcInterface/SophonEngine;
.super Ljava/lang/Object;
.source "SophonEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;,
        Lorg/webrtc/alirtcInterface/SophonEngine$AliRTCStreamConfig;
    }
.end annotation


# static fields
.field private static mInstance:Lorg/webrtc/alirtcInterface/SophonEngineImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lorg/webrtc/alirtcInterface/SophonEngine;->mInstance:Lorg/webrtc/alirtcInterface/SophonEngineImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static declared-synchronized create(Landroid/content/Context;Ljava/lang/String;Lorg/webrtc/alirtcInterface/SophonEventListener;Z)Lorg/webrtc/alirtcInterface/SophonEngineImpl;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "extras"    # Ljava/lang/String;
    .param p2, "listener"    # Lorg/webrtc/alirtcInterface/SophonEventListener;
    .param p3, "enableAudio"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    const-class v1, Lorg/webrtc/alirtcInterface/SophonEngine;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lorg/webrtc/alirtcInterface/SophonEngine;->mInstance:Lorg/webrtc/alirtcInterface/SophonEngineImpl;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/webrtc/alirtcInterface/SophonEngineImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/webrtc/alirtcInterface/SophonEventListener;)V

    invoke-virtual {v0, p3}, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->create(Z)Lorg/webrtc/alirtcInterface/SophonEngineImpl;

    move-result-object v0

    .line 59
    sput-object v0, Lorg/webrtc/alirtcInterface/SophonEngine;->mInstance:Lorg/webrtc/alirtcInterface/SophonEngineImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lorg/webrtc/alirtcInterface/SophonEngine;->mInstance:Lorg/webrtc/alirtcInterface/SophonEngineImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized create(Landroid/content/Context;Lorg/webrtc/alirtcInterface/SophonEventListener;Z)Lorg/webrtc/alirtcInterface/SophonEngineImpl;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lorg/webrtc/alirtcInterface/SophonEventListener;
    .param p2, "enableAudio"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    const-class v1, Lorg/webrtc/alirtcInterface/SophonEngine;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lorg/webrtc/alirtcInterface/SophonEngine;->mInstance:Lorg/webrtc/alirtcInterface/SophonEngineImpl;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;

    invoke-direct {v0, p0, p1}, Lorg/webrtc/alirtcInterface/SophonEngineImpl;-><init>(Landroid/content/Context;Lorg/webrtc/alirtcInterface/SophonEventListener;)V

    invoke-virtual {v0, p2}, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->create(Z)Lorg/webrtc/alirtcInterface/SophonEngineImpl;

    move-result-object v0

    .line 67
    sput-object v0, Lorg/webrtc/alirtcInterface/SophonEngine;->mInstance:Lorg/webrtc/alirtcInterface/SophonEngineImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lorg/webrtc/alirtcInterface/SophonEngine;->mInstance:Lorg/webrtc/alirtcInterface/SophonEngineImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized destroy()V
    .locals 2

    .prologue
    .line 73
    const-class v1, Lorg/webrtc/alirtcInterface/SophonEngine;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/webrtc/alirtcInterface/SophonEngine;->mInstance:Lorg/webrtc/alirtcInterface/SophonEngineImpl;

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x0

    sput-object v0, Lorg/webrtc/alirtcInterface/SophonEngine;->mInstance:Lorg/webrtc/alirtcInterface/SophonEngineImpl;

    .line 75
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_0
    monitor-exit v1

    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getH5CompatibleMode()I
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->GetH5CompatibleMode()I

    move-result v0

    return v0
.end method

.method public static setH5CompatibleMode(I)I
    .locals 3
    .param p0, "enable"    # I

    .prologue
    .line 45
    const-string/jumbo v0, "SophonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setH5CompatibleMode"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/utils/AlivcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {p0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->SetH5CompatibleMode(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract RegisterAudioObserver(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioType;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioObserver;)V
.end method

.method public abstract RegisterRGBAObserver(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRenderDataObserver;)V
.end method

.method public abstract RegisterTexturePostObserver(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliTextureObserver;)V
.end method

.method public abstract RegisterTexturePreObserver(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliTextureObserver;)V
.end method

.method public abstract RegisterYUVObserver(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliVideoObserver;)V
.end method

.method public abstract UnRegisterAudioObserver(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioType;)V
.end method

.method public abstract UnRegisterRGBAObserver(Ljava/lang/String;)V
.end method

.method public abstract UnRegisterTexturePostObserver(Ljava/lang/String;)V
.end method

.method public abstract UnRegisterTexturePreObserver(Ljava/lang/String;)V
.end method

.method public abstract UnRegisterYUVObserver(Ljava/lang/String;)V
.end method

.method public abstract addLocalDisplayWindow(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;)V
.end method

.method public abstract addRemoteDisplayWindow(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;)V
.end method

.method public abstract changeLogLevel(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSDKLogLevel;)V
.end method

.method public abstract closeCamera()V
.end method

.method public abstract destory()V
.end method

.method public abstract enableBackgroundAudioRecording(Z)V
.end method

.method public abstract enableLocalAudio(Z)V
.end method

.method public abstract enableLocalVideo(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Z)V
.end method

.method public abstract enableRemoteAudio(Ljava/lang/String;Z)V
.end method

.method public abstract enableRemoteVideo(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Z)V
.end method

.method public abstract enumerateAllCaptureDevices()[Ljava/lang/String;
.end method

.method public abstract getCaptureType()Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;
.end method

.method public abstract getSDKVersion()Ljava/lang/String;
.end method

.method public abstract getTransportStatus(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;)Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;
.end method

.method public abstract gslb(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AuthInfo;)I
.end method

.method public abstract isEnableBackgroundAudioRecording()Z
.end method

.method public abstract joinChannel(Ljava/lang/String;)I
.end method

.method public abstract joinChannel(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AuthInfo;Ljava/lang/String;)I
.end method

.method public abstract leaveChannel()I
.end method

.method public abstract leaveChannel(J)I
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract openCamera(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCameraConfig;)V
.end method

.method public abstract pauseRender()V
.end method

.method public abstract publish(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;)V
.end method

.method public abstract removeLocalDisplayWindow(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;)V
.end method

.method public abstract removeRemoteDisplayWindow(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;)V
.end method

.method public abstract republish(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;)V
.end method

.method public abstract respondMessageNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract resubscribe(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)V
.end method

.method public abstract resumeRender()V
.end method

.method public abstract selectSpeakePhone(Z)V
.end method

.method public abstract setCameraZoom(F)I
.end method

.method public abstract setCaptureDeviceByName(Ljava/lang/String;)I
.end method

.method public abstract setCollectStatusListener(Lorg/webrtc/alirtcInterface/CollectStatusListener;)V
.end method

.method public abstract setFlash(Z)I
.end method

.method public abstract subscribe(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)V
.end method

.method public abstract switchCramer()I
.end method

.method public abstract switchSubscribeVideoStream(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;)V
.end method

.method public abstract unpublish()V
.end method

.method public abstract unsubscribe(Ljava/lang/String;)V
.end method

.method public abstract updateDisplayWindow(Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;)V
.end method

.method public abstract uplinkChannelMessage(Ljava/lang/String;Ljava/lang/String;)I
.end method
