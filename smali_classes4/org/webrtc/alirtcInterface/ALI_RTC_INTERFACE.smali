.class public abstract Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;
.super Ljava/lang/Object;
.source "ALI_RTC_INTERFACE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRenderDataObserver;,
        Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliTextureObserver;,
        Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliVideoObserver;,
        Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioObserver;,
        Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioType;,
        Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCStreamConfig;,
        Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;,
        Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;,
        Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;,
        Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;,
        Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;,
        Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCameraConfig;,
        Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AuthInfo;,
        Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$ALI_RTC_ERROR_CODE;,
        Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;,
        Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;,
        Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;,
        Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSDKLogLevel;,
        Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;
    }
.end annotation


# static fields
.field public static final Video_Profile_160_120:I = 0x0

.field public static final Video_Profile_240_180:I = 0x1

.field public static final Video_Profile_320_180:I = 0x2

.field public static final Video_Profile_640_360:I = 0x3

.field public static final ideo_Profile_1280_7200:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract AddLocalDisplayWindow(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;)V
.end method

.method public abstract AddRemoteDisplayWindow(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;)V
.end method

.method public abstract ChangeLogLevel(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSDKLogLevel;)V
.end method

.method public abstract CloseCamera()V
.end method

.method public abstract Create(Ljava/lang/String;Lorg/webrtc/alirtcInterface/AliSophonEngine;)J
.end method

.method public abstract Destory()V
.end method

.method public abstract EnableLocalAudio(Z)V
.end method

.method public abstract EnableLocalVideo(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Z)V
.end method

.method public abstract EnableRemoteAudio(Ljava/lang/String;Z)V
.end method

.method public abstract EnableRemoteVideo(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Z)V
.end method

.method public abstract EnableUpload(Z)V
.end method

.method public abstract EnumerateAllCaptureDevices()[Ljava/lang/String;
.end method

.method public abstract GetCaptureType()Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;
.end method

.method public abstract GetLogLevel()I
.end method

.method public abstract GetSDKVersion()Ljava/lang/String;
.end method

.method public abstract GetTransportStatus(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;)Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;
.end method

.method public abstract Gslb(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AuthInfo;)I
.end method

.method public abstract JoinChannel(Ljava/lang/String;)I
.end method

.method public abstract JoinChannel(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AuthInfo;Ljava/lang/String;)I
.end method

.method public abstract LeaveChannel()I
.end method

.method public abstract LeaveChannel(J)I
.end method

.method public abstract Log(Ljava/lang/String;ILorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSDKLogLevel;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract LogDestroy()V
.end method

.method public abstract OpenCamera(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCameraConfig;)V
.end method

.method public abstract PauseRender()V
.end method

.method public abstract Publish(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;)V
.end method

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

.method public abstract RemoveLocalDisplayWindow(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;)V
.end method

.method public abstract RemoveRemoteDisplayWindow(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;)V
.end method

.method public abstract Republish(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;)V
.end method

.method public abstract RespondMessageNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract Resubscribe(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)V
.end method

.method public abstract ResumeRender()V
.end method

.method public abstract SetCameraZoom(F)I
.end method

.method public abstract SetCaptureDeviceByName(Ljava/lang/String;)I
.end method

.method public abstract SetFlash(Z)I
.end method

.method public abstract SetUploadAppID(Ljava/lang/String;)V
.end method

.method public abstract SetUploadSessionID(Ljava/lang/String;)V
.end method

.method public abstract Subscribe(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)V
.end method

.method public abstract SwitchCramer()I
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

.method public abstract Unpublish()V
.end method

.method public abstract Unsubscribe(Ljava/lang/String;)V
.end method

.method public abstract UpdateDisplayWindow(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;)V
.end method

.method public abstract UplinkChannelMessage(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract enableBackgroundAudioRecording(Z)V
.end method

.method public abstract isEnableBackgroundAudioRecording()Z
.end method

.method public abstract setCollectStatusListener(Lorg/webrtc/alirtcInterface/CollectStatusListener;)V
.end method
