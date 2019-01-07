.class public interface abstract Lcom/taobao/artc/api/IArtcEngineEventHandler;
.super Ljava/lang/Object;
.source "IArtcEngineEventHandler.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract onAnswer(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract onAnswered(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract onAudioQuality(ISS)V
.end method

.method public abstract onAudioRouteChanged(I)V
.end method

.method public abstract onBlueToothDeviceDisconnected()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract onBlueToothDeviceconnected()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract onCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract onCallTimeout()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract onCalled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract onCameraSwitchDone(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract onCancelCall(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract onChannelClosed(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract onChannelIdUpdated(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract onConnectionInterrupted()V
.end method

.method public abstract onConnectionLost()V
.end method

.method public abstract onCreateChannelSuccess(Ljava/lang/String;)V
.end method

.method public abstract onError(Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;I)V
.end method

.method public abstract onFirstLocalVideoFrame(II)V
.end method

.method public abstract onFirstRemoteVideoFrame(II)V
.end method

.method public abstract onInvited(Ljava/lang/String;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract onJoinChannelSuccess(I)V
.end method

.method public abstract onKicked(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract onLastmileQuality(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation
.end method

.method public abstract onLeaveChannel(Lcom/taobao/artc/api/ArtcStats;)V
.end method

.method public abstract onLocalVideoStats(Lcom/taobao/artc/api/LocalVideoStats;)V
.end method

.method public abstract onRemoteVideoStats(Lcom/taobao/artc/api/RemoteVideoStats;)V
.end method

.method public abstract onRtcStats(Lcom/taobao/artc/api/ArtcStats;)V
.end method

.method public abstract onSignalChannelAvailable()V
.end method

.method public abstract onUserJoinedChannel(Ljava/lang/String;)V
.end method

.method public abstract onUserLeftChannel(Ljava/lang/String;I)V
.end method

.method public abstract onUserOffline(Ljava/lang/String;I)V
.end method
