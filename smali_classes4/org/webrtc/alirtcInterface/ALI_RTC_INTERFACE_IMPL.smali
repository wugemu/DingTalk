.class public Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;
.super Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;
.source "ALI_RTC_INTERFACE_IMPL.java"


# instance fields
.field final Rtc_Event_OnAddStream_Type:I

.field final Rtc_Event_OnAudioTrackAdded:I

.field final Rtc_Event_OnAudioTrackRemoved:I

.field final Rtc_Event_OnAuthResult_Type:I

.field final Rtc_Event_OnCollectStatus_Type:I

.field final Rtc_Event_OnCreateRoomResult_Type:I

.field final Rtc_Event_OnGslb_Type:I

.field final Rtc_Event_OnJoinRoomResult_Type:I

.field final Rtc_Event_OnLeaveRoomResult_Type:I

.field final Rtc_Event_OnParticipantJoin_Type:I

.field final Rtc_Event_OnParticipantLeave_Type:I

.field final Rtc_Event_OnParticipantPublish_Type:I

.field final Rtc_Event_OnParticipantSubscribe_Type:I

.field final Rtc_Event_OnParticipantUnpublish_Type:I

.field final Rtc_Event_OnParticipantUnsubscribe_Type:I

.field final Rtc_Event_OnPublishResult_Type:I

.field final Rtc_Event_OnRePublishResult_Type:I

.field final Rtc_Event_OnRemoveStream_Type:I

.field final Rtc_Event_OnSubscribeResult_Type:I

.field final Rtc_Event_OnUnpublishResult_Type:I

.field final Rtc_Event_OnUnsubscribeResult_Type:I

.field final Rtc_Event_OnVideoTrackAdded:I

.field final Rtc_Event_OnVideoTrackRemoved:I

.field final Rtc_Event_onReSubscribeResult_Tpye:I

.field final Rtc_event_OnRecvStats_Report:I

.field private final SDK_VERSION:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private collectStatusListener:Lorg/webrtc/alirtcInterface/CollectStatusListener;

.field private mExternAudioObserver:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioObserver;

.field private mExternRenderDataObserverMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRenderDataObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mExternTexturePostObserverMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliTextureObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mExternTexturePreObserverMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliTextureObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mExternVideoObserver:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliVideoObserver;",
            ">;"
        }
    .end annotation
.end field

.field private m_nRtcInterface:J

.field private m_nRtcInterfaceListener:Lorg/webrtc/alirtcInterface/AliSophonEngine;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 19
    invoke-direct {p0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;-><init>()V

    .line 20
    const-string/jumbo v0, "ALI_RTC_INTERFACE_IMPL"

    iput-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->TAG:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, "0.7.0.051801"

    iput-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->SDK_VERSION:Ljava/lang/String;

    .line 94
    const/4 v0, 0x1

    iput v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->Rtc_Event_OnAuthResult_Type:I

    .line 95
    const/4 v0, 0x2

    iput v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->Rtc_Event_OnCreateRoomResult_Type:I

    .line 96
    const/4 v0, 0x3

    iput v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->Rtc_Event_OnJoinRoomResult_Type:I

    .line 97
    const/4 v0, 0x4

    iput v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->Rtc_Event_OnLeaveRoomResult_Type:I

    .line 98
    const/4 v0, 0x5

    iput v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->Rtc_Event_OnPublishResult_Type:I

    .line 99
    const/4 v0, 0x6

    iput v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->Rtc_Event_OnUnpublishResult_Type:I

    .line 100
    const/4 v0, 0x7

    iput v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->Rtc_Event_OnSubscribeResult_Type:I

    .line 101
    const/16 v0, 0x8

    iput v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->Rtc_Event_OnUnsubscribeResult_Type:I

    .line 102
    const/16 v0, 0x9

    iput v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->Rtc_Event_OnAddStream_Type:I

    .line 103
    const/16 v0, 0xa

    iput v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->Rtc_Event_OnRemoveStream_Type:I

    .line 104
    const/16 v0, 0xb

    iput v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->Rtc_Event_OnAudioTrackAdded:I

    .line 105
    const/16 v0, 0xc

    iput v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->Rtc_Event_OnAudioTrackRemoved:I

    .line 106
    const/16 v0, 0xd

    iput v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->Rtc_Event_OnVideoTrackAdded:I

    .line 107
    const/16 v0, 0xe

    iput v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->Rtc_Event_OnVideoTrackRemoved:I

    .line 108
    const/16 v0, 0xf

    iput v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->Rtc_Event_OnGslb_Type:I

    .line 109
    const/16 v0, 0x10

    iput v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->Rtc_Event_OnRePublishResult_Type:I

    .line 110
    const/16 v0, 0x11

    iput v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->Rtc_Event_onReSubscribeResult_Tpye:I

    .line 112
    const/16 v0, 0x3e9

    iput v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->Rtc_Event_OnParticipantPublish_Type:I

    .line 113
    const/16 v0, 0x3ea

    iput v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->Rtc_Event_OnParticipantUnpublish_Type:I

    .line 114
    const/16 v0, 0x3eb

    iput v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->Rtc_Event_OnParticipantJoin_Type:I

    .line 115
    const/16 v0, 0x3ec

    iput v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->Rtc_Event_OnParticipantLeave_Type:I

    .line 116
    const/16 v0, 0x3ed

    iput v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->Rtc_Event_OnParticipantSubscribe_Type:I

    .line 117
    const/16 v0, 0x3ee

    iput v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->Rtc_Event_OnParticipantUnsubscribe_Type:I

    .line 118
    const/16 v0, 0x3ef

    iput v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->Rtc_Event_OnCollectStatus_Type:I

    .line 119
    const/16 v0, 0x3f0

    iput v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->Rtc_event_OnRecvStats_Report:I

    .line 121
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    .line 122
    iput-object v2, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterfaceListener:Lorg/webrtc/alirtcInterface/AliSophonEngine;

    .line 123
    iput-object v2, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->collectStatusListener:Lorg/webrtc/alirtcInterface/CollectStatusListener;

    .line 134
    iput-object v2, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternAudioObserver:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioObserver;

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternVideoObserver:Ljava/util/Map;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternTexturePreObserverMap:Ljava/util/Map;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternTexturePostObserverMap:Ljava/util/Map;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternRenderDataObserverMap:Ljava/util/Map;

    return-void
.end method

.method public static GetH5CompatibleMode()I
    .locals 1

    .prologue
    .line 132
    invoke-static {}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeGetH5CompatibleMode()I

    move-result v0

    return v0
.end method

.method public static SetH5CompatibleMode(I)I
    .locals 2
    .param p0, "enable"    # I

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, " SetH5CompatibleMode---enable="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    invoke-static {p0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeSetH5CompatibleMode(I)I

    move-result v0

    return v0
.end method

.method public static native nativeGetH5CompatibleMode()I
.end method

.method public static native nativeSetH5CompatibleMode(I)I
.end method


# virtual methods
.method public AddLocalDisplayWindow(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;)V
    .locals 6
    .param p1, "aliRTCSdk_videSource_type"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;
    .param p2, "config"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 485
    iget-object v2, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "addLocalDisplayWindow\nSurface"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p2, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->display_view:Landroid/view/Surface;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "width:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "height:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-wide v2, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v2, v3, p1, p2}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeAddLocalDisplayWindow(JLorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;)V

    .line 489
    iget-object v2, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternTexturePreObserverMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 490
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliTextureObserver;>;"
    iget-wide v4, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v2}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeRegisterTexturePreCallback(JLjava/lang/String;)V

    goto :goto_0

    .line 492
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliTextureObserver;>;"
    :cond_0
    iget-object v2, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternTexturePostObserverMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 493
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliTextureObserver;>;"
    iget-wide v4, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v2}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeRegisterTexturePostCallback(JLjava/lang/String;)V

    goto :goto_1

    .line 495
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliTextureObserver;>;"
    :cond_1
    iget-object v2, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternRenderDataObserverMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 496
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRenderDataObserver;>;"
    iget-wide v4, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v2}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeRegisterRGBACallback(JLjava/lang/String;)V

    goto :goto_2

    .line 498
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRenderDataObserver;>;"
    :cond_2
    return-void
.end method

.method public AddRemoteDisplayWindow(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;)V
    .locals 8
    .param p1, "call_id"    # Ljava/lang/String;
    .param p2, "type"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;
    .param p3, "config"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 459
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "addRemoteDisplayWindow:callId"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\nSurface"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->display_view:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-wide v2, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeAddRemoteDisplayWindow(JLjava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;)V

    .line 462
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternRenderDataObserverMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 463
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRenderDataObserver;>;"
    iget-wide v4, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeRegisterRGBACallback(JLjava/lang/String;)V

    goto :goto_0

    .line 465
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRenderDataObserver;>;"
    :cond_0
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternTexturePreObserverMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 466
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliTextureObserver;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 467
    iget-wide v4, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeRegisterTexturePreCallback(JLjava/lang/String;)V

    goto :goto_1

    .line 470
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliTextureObserver;>;"
    :cond_2
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternTexturePostObserverMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 471
    .restart local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliTextureObserver;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 472
    iget-wide v4, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeRegisterTexturePostCallback(JLjava/lang/String;)V

    goto :goto_2

    .line 475
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliTextureObserver;>;"
    :cond_4
    return-void
.end method

.method public ChangeLogLevel(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSDKLogLevel;)V
    .locals 2
    .param p1, "level"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSDKLogLevel;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 594
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeChangeLogLevel(JLorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSDKLogLevel;)V

    .line 595
    return-void
.end method

.method public CloseCamera()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 538
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeCloseCamera(J)I

    .line 539
    return-void
.end method

.method public Create(Ljava/lang/String;Lorg/webrtc/alirtcInterface/AliSophonEngine;)J
    .locals 2
    .param p1, "extras"    # Ljava/lang/String;
    .param p2, "listener"    # Lorg/webrtc/alirtcInterface/AliSophonEngine;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 362
    iput-object p2, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterfaceListener:Lorg/webrtc/alirtcInterface/AliSophonEngine;

    .line 363
    invoke-virtual {p0, p1, p2}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeCreate(Ljava/lang/String;Lorg/webrtc/alirtcInterface/AliSophonEngine;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    .line 364
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    return-wide v0
.end method

.method public Destory()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 369
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeDestroy(J)V

    .line 370
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterfaceListener:Lorg/webrtc/alirtcInterface/AliSophonEngine;

    invoke-interface {v0}, Lorg/webrtc/alirtcInterface/AliSophonEngine;->release()V

    .line 371
    return-void
.end method

.method public EnableLocalAudio(Z)V
    .locals 2
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 574
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeEnableLocalAudio(JZ)V

    .line 575
    return-void
.end method

.method public EnableLocalVideo(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Z)V
    .locals 2
    .param p1, "aliRTCSdk_videSource_type"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;
    .param p2, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 579
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeEnableLocalVideo(JLorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Z)V

    .line 580
    return-void
.end method

.method public EnableRemoteAudio(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "call_id"    # Ljava/lang/String;
    .param p2, "mute"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 584
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeEnableRemoteAudio(JLjava/lang/String;Z)V

    .line 585
    return-void
.end method

.method public EnableRemoteVideo(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Z)V
    .locals 7
    .param p1, "call_id"    # Ljava/lang/String;
    .param p2, "aliRTCSdk_videSource_type"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;
    .param p3, "mute"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 589
    iget-wide v2, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeEnableRemoteVideo(JLjava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Z)V

    .line 590
    return-void
.end method

.method public EnableUpload(Z)V
    .locals 2
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 609
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeEnableUpload(JZ)V

    .line 610
    return-void
.end method

.method public EnumerateAllCaptureDevices()[Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 660
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeEnumerateAllCaptureDevices(J)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetApiLevel()I
    .locals 1

    .prologue
    .line 272
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public GetCaptureType()Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 516
    sget-object v1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;->SDK_Capture_Typ_Front:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;

    .line 518
    .local v1, "type":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;
    iget-wide v2, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v2, v3}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeGetCaptureType(J)I

    move-result v0

    .line 519
    .local v0, "tmp":I
    sget-object v2, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;->SDK_Capture_Typ_Invalid:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;

    invoke-virtual {v2}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;->getCaptureType()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 520
    sget-object v1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;->SDK_Capture_Typ_Invalid:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;

    .line 527
    .end local v1    # "type":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;
    :cond_0
    :goto_0
    return-object v1

    .line 521
    .restart local v1    # "type":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;
    :cond_1
    sget-object v2, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;->SDK_Capture_Typ_Front:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;

    invoke-virtual {v2}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;->getCaptureType()I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 522
    sget-object v1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;->SDK_Capture_Typ_Back:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;

    goto :goto_0

    .line 523
    :cond_2
    sget-object v2, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;->SDK_Capture_Typ_Back:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;

    invoke-virtual {v2}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;->getCaptureType()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 524
    sget-object v1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;->SDK_Capture_Typ_Front:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;

    goto :goto_0
.end method

.method public GetLogLevel()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 604
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeGetLogLevel(J)I

    move-result v0

    return v0
.end method

.method public GetSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    const-string/jumbo v0, "0.7.0.051801"

    return-object v0
.end method

.method public GetTransportStatus(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;)Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;
    .locals 4
    .param p1, "call_id"    # Ljava/lang/String;
    .param p2, "type"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 640
    iget-wide v2, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v2, v3, p1, p2}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeGetTransportStatus(JLjava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;)I

    move-result v0

    .line 641
    .local v0, "transportStatus":I
    packed-switch v0, :pswitch_data_0

    .line 655
    sget-object v1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;->Transport_VERY_GOOD:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

    :goto_0
    return-object v1

    .line 643
    :pswitch_0
    sget-object v1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;->Transport_VERY_GOOD:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

    goto :goto_0

    .line 645
    :pswitch_1
    sget-object v1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;->Transport_GOOD:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

    goto :goto_0

    .line 647
    :pswitch_2
    sget-object v1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;->Transport_NORMAL:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

    goto :goto_0

    .line 649
    :pswitch_3
    sget-object v1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;->Transport_BAD:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

    goto :goto_0

    .line 651
    :pswitch_4
    sget-object v1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;->Transport_VERY_BAD:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

    goto :goto_0

    .line 653
    :pswitch_5
    sget-object v1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;->Transport_UNKNOW:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

    goto :goto_0

    .line 641
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public Gslb(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AuthInfo;)I
    .locals 4
    .param p1, "auth_info"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AuthInfo;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 385
    iget-wide v2, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v2, v3, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeGslb(JLorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AuthInfo;)I

    move-result v0

    .line 387
    .local v0, "result":I
    return v0
.end method

.method public JoinChannel(Ljava/lang/String;)I
    .locals 4
    .param p1, "display_name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 394
    iget-wide v2, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v2, v3, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeJoinRoom(JLjava/lang/String;)I

    move-result v0

    .line 396
    .local v0, "result":I
    return v0
.end method

.method public JoinChannel(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AuthInfo;Ljava/lang/String;)I
    .locals 4
    .param p1, "auth_info"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AuthInfo;
    .param p2, "display_name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 403
    iget-wide v2, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v2, v3, p1, p2}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeJoinChannel(JLorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AuthInfo;Ljava/lang/String;)I

    move-result v0

    .line 404
    .local v0, "result":I
    return v0
.end method

.method public LeaveChannel()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 411
    iget-wide v2, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v2, v3}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeLeaveRoom(J)I

    move-result v0

    .line 413
    .local v0, "result":I
    return v0
.end method

.method public LeaveChannel(J)I
    .locals 5
    .param p1, "timeout"    # J

    .prologue
    .line 421
    iget-wide v2, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v2, v3, p1, p2}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeLeaveChannel(JJ)I

    move-result v0

    .line 423
    .local v0, "result":I
    return v0
.end method

.method public Log(Ljava/lang/String;ILorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSDKLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "line"    # I
    .param p3, "sev"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSDKLogLevel;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "log"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 599
    iget-wide v2, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p3}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSDKLogLevel;->getValue()I

    move-result v6

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeLog(JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 600
    return-void
.end method

.method public LogDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 625
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeLogDestroy(J)V

    .line 626
    return-void
.end method

.method public OnAudioCaptureData(JIIIII)V
    .locals 9
    .param p1, "dataPtr"    # J
    .param p3, "numSamples"    # I
    .param p4, "bytesPerSample"    # I
    .param p5, "numChannels"    # I
    .param p6, "sampleRate"    # I
    .param p7, "samplesPerSec"    # I

    .prologue
    .line 284
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternAudioObserver:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioObserver;

    if-eqz v0, :cond_0

    .line 285
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternAudioObserver:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioObserver;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioObserver;->onCaptureData(JIIIII)V

    .line 287
    :cond_0
    return-void
.end method

.method public OnAudioRenderData(JIIIII)V
    .locals 9
    .param p1, "dataPtr"    # J
    .param p3, "numSamples"    # I
    .param p4, "bytesPerSample"    # I
    .param p5, "numChannels"    # I
    .param p6, "sampleRate"    # I
    .param p7, "samplesPerSec"    # I

    .prologue
    .line 290
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternAudioObserver:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioObserver;

    if-eqz v0, :cond_0

    .line 291
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternAudioObserver:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioObserver;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioObserver;->onRenderData(JIIIII)V

    .line 293
    :cond_0
    return-void
.end method

.method public OnBye(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 255
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterfaceListener:Lorg/webrtc/alirtcInterface/AliSophonEngine;

    invoke-interface {v0, p1}, Lorg/webrtc/alirtcInterface/AliSophonEngine;->onBye(I)V

    .line 256
    return-void
.end method

.method public OnCollectPlatformProfile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterfaceListener:Lorg/webrtc/alirtcInterface/AliSophonEngine;

    invoke-interface {v0}, Lorg/webrtc/alirtcInterface/AliSophonEngine;->onCollectPlatformProfile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OnCollectStatusJNI(ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "call_id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/16 v0, 0x3ef

    if-ne p1, v0, :cond_0

    .line 241
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->collectStatusListener:Lorg/webrtc/alirtcInterface/CollectStatusListener;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->collectStatusListener:Lorg/webrtc/alirtcInterface/CollectStatusListener;

    invoke-interface {v0, p2, p3}, Lorg/webrtc/alirtcInterface/CollectStatusListener;->onCollectStatusInfo(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 246
    :cond_0
    return-void
.end method

.method public OnError(ILjava/lang/String;)V
    .locals 2
    .param p1, "error"    # I
    .param p2, "param"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "error code is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterfaceListener:Lorg/webrtc/alirtcInterface/AliSophonEngine;

    invoke-interface {v0, p1, p2}, Lorg/webrtc/alirtcInterface/AliSophonEngine;->onError(ILjava/lang/String;)V

    .line 189
    return-void
.end method

.method public OnEventNotifyJNI(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "result"    # I
    .param p3, "callID"    # Ljava/lang/String;
    .param p4, "param"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, " OnEventNotify:event="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    packed-switch p1, :pswitch_data_0

    .line 181
    :pswitch_0
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "wrong event id::event="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_0
    return-void

    .line 154
    :pswitch_1
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterfaceListener:Lorg/webrtc/alirtcInterface/AliSophonEngine;

    invoke-interface {v0, p2}, Lorg/webrtc/alirtcInterface/AliSophonEngine;->onGslbResult(I)V

    goto :goto_0

    .line 157
    :pswitch_2
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterfaceListener:Lorg/webrtc/alirtcInterface/AliSophonEngine;

    invoke-interface {v0, p2}, Lorg/webrtc/alirtcInterface/AliSophonEngine;->onJoinChannelResult(I)V

    goto :goto_0

    .line 160
    :pswitch_3
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterfaceListener:Lorg/webrtc/alirtcInterface/AliSophonEngine;

    invoke-interface {v0, p2}, Lorg/webrtc/alirtcInterface/AliSophonEngine;->onLeaveChannelResult(I)V

    goto :goto_0

    .line 163
    :pswitch_4
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterfaceListener:Lorg/webrtc/alirtcInterface/AliSophonEngine;

    invoke-interface {v0, p2, p3}, Lorg/webrtc/alirtcInterface/AliSophonEngine;->onPublishResult(ILjava/lang/String;)V

    goto :goto_0

    .line 166
    :pswitch_5
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterfaceListener:Lorg/webrtc/alirtcInterface/AliSophonEngine;

    invoke-interface {v0, p2, p3}, Lorg/webrtc/alirtcInterface/AliSophonEngine;->onUnpublishResult(ILjava/lang/String;)V

    goto :goto_0

    .line 169
    :pswitch_6
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterfaceListener:Lorg/webrtc/alirtcInterface/AliSophonEngine;

    invoke-interface {v0, p2, p3}, Lorg/webrtc/alirtcInterface/AliSophonEngine;->onSubscribeResult(ILjava/lang/String;)V

    goto :goto_0

    .line 172
    :pswitch_7
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterfaceListener:Lorg/webrtc/alirtcInterface/AliSophonEngine;

    invoke-interface {v0, p2, p3}, Lorg/webrtc/alirtcInterface/AliSophonEngine;->onUnsubscribeResult(ILjava/lang/String;)V

    goto :goto_0

    .line 175
    :pswitch_8
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterfaceListener:Lorg/webrtc/alirtcInterface/AliSophonEngine;

    invoke-interface {v0, p2, p3}, Lorg/webrtc/alirtcInterface/AliSophonEngine;->onRepublishResult(ILjava/lang/String;)V

    goto :goto_0

    .line 178
    :pswitch_9
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterfaceListener:Lorg/webrtc/alirtcInterface/AliSophonEngine;

    invoke-interface {v0, p2, p3}, Lorg/webrtc/alirtcInterface/AliSophonEngine;->onResubscribeResult(ILjava/lang/String;)V

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public OnFetchPerformanceInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterfaceListener:Lorg/webrtc/alirtcInterface/AliSophonEngine;

    invoke-interface {v0}, Lorg/webrtc/alirtcInterface/AliSophonEngine;->onFetchPerformanceInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OnFirstFrameReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "stream_label"    # Ljava/lang/String;
    .param p3, "track_label"    # Ljava/lang/String;
    .param p4, "time_cost_ms"    # I

    .prologue
    .line 280
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterfaceListener:Lorg/webrtc/alirtcInterface/AliSophonEngine;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/webrtc/alirtcInterface/AliSophonEngine;->onFirstFrameReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 281
    return-void
.end method

.method public OnLogMessageJNI(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 236
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterfaceListener:Lorg/webrtc/alirtcInterface/AliSophonEngine;

    invoke-interface {v0, p1}, Lorg/webrtc/alirtcInterface/AliSophonEngine;->onLogMessage(Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public OnMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tid"    # Ljava/lang/String;
    .param p2, "content_type"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 250
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterfaceListener:Lorg/webrtc/alirtcInterface/AliSophonEngine;

    invoke-interface {v0, p1, p2, p3}, Lorg/webrtc/alirtcInterface/AliSophonEngine;->onMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public OnParticipantJoinNotifyJNI([Lorg/webrtc/alirtcInterface/AliParticipantInfo;I)V
    .locals 2
    .param p1, "participant_list"    # [Lorg/webrtc/alirtcInterface/AliParticipantInfo;
    .param p2, "join_count"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, " OnParticipantJoinNotifyJNI "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterfaceListener:Lorg/webrtc/alirtcInterface/AliSophonEngine;

    invoke-interface {v0, p1, p2}, Lorg/webrtc/alirtcInterface/AliSophonEngine;->onParticipantJoinNotify([Lorg/webrtc/alirtcInterface/AliParticipantInfo;I)V

    .line 199
    return-void
.end method

.method public OnParticipantLeaveNotifyJNI([Lorg/webrtc/alirtcInterface/AliParticipantInfo;I)V
    .locals 2
    .param p1, "participant_list"    # [Lorg/webrtc/alirtcInterface/AliParticipantInfo;
    .param p2, "leave_count"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, " OnParticipantLeaveNotifyJNI "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterfaceListener:Lorg/webrtc/alirtcInterface/AliSophonEngine;

    invoke-interface {v0, p1, p2}, Lorg/webrtc/alirtcInterface/AliSophonEngine;->onParticipantLeaveNotify([Lorg/webrtc/alirtcInterface/AliParticipantInfo;I)V

    .line 204
    return-void
.end method

.method public OnParticipantSubscribeNotifyJNI([Lorg/webrtc/alirtcInterface/AliSubscriberInfo;I)V
    .locals 2
    .param p1, "subcribeinfo_list"    # [Lorg/webrtc/alirtcInterface/AliSubscriberInfo;
    .param p2, "publisher_count"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, " OnParticipantSubscribeNotifyJNI "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterfaceListener:Lorg/webrtc/alirtcInterface/AliSophonEngine;

    invoke-interface {v0, p1, p2}, Lorg/webrtc/alirtcInterface/AliSophonEngine;->onParticipantSubscribeNotify([Lorg/webrtc/alirtcInterface/AliSubscriberInfo;I)V

    .line 229
    return-void
.end method

.method public OnParticipantUnsubscribeNotifyJNI([Lorg/webrtc/alirtcInterface/AliParticipantInfo;I)V
    .locals 1
    .param p1, "participant_list"    # [Lorg/webrtc/alirtcInterface/AliParticipantInfo;
    .param p2, "unsub_count"    # I

    .prologue
    .line 232
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterfaceListener:Lorg/webrtc/alirtcInterface/AliSophonEngine;

    invoke-interface {v0, p1, p2}, Lorg/webrtc/alirtcInterface/AliSophonEngine;->onParticipantUnsubscribeNotify([Lorg/webrtc/alirtcInterface/AliParticipantInfo;I)V

    .line 233
    return-void
.end method

.method public OnPublishInfoNotifyJNI([Lorg/webrtc/alirtcInterface/PublisherInfo;I)V
    .locals 2
    .param p1, "publisher_list"    # [Lorg/webrtc/alirtcInterface/PublisherInfo;
    .param p2, "publisher_count"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, " OnPublishInfoNotifyJNI "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterfaceListener:Lorg/webrtc/alirtcInterface/AliSophonEngine;

    invoke-interface {v0, p1, p2}, Lorg/webrtc/alirtcInterface/AliSophonEngine;->onParticipantPublishNotify([Lorg/webrtc/alirtcInterface/PublisherInfo;I)V

    .line 209
    return-void
.end method

.method public OnResubscribeResult2(ILjava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)V
    .locals 2
    .param p1, "result"    # I
    .param p2, "callID"    # Ljava/lang/String;
    .param p3, "reqConfig"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;
    .param p4, "curConfig"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, " onResubscribeResult2 result is"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterfaceListener:Lorg/webrtc/alirtcInterface/AliSophonEngine;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/webrtc/alirtcInterface/AliSophonEngine;->onResubscribeResult2(ILjava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)V

    .line 219
    return-void
.end method

.method public OnSubscribeResult2(ILjava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)V
    .locals 2
    .param p1, "result"    # I
    .param p2, "callID"    # Ljava/lang/String;
    .param p3, "reqConfig"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;
    .param p4, "curConfig"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, " onSubscribeResult2 result is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterfaceListener:Lorg/webrtc/alirtcInterface/AliSophonEngine;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/webrtc/alirtcInterface/AliSophonEngine;->onSubscribeResult2(ILjava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)V

    .line 214
    return-void
.end method

.method public OnTexturePostCreate(Ljava/lang/String;J)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "context"    # J

    .prologue
    .line 308
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternTexturePostObserverMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternTexturePostObserverMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliTextureObserver;

    invoke-interface {v0, p1, p2, p3}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliTextureObserver;->onTextureCreate(Ljava/lang/String;J)V

    .line 311
    :cond_0
    return-void
.end method

.method public OnTexturePostData(Ljava/lang/String;IIIIIJ)I
    .locals 11
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "textureId"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "stride"    # I
    .param p6, "rotate"    # I
    .param p7, "extraData"    # J

    .prologue
    .line 340
    iget-object v2, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternTexturePostObserverMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 341
    iget-object v2, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternTexturePostObserverMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliTextureObserver;

    .local v1, "observer":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliTextureObserver;
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    .line 342
    invoke-interface/range {v1 .. v9}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliTextureObserver;->onTexture(Ljava/lang/String;IIIIIJ)I

    move-result v0

    .line 345
    .end local v1    # "observer":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliTextureObserver;
    :goto_0
    return v0

    :cond_0
    move v0, p2

    goto :goto_0
.end method

.method public OnTexturePostDestroy(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 322
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternTexturePostObserverMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternTexturePostObserverMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliTextureObserver;

    .line 324
    .local v0, "observer":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliTextureObserver;
    invoke-interface {v0, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliTextureObserver;->onTextureDestroy(Ljava/lang/String;)V

    .line 326
    .end local v0    # "observer":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliTextureObserver;
    :cond_0
    return-void
.end method

.method public OnTexturePreCreate(Ljava/lang/String;J)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "context"    # J

    .prologue
    .line 301
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternTexturePreObserverMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternTexturePreObserverMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliTextureObserver;

    invoke-interface {v0, p1, p2, p3}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliTextureObserver;->onTextureCreate(Ljava/lang/String;J)V

    .line 304
    :cond_0
    return-void
.end method

.method public OnTexturePreData(Ljava/lang/String;IIIIIJ)I
    .locals 11
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "textureId"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "stride"    # I
    .param p6, "rotate"    # I
    .param p7, "extraData"    # J

    .prologue
    .line 330
    iget-object v2, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternTexturePreObserverMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 331
    iget-object v2, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternTexturePreObserverMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliTextureObserver;

    .local v1, "observer":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliTextureObserver;
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    .line 332
    invoke-interface/range {v1 .. v9}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliTextureObserver;->onTexture(Ljava/lang/String;IIIIIJ)I

    move-result v0

    .line 335
    .end local v1    # "observer":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliTextureObserver;
    :goto_0
    return v0

    :cond_0
    move v0, p2

    goto :goto_0
.end method

.method public OnTexturePreDestroy(Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 315
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternTexturePreObserverMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternTexturePreObserverMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliTextureObserver;

    invoke-interface {v0, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliTextureObserver;->onTextureDestroy(Ljava/lang/String;)V

    .line 318
    :cond_0
    return-void
.end method

.method public OnUnpublishInfoNotifyJNI([Lorg/webrtc/alirtcInterface/AliUnPublisherInfo;I)V
    .locals 2
    .param p1, "unpublisher_list"    # [Lorg/webrtc/alirtcInterface/AliUnPublisherInfo;
    .param p2, "publisher_count"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, " OnUnpublishInfoNotifyJNI "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterfaceListener:Lorg/webrtc/alirtcInterface/AliSophonEngine;

    invoke-interface {v0, p1, p2}, Lorg/webrtc/alirtcInterface/AliSophonEngine;->onParticipantUnpublishNotify([Lorg/webrtc/alirtcInterface/AliUnPublisherInfo;I)V

    .line 224
    return-void
.end method

.method public OnUplinkChannelMessage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # I
    .param p2, "content_type"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 260
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterfaceListener:Lorg/webrtc/alirtcInterface/AliSophonEngine;

    invoke-interface {v0, p1, p2, p3}, Lorg/webrtc/alirtcInterface/AliSophonEngine;->onUplinkChannelMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public OnVideoCaptureData(Ljava/lang/String;JJJIIIIIII)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "yPtr"    # J
    .param p4, "uPtr"    # J
    .param p6, "vPtr"    # J
    .param p8, "format"    # I
    .param p9, "width"    # I
    .param p10, "height"    # I
    .param p11, "ystride"    # I
    .param p12, "ustride"    # I
    .param p13, "vstride"    # I
    .param p14, "rotate"    # I

    .prologue
    .line 297
    return-void
.end method

.method public OnVideoRenderData(Ljava/lang/String;JIIII)V
    .locals 10
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "dataPtr"    # J
    .param p4, "format"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "stride"    # I

    .prologue
    .line 350
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternRenderDataObserverMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 351
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternRenderDataObserverMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRenderDataObserver;

    .line 352
    .local v0, "observer":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRenderDataObserver;
    const-wide/16 v8, 0x0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-interface/range {v0 .. v9}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRenderDataObserver;->onRenderData(Ljava/lang/String;JIIIIJ)V

    .line 357
    .end local v0    # "observer":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRenderDataObserver;
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternRenderDataObserverMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 354
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternRenderDataObserverMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRenderDataObserver;

    .line 355
    .restart local v0    # "observer":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRenderDataObserver;
    const-wide/16 v8, 0x0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-interface/range {v0 .. v9}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRenderDataObserver;->onRenderData(Ljava/lang/String;JIIIIJ)V

    goto :goto_0
.end method

.method public OnWarning(ILjava/lang/String;)V
    .locals 2
    .param p1, "warning"    # I
    .param p2, "param"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "warning code is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterfaceListener:Lorg/webrtc/alirtcInterface/AliSophonEngine;

    invoke-interface {v0, p1, p2}, Lorg/webrtc/alirtcInterface/AliSophonEngine;->onWarning(ILjava/lang/String;)V

    .line 194
    return-void
.end method

.method public OnWindowRenderReady(Ljava/lang/String;I)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "video_type"    # I

    .prologue
    .line 276
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterfaceListener:Lorg/webrtc/alirtcInterface/AliSophonEngine;

    invoke-interface {v0, p1, p2}, Lorg/webrtc/alirtcInterface/AliSophonEngine;->onWindowRenderReady(Ljava/lang/String;I)V

    .line 277
    return-void
.end method

.method public OpenCamera(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCameraConfig;)V
    .locals 2
    .param p1, "aliCameraConfig"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCameraConfig;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 533
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeOpenCamera(JLorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCameraConfig;)I

    .line 534
    return-void
.end method

.method public PauseRender()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 630
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativePauseRender(J)I

    .line 631
    return-void
.end method

.method public Publish(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;)V
    .locals 2
    .param p1, "publish_config"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 428
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativePublish(JLorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;)V

    .line 429
    return-void
.end method

.method public RegisterAudioObserver(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioType;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioObserver;)V
    .locals 2
    .param p1, "type"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioType;
    .param p2, "observer"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioObserver;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 680
    if-nez p2, :cond_1

    sget-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioType;->PUB_OBSERVER:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioType;

    invoke-virtual {p1, v0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeUnRegisterAudioCaptureCallback(J)V

    .line 689
    :cond_0
    :goto_0
    iput-object p2, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternAudioObserver:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioObserver;

    .line 690
    return-void

    .line 682
    :cond_1
    sget-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioType;->PUB_OBSERVER:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioType;

    invoke-virtual {p1, v0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 683
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeRegisterAudioCaptureCallback(J)V

    goto :goto_0

    .line 684
    :cond_2
    if-nez p2, :cond_3

    sget-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioType;->SUB_OBSERVER:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioType;

    invoke-virtual {p1, v0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 685
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeUnRegisterAudioRenderCallback(J)V

    goto :goto_0

    .line 686
    :cond_3
    sget-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioType;->SUB_OBSERVER:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioType;

    invoke-virtual {p1, v0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeRegisterAudioRenderCallback(J)V

    goto :goto_0
.end method

.method public RegisterRGBAObserver(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRenderDataObserver;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "observer"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRenderDataObserver;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 750
    if-nez p2, :cond_0

    .line 751
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternRenderDataObserverMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeUnRegisterRGBACallback(JLjava/lang/String;)V

    .line 757
    :goto_0
    return-void

    .line 754
    :cond_0
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternRenderDataObserverMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeRegisterRGBACallback(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public RegisterTexturePostObserver(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliTextureObserver;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "observer"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliTextureObserver;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 734
    if-nez p2, :cond_0

    .line 735
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternTexturePostObserverMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeUnRegisterTexturePostCallback(JLjava/lang/String;)V

    .line 741
    :goto_0
    return-void

    .line 738
    :cond_0
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternTexturePostObserverMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeRegisterTexturePostCallback(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public RegisterTexturePreObserver(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliTextureObserver;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "observer"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliTextureObserver;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 719
    if-nez p2, :cond_0

    .line 720
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternTexturePreObserverMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeUnRegisterTexturePreCallback(JLjava/lang/String;)V

    .line 726
    :goto_0
    return-void

    .line 723
    :cond_0
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternTexturePreObserverMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeRegisterTexturePreCallback(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public RegisterYUVObserver(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliVideoObserver;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "observer"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliVideoObserver;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 703
    if-nez p2, :cond_0

    .line 704
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternVideoObserver:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeUnRegisterYUVCallback(JLjava/lang/String;)V

    .line 710
    :goto_0
    return-void

    .line 707
    :cond_0
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternVideoObserver:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeRegisterYUVCallback(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public RemoveLocalDisplayWindow(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;)V
    .locals 2
    .param p1, "aliRTCSdk_videSource_type"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 502
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeLocalDisplayWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeRemoveLocalDisplayWindow(JLorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;)V

    .line 504
    return-void
.end method

.method public RemoveRemoteDisplayWindow(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;)V
    .locals 3
    .param p1, "call_id"    # Ljava/lang/String;
    .param p2, "type"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 479
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "removeRemoteDisplayWindow:callId"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeRemoveRemoteDisplayWindow(JLjava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;)V

    .line 481
    return-void
.end method

.method public Republish(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;)V
    .locals 2
    .param p1, "publish_config"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 433
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeRepublish(JLorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;)V

    .line 434
    return-void
.end method

.method public RespondMessageNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "tid"    # Ljava/lang/String;
    .param p2, "content_type"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 670
    iget-wide v2, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeRespondMessageNotification(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public Resubscribe(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)V
    .locals 2
    .param p1, "call_id"    # Ljava/lang/String;
    .param p2, "subscribe_config"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 449
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeResubscribe(JLjava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)V

    .line 450
    return-void
.end method

.method public ResumeRender()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 635
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeResumeRender(J)I

    .line 636
    return-void
.end method

.method public SetCameraZoom(F)I
    .locals 4
    .param p1, "zoom"    # F

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 567
    iget-wide v2, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v2, v3, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeSetCameraZoom(JF)I

    move-result v0

    .line 569
    .local v0, "ret":I
    return v0
.end method

.method public SetCaptureDeviceByName(Ljava/lang/String;)I
    .locals 2
    .param p1, "deviceName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 665
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeSetCaptureDeviceByName(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public SetFlash(Z)I
    .locals 4
    .param p1, "flash"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 556
    iget-wide v2, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v2, v3, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeSetFlash(JZ)I

    move-result v0

    .line 558
    .local v0, "ret":I
    return v0
.end method

.method public SetUploadAppID(Ljava/lang/String;)V
    .locals 2
    .param p1, "appID"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 614
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeSetUploadAppID(JLjava/lang/String;)V

    .line 615
    return-void
.end method

.method public SetUploadSessionID(Ljava/lang/String;)V
    .locals 2
    .param p1, "sessionID"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 620
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeSetUploadSessionID(JLjava/lang/String;)V

    .line 621
    return-void
.end method

.method public Subscribe(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)V
    .locals 2
    .param p1, "call_id"    # Ljava/lang/String;
    .param p2, "subscribe_config"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 443
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeSubscribe(JLjava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)V

    .line 445
    return-void
.end method

.method public SwitchCramer()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 546
    iget-wide v2, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v2, v3}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeSwitchCamera(J)I

    move-result v0

    .line 548
    .local v0, "ret":I
    return v0
.end method

.method public UnRegisterAudioObserver(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioType;)V
    .locals 2
    .param p1, "type"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioType;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 694
    sget-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioType;->PUB_OBSERVER:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioType;

    invoke-virtual {p1, v0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 695
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeUnRegisterAudioCaptureCallback(J)V

    .line 699
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternAudioObserver:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioObserver;

    .line 700
    return-void

    .line 696
    :cond_1
    sget-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioType;->SUB_OBSERVER:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioType;

    invoke-virtual {p1, v0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeUnRegisterAudioRenderCallback(J)V

    goto :goto_0
.end method

.method public UnRegisterRGBAObserver(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 760
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternRenderDataObserverMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeUnRegisterRGBACallback(JLjava/lang/String;)V

    .line 762
    return-void
.end method

.method public UnRegisterTexturePostObserver(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 745
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternTexturePostObserverMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeUnRegisterTexturePostCallback(JLjava/lang/String;)V

    .line 747
    return-void
.end method

.method public UnRegisterTexturePreObserver(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 729
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternTexturePreObserverMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeUnRegisterTexturePreCallback(JLjava/lang/String;)V

    .line 731
    return-void
.end method

.method public UnRegisterYUVObserver(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 714
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->mExternVideoObserver:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeUnRegisterYUVCallback(JLjava/lang/String;)V

    .line 716
    return-void
.end method

.method public Unpublish()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 438
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeUnpublish(J)V

    .line 439
    return-void
.end method

.method public Unsubscribe(Ljava/lang/String;)V
    .locals 2
    .param p1, "call_id"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 454
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeUnsubscribe(JLjava/lang/String;)V

    .line 455
    return-void
.end method

.method public UpdateDisplayWindow(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;)V
    .locals 3
    .param p1, "config"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 508
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateDisplayWindow\nSurface"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->display_view:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeUpdateDisplayWindow(JLorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;)V

    .line 511
    return-void
.end method

.method public UplinkChannelMessage(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "content_type"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 675
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeUplinkChannelMessage(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public enableBackgroundAudioRecording(Z)V
    .locals 2
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 765
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeEnableBackgroundAudioRecording(JZ)V

    .line 766
    return-void
.end method

.method public isEnableBackgroundAudioRecording()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 769
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->m_nRtcInterface:J

    invoke-virtual {p0, v0, v1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->nativeIsBackgroundAudioRecording(J)Z

    move-result v0

    return v0
.end method

.method public native nativeAddLocalDisplayWindow(JLorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;)V
.end method

.method public native nativeAddRemoteDisplayWindow(JLjava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;)V
.end method

.method public native nativeChangeLogLevel(JLorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSDKLogLevel;)V
.end method

.method public native nativeCloseCamera(J)I
.end method

.method public native nativeCreate(Ljava/lang/String;Lorg/webrtc/alirtcInterface/AliSophonEngine;)J
.end method

.method public native nativeDestroy(J)V
.end method

.method public native nativeEnableBackgroundAudioRecording(JZ)V
.end method

.method public native nativeEnableLocalAudio(JZ)V
.end method

.method public native nativeEnableLocalVideo(JLorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Z)V
.end method

.method public native nativeEnableRemoteAudio(JLjava/lang/String;Z)V
.end method

.method public native nativeEnableRemoteVideo(JLjava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Z)V
.end method

.method public native nativeEnableUpload(JZ)V
.end method

.method public native nativeEnumerateAllCaptureDevices(J)[Ljava/lang/String;
.end method

.method public native nativeGetCaptureType(J)I
.end method

.method public native nativeGetLogLevel(J)I
.end method

.method public native nativeGetSDKVersion(J)Ljava/lang/String;
.end method

.method public native nativeGetTransportStatus(JLjava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;)I
.end method

.method public native nativeGslb(JLorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AuthInfo;)I
.end method

.method public native nativeIsBackgroundAudioRecording(J)Z
.end method

.method public native nativeJoinChannel(JLorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AuthInfo;Ljava/lang/String;)I
.end method

.method public native nativeJoinRoom(JLjava/lang/String;)I
.end method

.method public native nativeLeaveChannel(JJ)I
.end method

.method public native nativeLeaveRoom(J)I
.end method

.method public native nativeLog(JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
.end method

.method public native nativeLogDestroy(J)V
.end method

.method public native nativeOpenCamera(JLorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCameraConfig;)I
.end method

.method public native nativePauseRender(J)I
.end method

.method public native nativePublish(JLorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;)V
.end method

.method public native nativeRegisterAudioCaptureCallback(J)V
.end method

.method public native nativeRegisterAudioRenderCallback(J)V
.end method

.method public native nativeRegisterRGBACallback(JLjava/lang/String;)V
.end method

.method public native nativeRegisterTexturePostCallback(JLjava/lang/String;)V
.end method

.method public native nativeRegisterTexturePreCallback(JLjava/lang/String;)V
.end method

.method public native nativeRegisterYUVCallback(JLjava/lang/String;)V
.end method

.method public native nativeRemoveLocalDisplayWindow(JLorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;)V
.end method

.method public native nativeRemoveRemoteDisplayWindow(JLjava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;)V
.end method

.method public native nativeRepublish(JLorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;)V
.end method

.method public native nativeRespondMessageNotification(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native nativeResubscribe(JLjava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)V
.end method

.method public native nativeResumeRender(J)I
.end method

.method public native nativeSetCameraZoom(JF)I
.end method

.method public native nativeSetCaptureDeviceByName(JLjava/lang/String;)I
.end method

.method public native nativeSetFlash(JZ)I
.end method

.method public native nativeSetUploadAppID(JLjava/lang/String;)V
.end method

.method public native nativeSetUploadSessionID(JLjava/lang/String;)V
.end method

.method public native nativeSubscribe(JLjava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)V
.end method

.method public native nativeSwitchCamera(J)I
.end method

.method public native nativeUnRegisterAudioCaptureCallback(J)V
.end method

.method public native nativeUnRegisterAudioRenderCallback(J)V
.end method

.method public native nativeUnRegisterRGBACallback(JLjava/lang/String;)V
.end method

.method public native nativeUnRegisterTexturePostCallback(JLjava/lang/String;)V
.end method

.method public native nativeUnRegisterTexturePreCallback(JLjava/lang/String;)V
.end method

.method public native nativeUnRegisterYUVCallback(JLjava/lang/String;)V
.end method

.method public native nativeUnpublish(J)V
.end method

.method public native nativeUnsubscribe(JLjava/lang/String;)V
.end method

.method public native nativeUpdateDisplayWindow(JLorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;)V
.end method

.method public native nativeUplinkChannelMessage(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method public setCollectStatusListener(Lorg/webrtc/alirtcInterface/CollectStatusListener;)V
    .locals 0
    .param p1, "collectStatusListener"    # Lorg/webrtc/alirtcInterface/CollectStatusListener;

    .prologue
    .line 145
    iput-object p1, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;->collectStatusListener:Lorg/webrtc/alirtcInterface/CollectStatusListener;

    .line 146
    return-void
.end method
