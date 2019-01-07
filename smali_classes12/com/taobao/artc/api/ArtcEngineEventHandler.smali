.class public abstract Lcom/taobao/artc/api/ArtcEngineEventHandler;
.super Ljava/lang/Object;
.source "ArtcEngineEventHandler.java"

# interfaces
.implements Lcom/taobao/artc/api/IArtcEngineEventHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnswer(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "answer"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 213
    return-void
.end method

.method public onAnswer2(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "answer"    # I
    .param p4, "option"    # Ljava/lang/String;
    .param p5, "extension"    # Ljava/lang/String;

    .prologue
    .line 214
    return-void
.end method

.method public onAnswered(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "role"    # I
    .param p5, "answer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 201
    return-void
.end method

.method public onAnswered2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "role"    # I
    .param p5, "answer"    # I
    .param p6, "option"    # Ljava/lang/String;
    .param p7, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .prologue
    .line 202
    return-void
.end method

.method public onAudioQuality(ISS)V
    .locals 0
    .param p1, "quality"    # I
    .param p2, "delay"    # S
    .param p3, "lost"    # S

    .prologue
    .line 108
    return-void
.end method

.method public onAudioRouteChanged(I)V
    .locals 0
    .param p1, "routing"    # I

    .prologue
    .line 90
    return-void
.end method

.method public onBlueToothDeviceDisconnected()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .prologue
    .line 153
    return-void
.end method

.method public onBlueToothDeviceconnected()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .prologue
    .line 162
    return-void
.end method

.method public onCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 171
    return-void
.end method

.method public onCall2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "result"    # I
    .param p5, "option"    # Ljava/lang/String;
    .param p6, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .prologue
    .line 172
    return-void
.end method

.method public onCallTimeout()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .prologue
    .line 244
    return-void
.end method

.method public onCalled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "role"    # I
    .param p5, "isVideoCall"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 181
    return-void
.end method

.method public onCalled2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "role"    # I
    .param p5, "isVideoCall"    # I
    .param p6, "option"    # Ljava/lang/String;
    .param p7, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .prologue
    .line 182
    return-void
.end method

.method public onCameraSwitchDone(Z)V
    .locals 0
    .param p1, "isFrontCamera"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .prologue
    .line 263
    return-void
.end method

.method public onCancelCall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "remoteUserId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .prologue
    .line 232
    return-void
.end method

.method public onCanceledCall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "remoteUserId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 235
    return-void
.end method

.method public onCanceledCall2(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "remoteUserId"    # Ljava/lang/String;
    .param p3, "reason"    # I
    .param p4, "option"    # Ljava/lang/String;
    .param p5, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .prologue
    .line 236
    return-void
.end method

.method public onChannelClosed(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "reasonId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29
    return-void
.end method

.method public onChannelClosed2(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "reasonId"    # I
    .param p4, "option"    # Ljava/lang/String;
    .param p5, "extension"    # Ljava/lang/String;

    .prologue
    .line 30
    return-void
.end method

.method public onConnectionInterrupted()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public onConnectionLost()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public onCreateChannelSuccess(Ljava/lang/String;)V
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;

    .prologue
    .line 19
    return-void
.end method

.method public onError(Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;I)V
    .locals 0
    .param p1, "errorEvent"    # Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;
    .param p2, "errorcode"    # I

    .prologue
    .line 82
    return-void
.end method

.method public onFirstLocalVideoFrame(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 139
    return-void
.end method

.method public onFirstRemoteVideoFrame(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 145
    return-void
.end method

.method public onInvited(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "isVideoCall"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 191
    return-void
.end method

.method public onInvited2(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "isVideoCall"    # I
    .param p4, "option"    # Ljava/lang/String;
    .param p5, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .prologue
    .line 192
    return-void
.end method

.method public onJoinChannelSuccess(I)V
    .locals 0
    .param p1, "elapsed"    # I

    .prologue
    .line 38
    return-void
.end method

.method public onKicked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "remoteUserId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 223
    return-void
.end method

.method public onKicked2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "remoteUserId"    # Ljava/lang/String;
    .param p3, "option"    # Ljava/lang/String;
    .param p4, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .prologue
    .line 224
    return-void
.end method

.method public onLastmileQuality(I)V
    .locals 0
    .param p1, "quality"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .prologue
    .line 255
    return-void
.end method

.method public onLeaveChannel(Lcom/taobao/artc/api/ArtcStats;)V
    .locals 0
    .param p1, "stats"    # Lcom/taobao/artc/api/ArtcStats;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 67
    return-void
.end method

.method public onLeaveChannel2(Lcom/taobao/artc/api/ArtcStats;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "stats"    # Lcom/taobao/artc/api/ArtcStats;
    .param p2, "option"    # Ljava/lang/String;
    .param p3, "extension"    # Ljava/lang/String;

    .prologue
    .line 68
    return-void
.end method

.method public onLocalVideoStats(Lcom/taobao/artc/api/LocalVideoStats;)V
    .locals 0
    .param p1, "stats"    # Lcom/taobao/artc/api/LocalVideoStats;

    .prologue
    .line 119
    return-void
.end method

.method public onRemoteVideoStats(Lcom/taobao/artc/api/RemoteVideoStats;)V
    .locals 0
    .param p1, "stats"    # Lcom/taobao/artc/api/RemoteVideoStats;

    .prologue
    .line 122
    return-void
.end method

.method public onRtcStats(Lcom/taobao/artc/api/ArtcStats;)V
    .locals 0
    .param p1, "stats"    # Lcom/taobao/artc/api/ArtcStats;

    .prologue
    .line 116
    return-void
.end method

.method public onSignalChannelAvailable()V
    .locals 0

    .prologue
    .line 10
    return-void
.end method

.method public onUserJoinedChannel(Ljava/lang/String;)V
    .locals 0
    .param p1, "remoteUserId"    # Ljava/lang/String;

    .prologue
    .line 47
    return-void
.end method

.method public onUserLeftChannel(Ljava/lang/String;I)V
    .locals 0
    .param p1, "remoteUserId"    # Ljava/lang/String;
    .param p2, "reason"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 57
    return-void
.end method

.method public onUserLeftChannel2(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "remoteUserId"    # Ljava/lang/String;
    .param p2, "reason"    # I
    .param p3, "option"    # Ljava/lang/String;
    .param p4, "extension"    # Ljava/lang/String;

    .prologue
    .line 58
    return-void
.end method

.method public onUserOffline(Ljava/lang/String;I)V
    .locals 0
    .param p1, "remoteUserId"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 75
    return-void
.end method
