.class public abstract Lcom/alivc/live/conf/AlivcVideoConf;
.super Ljava/lang/Object;
.source "AlivcVideoConf.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract closeCamera()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract closeMic()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract closePreview()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract destroy()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract getAudioOutputMode()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract getCurrentCameraType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;
.end method

.method public abstract getCurrentFlashType()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract getCurrentParticipantsStatus()V
.end method

.method public abstract getCurrentUserInfo()Lcom/alivc/live/conf/AlivcVideoConfUserInfo;
.end method

.method public abstract getCurrentZoom()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract getSDKVersion()Ljava/lang/String;
.end method

.method public abstract getSubscribedVideoTypesByUserId(Ljava/lang/String;)[Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;
.end method

.method public abstract init(Landroid/content/Context;Lcom/alivc/live/conf/AlivcVideoConfConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract isMicOpen()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract joinChat(Lcom/alivc/live/conf/AlivcVideoConfUserInfo;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfJoinMode;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract leaveChat()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract openCamera(Lcom/alivc/live/conf/AlivcVideoConfConstants$CameraConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract openMic()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract openPreview(Lorg/webrtc/sdk/SophonSurfaceView;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract publish(Lcom/alivc/live/conf/AlivcPublishConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract publishScreenShare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract rePublish(Lcom/alivc/live/conf/AlivcPublishConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract setAudioOutputMode(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract setFlash(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract setLogLevel(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;)V
.end method

.method public abstract setPlayVolume(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract setVideoConfCallBackListener(Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;)V
.end method

.method public abstract setVideoConfCollectStatusListener(Lcom/alivc/live/conf/AlivcVideoConfCollectStatusListener;)V
.end method

.method public abstract setVideoConfErrorListener(Lcom/alivc/live/conf/AlivcVideoConfListener;)V
.end method

.method public abstract setVideoConfNetworkListener(Lcom/alivc/live/conf/AlivcVideoConfNetworkListener;)V
.end method

.method public abstract setVideoConfNotifyListener(Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;)V
.end method

.method public abstract setZoom(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract subscribe(Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;Lorg/webrtc/sdk/SophonSurfaceView;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract switchCamera()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract switchSubscribeVideoStream(Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V
.end method

.method public abstract unPublish()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract unPublishScreenShare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract unSubscribe(Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract unSubscribeVideoStream(Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract updateDisplayWindow(Lorg/webrtc/sdk/SophonSurfaceView;Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;)V
.end method
