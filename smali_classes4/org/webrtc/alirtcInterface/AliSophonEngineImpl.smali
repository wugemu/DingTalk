.class public Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;
.super Ljava/lang/Object;
.source "AliSophonEngineImpl.java"

# interfaces
.implements Lorg/webrtc/alirtcInterface/AliSophonEngine;


# static fields
.field private static final NETWORK_OBSERVER:J = 0x2711L


# instance fields
.field public accessKeySecret:Ljava/lang/String;

.field public accesskeyID:Ljava/lang/String;

.field private aliRtc:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

.field private cpuMonitor:Lorg/webrtc/utils/CpuMonitor;

.field public endpoint:Ljava/lang/String;

.field public logStore:Ljava/lang/String;

.field private memoryMonitor:Lorg/webrtc/utils/MemoryMonitor;

.field public project:Ljava/lang/String;

.field public recvStatsReportlogStore:Ljava/lang/String;

.field private sophonEventListener:Lorg/webrtc/alirtcInterface/SophonEventListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;Lorg/webrtc/alirtcInterface/SophonEventListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aliRtcInterface"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;
    .param p3, "listener"    # Lorg/webrtc/alirtcInterface/SophonEventListener;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string/jumbo v0, "http://cn-shenzhen.log.aliyuncs.com/"

    iput-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->endpoint:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, "LTAIpYQmhj9noEgk"

    iput-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->accesskeyID:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, "hdPPEqExm9BLzsxMUdyIT0H0nl1hR9"

    iput-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->accessKeySecret:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, "ali-rtc-sz"

    iput-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->project:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "client-debug"

    iput-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->logStore:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "client"

    iput-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->recvStatsReportlogStore:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->sophonEventListener:Lorg/webrtc/alirtcInterface/SophonEventListener;

    .line 33
    iput-object p2, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->aliRtc:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    .line 34
    new-instance v0, Lorg/webrtc/utils/CpuMonitor;

    invoke-direct {v0, p1}, Lorg/webrtc/utils/CpuMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->cpuMonitor:Lorg/webrtc/utils/CpuMonitor;

    .line 35
    new-instance v0, Lorg/webrtc/utils/MemoryMonitor;

    invoke-direct {v0, p1}, Lorg/webrtc/utils/MemoryMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->memoryMonitor:Lorg/webrtc/utils/MemoryMonitor;

    .line 36
    invoke-direct {p0}, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->startMonitoring()V

    .line 37
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->cpuMonitor:Lorg/webrtc/utils/CpuMonitor;

    invoke-virtual {v0}, Lorg/webrtc/utils/CpuMonitor;->resume()V

    .line 38
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->memoryMonitor:Lorg/webrtc/utils/MemoryMonitor;

    invoke-virtual {v0}, Lorg/webrtc/utils/MemoryMonitor;->resume()V

    .line 39
    return-void
.end method

.method private getCurrentConnectionType()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 180
    invoke-static {}, Lorg/webrtc/utils/NetworkMonitor;->getInstance()Lorg/webrtc/utils/NetworkMonitor;

    move-result-object v0

    .line 181
    .local v0, "networkMonitor":Lorg/webrtc/utils/NetworkMonitor;
    invoke-virtual {v0}, Lorg/webrtc/utils/NetworkMonitor;->getCurrentConnectionType()Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private startMonitoring()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 170
    invoke-static {}, Lorg/webrtc/utils/NetworkMonitor;->getInstance()Lorg/webrtc/utils/NetworkMonitor;

    move-result-object v0

    .line 171
    .local v0, "networkMonitor":Lorg/webrtc/utils/NetworkMonitor;
    const-wide/16 v2, 0x2711

    invoke-virtual {v0, v2, v3}, Lorg/webrtc/utils/NetworkMonitor;->startMonitoring(J)V

    .line 172
    return-void
.end method

.method private stopMonitoring()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 175
    invoke-static {}, Lorg/webrtc/utils/NetworkMonitor;->getInstance()Lorg/webrtc/utils/NetworkMonitor;

    move-result-object v0

    .line 176
    .local v0, "networkMonitor":Lorg/webrtc/utils/NetworkMonitor;
    const-wide/16 v2, 0x2711

    invoke-virtual {v0, v2, v3}, Lorg/webrtc/utils/NetworkMonitor;->stopMonitoring(J)V

    .line 177
    return-void
.end method


# virtual methods
.method public onBye(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 218
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->sophonEventListener:Lorg/webrtc/alirtcInterface/SophonEventListener;

    invoke-virtual {v0, p1}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onBye(I)V

    .line 219
    return-void
.end method

.method public onCollectPlatformProfile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->sophonEventListener:Lorg/webrtc/alirtcInterface/SophonEventListener;

    invoke-virtual {v0}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onCollectPlatformProfile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCollectStatus(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "collectStatus"    # Ljava/util/HashMap;

    .prologue
    .line 88
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->sophonEventListener:Lorg/webrtc/alirtcInterface/SophonEventListener;

    invoke-virtual {v0, p1, p2}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onCollectStats(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 89
    return-void
.end method

.method public onConnectionChange(I)V
    .locals 1
    .param p1, "mediaConState"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->sophonEventListener:Lorg/webrtc/alirtcInterface/SophonEventListener;

    invoke-virtual {v0, p1}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onConnectionChange(I)V

    .line 94
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->sophonEventListener:Lorg/webrtc/alirtcInterface/SophonEventListener;

    invoke-virtual {v0, p1, p2}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onError(ILjava/lang/String;)V

    .line 104
    return-void
.end method

.method public onFetchPerformanceInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->sophonEventListener:Lorg/webrtc/alirtcInterface/SophonEventListener;

    invoke-virtual {v0}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onFetchPerformanceInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onFirstFrameReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "stream_label"    # Ljava/lang/String;
    .param p3, "track_label"    # Ljava/lang/String;
    .param p4, "time_cost_ms"    # I

    .prologue
    .line 213
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->sophonEventListener:Lorg/webrtc/alirtcInterface/SophonEventListener;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onFirstFramereceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 214
    return-void
.end method

.method public onGslbResult(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->sophonEventListener:Lorg/webrtc/alirtcInterface/SophonEventListener;

    invoke-virtual {v0, p1}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onGslbResult(I)V

    .line 44
    return-void
.end method

.method public onJoinChannelResult(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->sophonEventListener:Lorg/webrtc/alirtcInterface/SophonEventListener;

    invoke-virtual {v0, p1}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onJoinChannelResult(I)V

    .line 49
    return-void
.end method

.method public onLeaveChannelResult(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->sophonEventListener:Lorg/webrtc/alirtcInterface/SophonEventListener;

    invoke-virtual {v0, p1}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onLeaveChannelResult(I)V

    .line 54
    return-void
.end method

.method public onLogMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->sophonEventListener:Lorg/webrtc/alirtcInterface/SophonEventListener;

    invoke-virtual {v0, p1}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onLogMessage(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public onMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tid"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 223
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->sophonEventListener:Lorg/webrtc/alirtcInterface/SophonEventListener;

    invoke-virtual {v0, p1, p2, p3}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public onParticipantJoinNotify([Lorg/webrtc/alirtcInterface/AliParticipantInfo;I)V
    .locals 1
    .param p1, "participantList"    # [Lorg/webrtc/alirtcInterface/AliParticipantInfo;
    .param p2, "feedCount"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->sophonEventListener:Lorg/webrtc/alirtcInterface/SophonEventListener;

    invoke-virtual {v0, p1, p2}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onParticipantJoinNotify([Lorg/webrtc/alirtcInterface/AliParticipantInfo;I)V

    .line 132
    return-void
.end method

.method public onParticipantLeaveNotify([Lorg/webrtc/alirtcInterface/AliParticipantInfo;I)V
    .locals 1
    .param p1, "participantList"    # [Lorg/webrtc/alirtcInterface/AliParticipantInfo;
    .param p2, "feedCount"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->sophonEventListener:Lorg/webrtc/alirtcInterface/SophonEventListener;

    invoke-virtual {v0, p1, p2}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onParticipantLeaveNotify([Lorg/webrtc/alirtcInterface/AliParticipantInfo;I)V

    .line 138
    return-void
.end method

.method public onParticipantPublishNotify([Lorg/webrtc/alirtcInterface/PublisherInfo;I)V
    .locals 1
    .param p1, "publisherList"    # [Lorg/webrtc/alirtcInterface/PublisherInfo;
    .param p2, "publisherCount"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->sophonEventListener:Lorg/webrtc/alirtcInterface/SophonEventListener;

    invoke-virtual {v0, p1, p2}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onParticipantPublishNotify([Lorg/webrtc/alirtcInterface/PublisherInfo;I)V

    .line 114
    return-void
.end method

.method public onParticipantSubscribeNotify([Lorg/webrtc/alirtcInterface/AliSubscriberInfo;I)V
    .locals 1
    .param p1, "subcribeinfoList"    # [Lorg/webrtc/alirtcInterface/AliSubscriberInfo;
    .param p2, "feedCount"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->sophonEventListener:Lorg/webrtc/alirtcInterface/SophonEventListener;

    invoke-virtual {v0, p1, p2}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onParticipantSubscribeNotify([Lorg/webrtc/alirtcInterface/AliSubscriberInfo;I)V

    .line 144
    return-void
.end method

.method public onParticipantUnpublishNotify([Lorg/webrtc/alirtcInterface/AliUnPublisherInfo;I)V
    .locals 1
    .param p1, "unpublisherList"    # [Lorg/webrtc/alirtcInterface/AliUnPublisherInfo;
    .param p2, "feedCount"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->sophonEventListener:Lorg/webrtc/alirtcInterface/SophonEventListener;

    invoke-virtual {v0, p1, p2}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onParticipantUnpublishNotify([Lorg/webrtc/alirtcInterface/AliUnPublisherInfo;I)V

    .line 150
    return-void
.end method

.method public onParticipantUnsubscribeNotify([Lorg/webrtc/alirtcInterface/AliParticipantInfo;I)V
    .locals 1
    .param p1, "participantList"    # [Lorg/webrtc/alirtcInterface/AliParticipantInfo;
    .param p2, "feedCount"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->sophonEventListener:Lorg/webrtc/alirtcInterface/SophonEventListener;

    invoke-virtual {v0, p1, p2}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onParticipantUnsubscribeNotify([Lorg/webrtc/alirtcInterface/AliParticipantInfo;I)V

    .line 155
    return-void
.end method

.method public onPublishResult(ILjava/lang/String;)V
    .locals 1
    .param p1, "result"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->sophonEventListener:Lorg/webrtc/alirtcInterface/SophonEventListener;

    invoke-virtual {v0, p1, p2}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onPublishResult(ILjava/lang/String;)V

    .line 59
    return-void
.end method

.method public onRecvStatsReport(Ljava/util/HashMap;)V
    .locals 6
    .param p1, "map"    # Ljava/util/HashMap;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 164
    invoke-direct {p0}, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->getCurrentConnectionType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->cpuMonitor:Lorg/webrtc/utils/CpuMonitor;

    .line 165
    invoke-virtual {v1}, Lorg/webrtc/utils/CpuMonitor;->getCpuUsageCurrent()I

    move-result v1

    int-to-double v2, v1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->memoryMonitor:Lorg/webrtc/utils/MemoryMonitor;

    .line 166
    invoke-virtual {v2}, Lorg/webrtc/utils/MemoryMonitor;->getMemoryUsageCurrentByPid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->aliRtc:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v3}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->GetSDKVersion()Ljava/lang/String;

    move-result-object v3

    .line 164
    invoke-static {p1, v0, v1, v2, v3}, Lorg/webrtc/utils/RecvStatsReportParam;->generatePublicParamters(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 167
    return-void
.end method

.method public onRepublishResult(ILjava/lang/String;)V
    .locals 1
    .param p1, "result"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->sophonEventListener:Lorg/webrtc/alirtcInterface/SophonEventListener;

    invoke-virtual {v0, p1, p2}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onRepublishResult(ILjava/lang/String;)V

    .line 64
    return-void
.end method

.method public onResubscribeResult(ILjava/lang/String;)V
    .locals 1
    .param p1, "result"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->sophonEventListener:Lorg/webrtc/alirtcInterface/SophonEventListener;

    invoke-virtual {v0, p1, p2}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onResubscribeResult(ILjava/lang/String;)V

    .line 79
    return-void
.end method

.method public onResubscribeResult2(ILjava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)V
    .locals 1
    .param p1, "result"    # I
    .param p2, "callID"    # Ljava/lang/String;
    .param p3, "reqConfig"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;
    .param p4, "curConfig"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;

    .prologue
    .line 125
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->sophonEventListener:Lorg/webrtc/alirtcInterface/SophonEventListener;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onResubscribeResult2(ILjava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)V

    .line 126
    return-void
.end method

.method public onSubscribeResult(ILjava/lang/String;)V
    .locals 1
    .param p1, "result"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->sophonEventListener:Lorg/webrtc/alirtcInterface/SophonEventListener;

    invoke-virtual {v0, p1, p2}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onSubscribeResult(ILjava/lang/String;)V

    .line 74
    return-void
.end method

.method public onSubscribeResult2(ILjava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)V
    .locals 1
    .param p1, "result"    # I
    .param p2, "callID"    # Ljava/lang/String;
    .param p3, "reqConfig"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;
    .param p4, "curConfig"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->sophonEventListener:Lorg/webrtc/alirtcInterface/SophonEventListener;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onSubscribeResult2(ILjava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)V

    .line 120
    return-void
.end method

.method public onTransportStatusChange(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "event"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;
    .param p3, "status"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

    .prologue
    .line 159
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->sophonEventListener:Lorg/webrtc/alirtcInterface/SophonEventListener;

    invoke-virtual {v0, p1, p2, p3}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onTransportStatusChange(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;)V

    .line 160
    return-void
.end method

.method public onUnpublishResult(ILjava/lang/String;)V
    .locals 1
    .param p1, "result"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->sophonEventListener:Lorg/webrtc/alirtcInterface/SophonEventListener;

    invoke-virtual {v0, p1, p2}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onUnpublishResult(ILjava/lang/String;)V

    .line 69
    return-void
.end method

.method public onUnsubscribeResult(ILjava/lang/String;)V
    .locals 1
    .param p1, "result"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->sophonEventListener:Lorg/webrtc/alirtcInterface/SophonEventListener;

    invoke-virtual {v0, p1, p2}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onUnsubscribeResult(ILjava/lang/String;)V

    .line 84
    return-void
.end method

.method public onUplinkChannelMessage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # I
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 193
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->sophonEventListener:Lorg/webrtc/alirtcInterface/SophonEventListener;

    invoke-virtual {v0, p1, p2, p3}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onUplinkChannelMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public onWarning(ILjava/lang/String;)V
    .locals 1
    .param p1, "warningEvent"    # I
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->sophonEventListener:Lorg/webrtc/alirtcInterface/SophonEventListener;

    invoke-virtual {v0, p1, p2}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onWarning(ILjava/lang/String;)V

    .line 99
    return-void
.end method

.method public onWindowRenderReady(Ljava/lang/String;I)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoType"    # I

    .prologue
    .line 208
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->sophonEventListener:Lorg/webrtc/alirtcInterface/SophonEventListener;

    invoke-virtual {v0, p1, p2}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onWindowRenderReady(Ljava/lang/String;I)V

    .line 209
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0}, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->stopMonitoring()V

    .line 187
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->cpuMonitor:Lorg/webrtc/utils/CpuMonitor;

    invoke-virtual {v0}, Lorg/webrtc/utils/CpuMonitor;->pause()V

    .line 188
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;->memoryMonitor:Lorg/webrtc/utils/MemoryMonitor;

    invoke-virtual {v0}, Lorg/webrtc/utils/MemoryMonitor;->pause()V

    .line 189
    return-void
.end method
