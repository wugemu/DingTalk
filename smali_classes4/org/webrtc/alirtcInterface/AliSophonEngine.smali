.class public interface abstract Lorg/webrtc/alirtcInterface/AliSophonEngine;
.super Ljava/lang/Object;
.source "AliSophonEngine.java"


# virtual methods
.method public abstract onBye(I)V
.end method

.method public abstract onCollectPlatformProfile()Ljava/lang/String;
.end method

.method public abstract onCollectStatus(Ljava/lang/String;Ljava/util/HashMap;)V
.end method

.method public abstract onConnectionChange(I)V
.end method

.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract onFetchPerformanceInfo()Ljava/lang/String;
.end method

.method public abstract onFirstFrameReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract onGslbResult(I)V
.end method

.method public abstract onJoinChannelResult(I)V
.end method

.method public abstract onLeaveChannelResult(I)V
.end method

.method public abstract onLogMessage(Ljava/lang/String;)V
.end method

.method public abstract onMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onParticipantJoinNotify([Lorg/webrtc/alirtcInterface/AliParticipantInfo;I)V
.end method

.method public abstract onParticipantLeaveNotify([Lorg/webrtc/alirtcInterface/AliParticipantInfo;I)V
.end method

.method public abstract onParticipantPublishNotify([Lorg/webrtc/alirtcInterface/PublisherInfo;I)V
.end method

.method public abstract onParticipantSubscribeNotify([Lorg/webrtc/alirtcInterface/AliSubscriberInfo;I)V
.end method

.method public abstract onParticipantUnpublishNotify([Lorg/webrtc/alirtcInterface/AliUnPublisherInfo;I)V
.end method

.method public abstract onParticipantUnsubscribeNotify([Lorg/webrtc/alirtcInterface/AliParticipantInfo;I)V
.end method

.method public abstract onPublishResult(ILjava/lang/String;)V
.end method

.method public abstract onRecvStatsReport(Ljava/util/HashMap;)V
.end method

.method public abstract onRepublishResult(ILjava/lang/String;)V
.end method

.method public abstract onResubscribeResult(ILjava/lang/String;)V
.end method

.method public abstract onResubscribeResult2(ILjava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)V
.end method

.method public abstract onSubscribeResult(ILjava/lang/String;)V
.end method

.method public abstract onSubscribeResult2(ILjava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)V
.end method

.method public abstract onTransportStatusChange(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;)V
.end method

.method public abstract onUnpublishResult(ILjava/lang/String;)V
.end method

.method public abstract onUnsubscribeResult(ILjava/lang/String;)V
.end method

.method public abstract onUplinkChannelMessage(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onWarning(ILjava/lang/String;)V
.end method

.method public abstract onWindowRenderReady(Ljava/lang/String;I)V
.end method

.method public abstract release()V
.end method
