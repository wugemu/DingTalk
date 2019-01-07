.class public abstract Lorg/webrtc/alirtcInterface/SophonEventListener;
.super Ljava/lang/Object;
.source "SophonEventListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBye(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 259
    return-void
.end method

.method public onChannelReleaseNotify()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public onCollectPlatformProfile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCollectStats(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "collectStatus"    # Ljava/util/HashMap;

    .prologue
    .line 205
    return-void
.end method

.method public onConnectionChange(I)V
    .locals 0
    .param p1, "mediaConState"    # I

    .prologue
    .line 196
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 224
    return-void
.end method

.method public onFetchPerformanceInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    return-object v0
.end method

.method public onFirstFramereceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "stream_label"    # Ljava/lang/String;
    .param p3, "track_label"    # Ljava/lang/String;
    .param p4, "time_cost_ms"    # I

    .prologue
    .line 299
    return-void
.end method

.method public onGslbResult(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 20
    return-void
.end method

.method public onJoinChannelResult(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 36
    return-void
.end method

.method public onLeaveChannelResult(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 44
    return-void
.end method

.method public onLogMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 242
    return-void
.end method

.method public onMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tid"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 252
    return-void
.end method

.method public onParticipantJoinNotify([Lorg/webrtc/alirtcInterface/AliParticipantInfo;I)V
    .locals 0
    .param p1, "participantList"    # [Lorg/webrtc/alirtcInterface/AliParticipantInfo;
    .param p2, "feedCount"    # I

    .prologue
    .line 107
    return-void
.end method

.method public onParticipantLeaveNotify([Lorg/webrtc/alirtcInterface/AliParticipantInfo;I)V
    .locals 0
    .param p1, "participantList"    # [Lorg/webrtc/alirtcInterface/AliParticipantInfo;
    .param p2, "feedCount"    # I

    .prologue
    .line 116
    return-void
.end method

.method public onParticipantPublishNotify([Lorg/webrtc/alirtcInterface/PublisherInfo;I)V
    .locals 0
    .param p1, "publisherList"    # [Lorg/webrtc/alirtcInterface/PublisherInfo;
    .param p2, "publisherCount"    # I

    .prologue
    .line 125
    return-void
.end method

.method public onParticipantSubscribeNotify([Lorg/webrtc/alirtcInterface/AliSubscriberInfo;I)V
    .locals 0
    .param p1, "subcribeinfoList"    # [Lorg/webrtc/alirtcInterface/AliSubscriberInfo;
    .param p2, "feedCount"    # I

    .prologue
    .line 143
    return-void
.end method

.method public onParticipantUnpublishNotify([Lorg/webrtc/alirtcInterface/AliUnPublisherInfo;I)V
    .locals 0
    .param p1, "unpublisherList"    # [Lorg/webrtc/alirtcInterface/AliUnPublisherInfo;
    .param p2, "feedCount"    # I

    .prologue
    .line 134
    return-void
.end method

.method public onParticipantUnsubscribeNotify([Lorg/webrtc/alirtcInterface/AliParticipantInfo;I)V
    .locals 0
    .param p1, "participantList"    # [Lorg/webrtc/alirtcInterface/AliParticipantInfo;
    .param p2, "feedCount"    # I

    .prologue
    .line 152
    return-void
.end method

.method public onPublishResult(ILjava/lang/String;)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .prologue
    .line 53
    return-void
.end method

.method public onRepublishResult(ILjava/lang/String;)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .prologue
    .line 62
    return-void
.end method

.method public onResubscribeResult(ILjava/lang/String;)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .prologue
    .line 89
    return-void
.end method

.method public onResubscribeResult2(ILjava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "callID"    # Ljava/lang/String;
    .param p3, "reqConfig"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;
    .param p4, "curConfig"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;

    .prologue
    .line 172
    return-void
.end method

.method public onSubscribeResult(ILjava/lang/String;)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .prologue
    .line 80
    return-void
.end method

.method public onSubscribeResult2(ILjava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "callID"    # Ljava/lang/String;
    .param p3, "reqConfig"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;
    .param p4, "curConfig"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;

    .prologue
    .line 162
    return-void
.end method

.method public onTransportStatusChange(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "event"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;
    .param p3, "status"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

    .prologue
    .line 234
    return-void
.end method

.method public onUnpublishResult(ILjava/lang/String;)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .prologue
    .line 71
    return-void
.end method

.method public onUnsubscribeResult(ILjava/lang/String;)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .prologue
    .line 98
    return-void
.end method

.method public onUplinkChannelMessage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 268
    return-void
.end method

.method public onWarning(ILjava/lang/String;)V
    .locals 0
    .param p1, "warningEvent"    # I
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 214
    return-void
.end method

.method public onWindowRenderReady(Ljava/lang/String;I)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoType"    # I

    .prologue
    .line 290
    return-void
.end method
