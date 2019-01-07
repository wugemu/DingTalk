.class public Lcom/alivc/live/conf/AlivcVideoConfImpl;
.super Lcom/alivc/live/conf/AlivcVideoConf;
.source "AlivcVideoConfImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;,
        Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;
    }
.end annotation


# static fields
.field private static final SAAS_VERSION:Ljava/lang/String; = "0.7.0.071301"

.field private static final TAG:Ljava/lang/String; = "SaaS"


# instance fields
.field private cacheList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList;",
            ">;"
        }
    .end annotation
.end field

.field private isCameraOpen:Z

.field private isFlashOn:Z

.field private isMicOpen:Z

.field private isPublishSuccess:Z

.field private mAudioOutPutMode:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;

.field private mCallbackListener:Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

.field private mConfUserInfo:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

.field private mContext:Landroid/content/Context;

.field private mErrorListener:Lcom/alivc/live/conf/AlivcVideoConfListener;

.field private mNetworkListener:Lcom/alivc/live/conf/AlivcVideoConfNetworkListener;

.field private mNotifyListener:Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;

.field private mPublishView:Lorg/webrtc/sdk/SophonSurfaceView;

.field private mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

.field mSophonEventListener:Lorg/webrtc/alirtcInterface/SophonEventListener;

.field private mStatusListener:Lcom/alivc/live/conf/AlivcVideoConfCollectStatusListener;

.field private mSubscribeViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private publishInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/webrtc/alirtcInterface/PublisherInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    const-string/jumbo v0, "alivc_framework"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 134
    const-string/jumbo v0, "wukong_ua"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Lcom/alivc/live/conf/AlivcVideoConf;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSubscribeViews:Ljava/util/Map;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->publishInfos:Ljava/util/HashMap;

    .line 123
    iput-boolean v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->isFlashOn:Z

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->isMicOpen:Z

    .line 125
    iput-boolean v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->isCameraOpen:Z

    .line 126
    iput-boolean v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->isPublishSuccess:Z

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->cacheList:Ljava/util/Map;

    .line 965
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;

    invoke-direct {v0, p0}, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;-><init>(Lcom/alivc/live/conf/AlivcVideoConfImpl;)V

    iput-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEventListener:Lorg/webrtc/alirtcInterface/SophonEventListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alivc/live/conf/AlivcVideoConfImpl;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->cacheList:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/alivc/live/conf/AlivcVideoConfImpl;Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/alivc/live/conf/AlivcVideoConfImpl;
    .param p1, "x1"    # Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->addSubscribe(Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/alivc/live/conf/AlivcVideoConfImpl;Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alivc/live/conf/AlivcVideoConfImpl;
    .param p1, "x1"    # Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->checkVideoTracks(Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/alivc/live/conf/AlivcVideoConfImpl;Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V
    .locals 0
    .param p0, "x0"    # Lcom/alivc/live/conf/AlivcVideoConfImpl;
    .param p1, "x1"    # Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;
    .param p2, "x2"    # Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->addRemoteDisplayWindow(Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/alivc/live/conf/AlivcVideoConfImpl;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;
    .locals 1
    .param p0, "x0"    # Lcom/alivc/live/conf/AlivcVideoConfImpl;
    .param p1, "x1"    # Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->converVideoType(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/alivc/live/conf/AlivcVideoConfImpl;Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/alivc/live/conf/AlivcVideoConfImpl;
    .param p1, "x1"    # Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->removeSubscribe(Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alivc/live/conf/AlivcVideoConfImpl;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->publishInfos:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;
    .locals 1
    .param p0, "x0"    # Lcom/alivc/live/conf/AlivcVideoConfImpl;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mNotifyListener:Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfUserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/alivc/live/conf/AlivcVideoConfImpl;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mConfUserInfo:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfNetworkListener;
    .locals 1
    .param p0, "x0"    # Lcom/alivc/live/conf/AlivcVideoConfImpl;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mNetworkListener:Lcom/alivc/live/conf/AlivcVideoConfNetworkListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCollectStatusListener;
    .locals 1
    .param p0, "x0"    # Lcom/alivc/live/conf/AlivcVideoConfImpl;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mStatusListener:Lcom/alivc/live/conf/AlivcVideoConfCollectStatusListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfListener;
    .locals 1
    .param p0, "x0"    # Lcom/alivc/live/conf/AlivcVideoConfImpl;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mErrorListener:Lcom/alivc/live/conf/AlivcVideoConfListener;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/alivc/live/conf/AlivcVideoConfImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alivc/live/conf/AlivcVideoConfImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->isMicOpen:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alivc/live/conf/AlivcVideoConfImpl;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->getOsInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alivc/live/conf/AlivcVideoConfImpl;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lorg/webrtc/alirtcInterface/SophonEngine;
    .locals 1
    .param p0, "x0"    # Lcom/alivc/live/conf/AlivcVideoConfImpl;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;
    .locals 1
    .param p0, "x0"    # Lcom/alivc/live/conf/AlivcVideoConfImpl;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mCallbackListener:Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    return-object v0
.end method

.method static synthetic access$502(Lcom/alivc/live/conf/AlivcVideoConfImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alivc/live/conf/AlivcVideoConfImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->isPublishSuccess:Z

    return p1
.end method

.method static synthetic access$602(Lcom/alivc/live/conf/AlivcVideoConfImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alivc/live/conf/AlivcVideoConfImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->isCameraOpen:Z

    return p1
.end method

.method static synthetic access$700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alivc/live/conf/AlivcVideoConfImpl;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSubscribeViews:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/alivc/live/conf/AlivcVideoConfImpl;Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V
    .locals 0
    .param p0, "x0"    # Lcom/alivc/live/conf/AlivcVideoConfImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->removeRemoteDisplayWindow(Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V

    return-void
.end method

.method static synthetic access$900(Lcom/alivc/live/conf/AlivcVideoConfImpl;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alivc/live/conf/AlivcVideoConfImpl;
    .param p1, "x1"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->getSubscribeConfigString(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addRemoteDisplayWindow(Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V
    .locals 6
    .param p1, "info"    # Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;
    .param p2, "type"    # Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 945
    new-instance v0, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;

    invoke-direct {v0}, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;-><init>()V

    .line 946
    .local v0, "aliRendererConfig":Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;
    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getSubscribeConfig()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;

    invoke-virtual {v3}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;->getSophonSurfaceView()Lorg/webrtc/sdk/SophonSurfaceView;

    move-result-object v2

    .line 947
    .local v2, "surfaceView":Lorg/webrtc/sdk/SophonSurfaceView;
    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getSubscribeConfig()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;

    invoke-virtual {v3}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;->getRenderMode()Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;

    move-result-object v1

    .line 948
    .local v1, "renderMode":Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;
    if-eqz v2, :cond_0

    .line 949
    iput-object v2, v0, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->displayView:Landroid/view/SurfaceView;

    .line 950
    invoke-virtual {v2}, Lorg/webrtc/sdk/SophonSurfaceView;->getWidth()I

    move-result v3

    iput v3, v0, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->width:I

    .line 951
    invoke-virtual {v2}, Lorg/webrtc/sdk/SophonSurfaceView;->getHeight()I

    move-result v3

    iput v3, v0, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->height:I

    .line 952
    invoke-virtual {v1}, Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;->ordinal()I

    move-result v3

    iput v3, v0, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->displayMode:I

    .line 953
    iget-object v3, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    if-eqz v3, :cond_0

    .line 954
    iget-object v3, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->converVideoType(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lorg/webrtc/alirtcInterface/SophonEngine;->addRemoteDisplayWindow(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;)V

    .line 957
    :cond_0
    return-void
.end method

.method private addSubscribe(Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;)V
    .locals 5
    .param p1, "subscribeInfo"    # Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1776
    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSubscribeViews:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;

    .line 1777
    .local v0, "info":Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;
    const-string/jumbo v1, "SaaS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "addSubscribe callId is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1778
    if-nez v0, :cond_0

    .line 1779
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->setSrcVideoType(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V

    .line 1780
    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSubscribeViews:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1784
    :goto_0
    return-void

    .line 1782
    :cond_0
    invoke-virtual {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getSubscribeConfig()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getVideoType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getSubscribeConfig()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getVideoType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private checkStreamType(Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)Z
    .locals 9
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1717
    const/4 v2, 0x1

    .line 1718
    .local v2, "result":Z
    iget-object v6, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSubscribeViews:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;

    .line 1720
    .local v4, "subscribeInfo":Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;
    if-eqz v4, :cond_1

    .line 1721
    invoke-virtual {v4}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getSubscribeConfig()Ljava/util/Map;

    move-result-object v3

    .line 1722
    .local v3, "subscribeConfig":Ljava/util/Map;, "Ljava/util/Map<Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1723
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    if-ne p2, v7, :cond_4

    .line 1724
    const/4 v2, 0x0

    .line 1741
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;>;"
    .end local v3    # "subscribeConfig":Ljava/util/Map;, "Ljava/util/Map<Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;>;"
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->publishInfos:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/webrtc/alirtcInterface/PublisherInfo;

    .line 1742
    .local v1, "publisherInfo":Lorg/webrtc/alirtcInterface/PublisherInfo;
    if-eqz v1, :cond_3

    sget-object v6, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeAudioOnly:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    if-eq p2, v6, :cond_3

    .line 1743
    invoke-virtual {v1}, Lorg/webrtc/alirtcInterface/PublisherInfo;->getVideo_track_labels()[Ljava/lang/String;

    move-result-object v5

    .line 1744
    .local v5, "videoTracks":[Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 1745
    invoke-virtual {p2}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->ordinal()I

    move-result v6

    aget-object v6, v5, v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, ""

    invoke-virtual {p2}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->ordinal()I

    move-result v7

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1746
    :cond_2
    const/4 v2, 0x0

    .line 1751
    .end local v5    # "videoTracks":[Ljava/lang/String;
    :cond_3
    return v2

    .line 1728
    .end local v1    # "publisherInfo":Lorg/webrtc/alirtcInterface/PublisherInfo;
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;>;"
    .restart local v3    # "subscribeConfig":Ljava/util/Map;, "Ljava/util/Map<Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;>;"
    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeSmall:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    if-eq v7, v8, :cond_5

    .line 1729
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeLarge:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    if-ne v7, v8, :cond_0

    .line 1730
    :cond_5
    sget-object v7, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeScreenShare:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    if-eq p2, v7, :cond_0

    sget-object v7, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeAudioOnly:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    if-eq p2, v7, :cond_0

    .line 1732
    invoke-virtual {v4}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getSrcVideoType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v7

    if-nez v7, :cond_0

    .line 1733
    const/4 v2, 0x0

    .line 1734
    goto :goto_0
.end method

.method private checkSubscribe(Ljava/lang/String;)Z
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1800
    const/4 v1, 0x0

    .line 1801
    .local v1, "result":Z
    iget-object v2, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->cacheList:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 1802
    .local v0, "infoList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1803
    const/4 v1, 0x1

    .line 1805
    :cond_0
    return v1
.end method

.method private checkVideoTracks(Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;)Z
    .locals 5
    .param p1, "subscribeInfo"    # Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1669
    if-eqz p1, :cond_1

    .line 1670
    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getSubscribeConfig()Ljava/util/Map;

    move-result-object v1

    .line 1671
    .local v1, "subscribeConfig":Ljava/util/Map;, "Ljava/util/Map<Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1672
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeAudioOnly:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    if-eq v3, v4, :cond_0

    .line 1673
    const/4 v2, 0x1

    .line 1678
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;>;"
    .end local v1    # "subscribeConfig":Ljava/util/Map;, "Ljava/util/Map<Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private converVideoType(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;
    .locals 3
    .param p1, "type"    # Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1649
    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfImpl$3;->$SwitchMap$com$alivc$live$conf$AlivcVideoConfConstants$AlivcVideoConfVideoStreamType:[I

    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1660
    sget-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;->AliRTCSDK_VideoSource_Type_CameraLarge:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;

    .line 1664
    .local v0, "videoType":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;
    :goto_0
    return-object v0

    .line 1651
    .end local v0    # "videoType":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;
    :pswitch_0
    sget-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;->AliRTCSDK_VideoSource_Type_CameraLarge:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;

    .line 1652
    .restart local v0    # "videoType":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;
    goto :goto_0

    .line 1654
    .end local v0    # "videoType":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;
    :pswitch_1
    sget-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;->AliRTCSDK_VideoSource_Type_CameraSmall:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;

    .line 1655
    .restart local v0    # "videoType":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;
    goto :goto_0

    .line 1657
    .end local v0    # "videoType":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;
    :pswitch_2
    sget-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;->AliRTCSDK_VideoSource_Type_ScreenShare:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;

    .line 1658
    .restart local v0    # "videoType":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;
    goto :goto_0

    .line 1649
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getConfig(Lcom/alivc/live/conf/AlivcPublishConfig;)Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;
    .locals 9
    .param p1, "publishConfig"    # Lcom/alivc/live/conf/AlivcPublishConfig;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1585
    new-instance v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;

    invoke-direct {v0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;-><init>()V

    .line 1586
    .local v0, "config":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;
    const/4 v5, 0x3

    new-array v4, v5, [Z

    .line 1587
    .local v4, "videoTracks":[Z
    aput-boolean v8, v4, v8

    .line 1588
    aput-boolean v8, v4, v7

    .line 1589
    const/4 v5, 0x2

    aput-boolean v8, v4, v5

    .line 1590
    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcPublishConfig;->isEnableDualVideoStream()Z

    move-result v1

    .line 1592
    .local v1, "enableDualVideoStream":Z
    sget-object v5, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;->AliRTCSDK_VideoSource_Type_MAX:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;

    invoke-virtual {v5}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;->getValue()I

    move-result v5

    new-array v3, v5, [I

    .line 1594
    .local v3, "videoTrackProfile":[I
    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcPublishConfig;->getMediaProfile()Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;

    move-result-object v2

    .line 1596
    .local v2, "mediaProfile":Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;
    sget-object v5, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;->Media_Profile_AudioOnly:Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;

    if-eq v2, v5, :cond_0

    .line 1597
    if-eqz v1, :cond_2

    .line 1598
    aput-boolean v7, v4, v8

    .line 1599
    aput-boolean v7, v4, v7

    .line 1603
    :goto_0
    iput-object v4, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;->video_tracks:[Z

    .line 1606
    :cond_0
    sget-object v5, Lcom/alivc/live/conf/AlivcVideoConfImpl$3;->$SwitchMap$com$alivc$live$conf$AlivcVideoConfConstants$PublishMediaProfile:[I

    invoke-virtual {v2}, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1643
    :cond_1
    :goto_1
    iput-object v3, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;->video_track_profile:[I

    .line 1644
    return-object v0

    .line 1601
    :cond_2
    aput-boolean v7, v4, v8

    goto :goto_0

    .line 1608
    :pswitch_0
    iput-boolean v7, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;->audio_track:Z

    .line 1609
    iput-object v4, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;->video_tracks:[Z

    goto :goto_1

    .line 1612
    :pswitch_1
    iput-boolean v7, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;->audio_track:Z

    .line 1613
    sget-object v5, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;->Media_Profile_180P_30:Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;

    invoke-virtual {v5}, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;->ordinal()I

    move-result v5

    aput v5, v3, v8

    .line 1614
    if-eqz v1, :cond_3

    .line 1615
    sget-object v5, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;->Media_Profile_180P_30:Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;

    invoke-virtual {v5}, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;->ordinal()I

    move-result v5

    aput v5, v3, v7

    .line 1617
    :cond_3
    iput-object v4, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;->video_tracks:[Z

    goto :goto_1

    .line 1620
    :pswitch_2
    iput-boolean v7, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;->audio_track:Z

    .line 1621
    sget-object v5, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;->Media_Profile_CIF_30:Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;

    invoke-virtual {v5}, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;->ordinal()I

    move-result v5

    aput v5, v3, v8

    .line 1622
    if-eqz v1, :cond_1

    .line 1623
    sget-object v5, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;->Media_Profile_CIF_30:Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;

    invoke-virtual {v5}, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;->ordinal()I

    move-result v5

    aput v5, v3, v7

    goto :goto_1

    .line 1627
    :pswitch_3
    iput-boolean v7, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;->audio_track:Z

    .line 1628
    sget-object v5, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;->Media_Profile_360P_30:Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;

    invoke-virtual {v5}, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;->ordinal()I

    move-result v5

    aput v5, v3, v8

    .line 1629
    if-eqz v1, :cond_1

    .line 1630
    sget-object v5, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;->Media_Profile_360P_30:Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;

    invoke-virtual {v5}, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;->ordinal()I

    move-result v5

    aput v5, v3, v7

    goto :goto_1

    .line 1634
    :pswitch_4
    iput-boolean v7, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;->audio_track:Z

    .line 1635
    sget-object v5, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;->Media_Profile_480P_30:Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;

    invoke-virtual {v5}, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;->ordinal()I

    move-result v5

    aput v5, v3, v8

    .line 1636
    if-eqz v1, :cond_1

    .line 1637
    sget-object v5, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;->Media_Profile_480P_30:Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;

    invoke-virtual {v5}, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;->ordinal()I

    move-result v5

    aput v5, v3, v7

    goto :goto_1

    .line 1606
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getOsInfo()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1755
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1757
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    sget-object v2, Lcom/alivc/live/conf/AlivcVideoConfConstants;->OS_NAME:Ljava/lang/String;

    sget-object v3, Lcom/alivc/live/conf/AlivcVideoConfConstants;->ANDROID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1758
    sget-object v2, Lcom/alivc/live/conf/AlivcVideoConfConstants;->OS_SDK:Ljava/lang/String;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1759
    sget-object v2, Lcom/alivc/live/conf/AlivcVideoConfConstants;->OS_VERSION:Ljava/lang/String;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1760
    sget-object v2, Lcom/alivc/live/conf/AlivcVideoConfConstants;->OS_CPUABI:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1761
    sget-object v2, Lcom/alivc/live/conf/AlivcVideoConfConstants;->DEVICENAME:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1762
    sget-object v2, Lcom/alivc/live/conf/AlivcVideoConfConstants;->BRAND:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1763
    sget-object v2, Lcom/alivc/live/conf/AlivcVideoConfConstants;->PLATFORM:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1764
    sget-object v2, Lcom/alivc/live/conf/AlivcVideoConfConstants;->ACCESS:Ljava/lang/String;

    iget-object v3, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/alivc/live/conf/AlivcUtil;->getNetWorkStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1765
    sget-object v2, Lcom/alivc/live/conf/AlivcVideoConfConstants;->CARRIER:Ljava/lang/String;

    iget-object v3, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/alivc/live/conf/AlivcUtil;->getOperators(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1766
    sget-object v2, Lcom/alivc/live/conf/AlivcVideoConfConstants;->CPU_TYPE:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1767
    sget-object v2, Lcom/alivc/live/conf/AlivcVideoConfConstants;->UDID:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1768
    sget-object v2, Lcom/alivc/live/conf/AlivcVideoConfConstants;->SCREEN_RESOLUTION:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/alivc/live/conf/AlivcUtil;->getWindowHeight(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/alivc/live/conf/AlivcUtil;->getWindowWidth(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1772
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1769
    :catch_0
    move-exception v0

    .line 1770
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getSubscribeConfigString(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)Ljava/lang/String;
    .locals 4
    .param p1, "aliSubscribeConfig"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1809
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1810
    .local v1, "stringBuffer":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_1

    .line 1811
    iget-object v2, p1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->stream_label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1812
    iget-object v2, p1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1813
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1814
    iget-object v2, p1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1813
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1817
    .end local v0    # "i":I
    :cond_0
    iget-object v2, p1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->audio_track_label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1819
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getTypeIndex(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)I
    .locals 7
    .param p1, "type"    # Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;
    .param p2, "subscribeConfig"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v1, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1682
    const/4 v0, -0x1

    .line 1683
    .local v0, "result":I
    if-eqz p2, :cond_3

    .line 1684
    sget-object v2, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeLarge:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    if-ne p1, v2, :cond_1

    .line 1685
    iget-object v2, p2, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    aget-object v2, v2, v5

    if-eqz v2, :cond_2

    const-string/jumbo v2, ""

    iget-object v3, p2, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1713
    :cond_0
    :goto_0
    return v1

    .line 1688
    :cond_1
    sget-object v2, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeSmall:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    if-ne p1, v2, :cond_2

    .line 1689
    iget-object v2, p2, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    aget-object v2, v2, v4

    if-eqz v2, :cond_2

    const-string/jumbo v2, ""

    iget-object v3, p2, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1693
    :cond_2
    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfImpl$3;->$SwitchMap$com$alivc$live$conf$AlivcVideoConfConstants$AlivcVideoConfVideoStreamType:[I

    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_3
    :goto_1
    move v1, v0

    .line 1713
    goto :goto_0

    .line 1695
    :pswitch_0
    iget-object v1, p2, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    aget-object v1, v1, v4

    if-eqz v1, :cond_4

    const-string/jumbo v1, ""

    iget-object v2, p2, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1696
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 1700
    :pswitch_1
    iget-object v1, p2, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    aget-object v1, v1, v5

    if-eqz v1, :cond_5

    const-string/jumbo v1, ""

    iget-object v2, p2, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1701
    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    .line 1705
    :pswitch_2
    iget-object v1, p2, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    aget-object v1, v1, v6

    if-eqz v1, :cond_6

    const-string/jumbo v1, ""

    iget-object v2, p2, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1706
    :cond_6
    const/4 v0, 0x2

    goto :goto_1

    .line 1693
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private removeLocalDisplayWindow()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 932
    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mPublishView:Lorg/webrtc/sdk/SophonSurfaceView;

    if-nez v1, :cond_1

    .line 942
    :cond_0
    :goto_0
    return-void

    .line 935
    :cond_1
    new-instance v0, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;

    invoke-direct {v0}, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;-><init>()V

    .line 936
    .local v0, "config":Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;
    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mPublishView:Lorg/webrtc/sdk/SophonSurfaceView;

    iput-object v1, v0, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->displayView:Landroid/view/SurfaceView;

    .line 937
    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mPublishView:Lorg/webrtc/sdk/SophonSurfaceView;

    invoke-virtual {v1}, Lorg/webrtc/sdk/SophonSurfaceView;->getWidth()I

    move-result v1

    iput v1, v0, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->width:I

    .line 938
    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mPublishView:Lorg/webrtc/sdk/SophonSurfaceView;

    invoke-virtual {v1}, Lorg/webrtc/sdk/SophonSurfaceView;->getHeight()I

    move-result v1

    iput v1, v0, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->height:I

    .line 939
    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    if-eqz v1, :cond_0

    .line 940
    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    sget-object v2, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;->AliRTCSDK_VideoSource_Type_CameraLarge:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;

    invoke-virtual {v1, v2}, Lorg/webrtc/alirtcInterface/SophonEngine;->removeLocalDisplayWindow(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;)V

    goto :goto_0
.end method

.method private removeRemoteDisplayWindow(Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 960
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    invoke-direct {p0, p2}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->converVideoType(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/webrtc/alirtcInterface/SophonEngine;->removeRemoteDisplayWindow(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;)V

    .line 963
    :cond_0
    return-void
.end method

.method private removeSubscribe(Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;)V
    .locals 3
    .param p1, "subscribeInfo"    # Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1787
    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSubscribeViews:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;

    .line 1788
    .local v0, "info":Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1789
    invoke-virtual {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getSubscribeConfig()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getVideoType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1791
    :cond_0
    return-void
.end method


# virtual methods
.method public addLocalDisplayWindow()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 921
    new-instance v0, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;

    invoke-direct {v0}, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;-><init>()V

    .line 922
    .local v0, "config":Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;
    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mPublishView:Lorg/webrtc/sdk/SophonSurfaceView;

    iput-object v1, v0, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->displayView:Landroid/view/SurfaceView;

    .line 923
    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mPublishView:Lorg/webrtc/sdk/SophonSurfaceView;

    invoke-virtual {v1}, Lorg/webrtc/sdk/SophonSurfaceView;->getWidth()I

    move-result v1

    iput v1, v0, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->width:I

    .line 924
    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mPublishView:Lorg/webrtc/sdk/SophonSurfaceView;

    invoke-virtual {v1}, Lorg/webrtc/sdk/SophonSurfaceView;->getHeight()I

    move-result v1

    iput v1, v0, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->height:I

    .line 925
    sget-object v1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;->AliRTCSdk_Auto_Mode:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;

    invoke-virtual {v1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;->ordinal()I

    move-result v1

    iput v1, v0, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->displayMode:I

    .line 926
    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    if-eqz v1, :cond_0

    .line 927
    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    sget-object v2, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;->AliRTCSDK_VideoSource_Type_CameraLarge:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;

    invoke-virtual {v1, v2, v0}, Lorg/webrtc/alirtcInterface/SophonEngine;->addLocalDisplayWindow(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;)V

    .line 929
    :cond_0
    return-void
.end method

.method public closeCamera()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 680
    iget-object v2, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    if-eqz v2, :cond_1

    .line 681
    const-string/jumbo v2, "SaaS"

    const-string/jumbo v3, "closeCamera"

    invoke-static {v2, v3}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    iget-object v2, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    invoke-virtual {v2}, Lorg/webrtc/alirtcInterface/SophonEngine;->closeCamera()V

    .line 683
    iget-object v2, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    sget-object v3, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;->AliRTCSDK_VideoSource_Type_CameraLarge:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;

    invoke-virtual {v2, v3, v4}, Lorg/webrtc/alirtcInterface/SophonEngine;->enableLocalVideo(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Z)V

    .line 684
    iget-object v2, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    sget-object v3, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;->AliRTCSDK_VideoSource_Type_CameraSmall:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;

    invoke-virtual {v2, v3, v4}, Lorg/webrtc/alirtcInterface/SophonEngine;->enableLocalVideo(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Z)V

    .line 685
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 687
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "id"

    const-string/jumbo v3, "0"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 688
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "notify"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 689
    const-string/jumbo v2, "name"

    const-string/jumbo v3, "cameraClosed"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 690
    iget-object v2, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mConfUserInfo:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    if-eqz v2, :cond_0

    .line 691
    const-string/jumbo v2, "participantId"

    iget-object v3, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mConfUserInfo:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    invoke-virtual {v3}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    :cond_0
    :goto_0
    iput-boolean v4, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->isCameraOpen:Z

    .line 697
    iget-object v2, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    const-string/jumbo v3, "notify"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/webrtc/alirtcInterface/SophonEngine;->uplinkChannelMessage(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    return-void

    .line 693
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 694
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public closeMic()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 724
    iget-object v2, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    if-eqz v2, :cond_1

    .line 725
    const-string/jumbo v2, "SaaS"

    const-string/jumbo v3, "closeMic"

    invoke-static {v2, v3}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    iget-object v2, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    invoke-virtual {v2, v4}, Lorg/webrtc/alirtcInterface/SophonEngine;->enableLocalAudio(Z)V

    .line 727
    iput-boolean v4, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->isMicOpen:Z

    .line 728
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 730
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "id"

    const-string/jumbo v3, "0"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 731
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "notify"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 732
    const-string/jumbo v2, "name"

    const-string/jumbo v3, "audioMuted"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 733
    iget-object v2, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mConfUserInfo:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    if-eqz v2, :cond_0

    .line 734
    const-string/jumbo v2, "participantId"

    iget-object v3, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mConfUserInfo:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    invoke-virtual {v3}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    const-string/jumbo v3, "notify"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/webrtc/alirtcInterface/SophonEngine;->uplinkChannelMessage(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    return-void

    .line 736
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 737
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public closePreview()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 642
    const-string/jumbo v0, "SaaS"

    const-string/jumbo v1, "closePreview"

    invoke-static {v0, v1}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    if-eqz v0, :cond_0

    .line 644
    invoke-direct {p0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->removeLocalDisplayWindow()V

    .line 646
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 516
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    if-eqz v0, :cond_0

    .line 517
    const-string/jumbo v0, "SaaS"

    const-string/jumbo v1, "destroy"

    invoke-static {v0, v1}, Lorg/webrtc/utils/AlivcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    invoke-virtual {v0}, Lorg/webrtc/alirtcInterface/SophonEngine;->destory()V

    .line 519
    iput-object v2, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mErrorListener:Lcom/alivc/live/conf/AlivcVideoConfListener;

    .line 520
    iput-object v2, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mNotifyListener:Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;

    .line 521
    iput-object v2, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mNetworkListener:Lcom/alivc/live/conf/AlivcVideoConfNetworkListener;

    .line 522
    iput-object v2, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mCallbackListener:Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    .line 523
    iput-object v2, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mStatusListener:Lcom/alivc/live/conf/AlivcVideoConfCollectStatusListener;

    .line 524
    iput-object v2, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    .line 526
    :cond_0
    return-void
.end method

.method public getAudioOutputMode()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 792
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mAudioOutPutMode:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;

    return-object v0
.end method

.method public getCurrentCameraType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 811
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    if-eqz v0, :cond_0

    .line 812
    invoke-static {}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;->values()[Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;

    move-result-object v0

    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    invoke-virtual {v1}, Lorg/webrtc/alirtcInterface/SophonEngine;->getCaptureType()Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    .line 814
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;->AlivcVideoConfCameraTypeInvalid:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;

    goto :goto_0
.end method

.method public getCurrentFlashType()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 765
    iget-boolean v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->isFlashOn:Z

    return v0
.end method

.method public getCurrentParticipantsStatus()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 869
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 871
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "id"

    const-string/jumbo v3, "0"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 872
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "command"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 873
    const-string/jumbo v2, "name"

    const-string/jumbo v3, "pullConfInfo"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 874
    iget-object v2, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mConfUserInfo:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    if-eqz v2, :cond_0

    .line 875
    const-string/jumbo v2, "participantId"

    iget-object v3, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mConfUserInfo:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    invoke-virtual {v3}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    if-eqz v2, :cond_1

    .line 881
    iget-object v2, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    const-string/jumbo v3, "command"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/webrtc/alirtcInterface/SophonEngine;->uplinkChannelMessage(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_1
    return-void

    .line 877
    :catch_0
    move-exception v0

    .line 878
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getCurrentUserInfo()Lcom/alivc/live/conf/AlivcVideoConfUserInfo;
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mConfUserInfo:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    return-object v0
.end method

.method public getCurrentZoom()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 775
    const/4 v0, 0x0

    return v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 840
    const-string/jumbo v0, "0.7.0.071301"

    return-object v0
.end method

.method public getSubscribedVideoTypesByUserId(Ljava/lang/String;)[Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;
    .locals 7
    .param p1, "userid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 846
    const/4 v2, 0x0

    .line 848
    .local v2, "info":Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;
    iget-object v5, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSubscribeViews:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 849
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;

    invoke-virtual {v5}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 850
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "info":Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;
    check-cast v2, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;

    .line 855
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;>;"
    .restart local v2    # "info":Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;
    :cond_1
    if-eqz v2, :cond_3

    .line 856
    invoke-virtual {v2}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getSubscribeConfig()Ljava/util/Map;

    move-result-object v4

    .line 857
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 858
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;>;"
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 859
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 862
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;>;"
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    .line 864
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;>;"
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;>;"
    :goto_1
    return-object v5

    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public init(Landroid/content/Context;Lcom/alivc/live/conf/AlivcVideoConfConfig;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "alivcLiveChatConfig"    # Lcom/alivc/live/conf/AlivcVideoConfConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 140
    :try_start_0
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mContext:Landroid/content/Context;

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/ali/ContextUtils;->initialize(Landroid/content/Context;)V

    .line 142
    invoke-virtual {p2}, Lcom/alivc/live/conf/AlivcVideoConfConfig;->getExtras()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEventListener:Lorg/webrtc/alirtcInterface/SophonEventListener;

    invoke-virtual {p2}, Lcom/alivc/live/conf/AlivcVideoConfConfig;->isEnableAudioControl()Z

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lorg/webrtc/alirtcInterface/SophonEngine;->create(Landroid/content/Context;Ljava/lang/String;Lorg/webrtc/alirtcInterface/SophonEventListener;Z)Lorg/webrtc/alirtcInterface/SophonEngineImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    .line 143
    invoke-virtual {p2}, Lcom/alivc/live/conf/AlivcVideoConfConfig;->getAudioMode()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;

    move-result-object v0

    iput-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mAudioOutPutMode:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isMicOpen()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 745
    iget-boolean v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->isMicOpen:Z

    return v0
.end method

.method public joinChat(Lcom/alivc/live/conf/AlivcVideoConfUserInfo;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfJoinMode;)V
    .locals 4
    .param p1, "userInfo"    # Lcom/alivc/live/conf/AlivcVideoConfUserInfo;
    .param p2, "joinMode"    # Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfJoinMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 151
    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 152
    const-string/jumbo v1, "SaaS"

    const-string/jumbo v2, "joinChat"

    invoke-static {v1, v2}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mConfUserInfo:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    .line 154
    new-instance v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AuthInfo;

    invoke-direct {v0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AuthInfo;-><init>()V

    .line 156
    .local v0, "authInfo":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AuthInfo;
    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->getConferenceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AuthInfo;->channel:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AuthInfo;->user_id:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->getAppid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AuthInfo;->appid:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->getNonce()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AuthInfo;->nonce:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->getTimestamp()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AuthInfo;->timestamp:J

    .line 161
    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->getSession()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AuthInfo;->session:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->getToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AuthInfo;->token:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->getGslb()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AuthInfo;->gslb:[Ljava/lang/String;

    .line 164
    const/4 v1, 0x1

    invoke-static {v1}, Lorg/webrtc/utils/AlivcLog;->enableUpload(Z)V

    .line 165
    iget-object v1, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AuthInfo;->appid:Ljava/lang/String;

    invoke-static {v1}, Lorg/webrtc/utils/AlivcLog;->setUploadAppID(Ljava/lang/String;)V

    .line 166
    iget-object v1, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AuthInfo;->session:Ljava/lang/String;

    invoke-static {v1}, Lorg/webrtc/utils/AlivcLog;->setUploadSessionID(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    invoke-virtual {v1, v0}, Lorg/webrtc/alirtcInterface/SophonEngine;->gslb(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AuthInfo;)I

    .line 170
    .end local v0    # "authInfo":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AuthInfo;
    :cond_0
    return-void
.end method

.method public leaveChat()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 174
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    if-eqz v0, :cond_0

    .line 175
    const-string/jumbo v0, "SaaS"

    const-string/jumbo v1, "leaveChat"

    invoke-static {v0, v1}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-direct {p0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->removeLocalDisplayWindow()V

    .line 177
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    invoke-virtual {v0}, Lorg/webrtc/alirtcInterface/SophonEngine;->leaveChannel()I

    .line 179
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 836
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 824
    iget-boolean v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->isCameraOpen:Z

    if-eqz v1, :cond_0

    .line 825
    new-instance v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCameraConfig;

    invoke-direct {v0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCameraConfig;-><init>()V

    .line 826
    .local v0, "config":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCameraConfig;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCameraConfig;->restart:Z

    .line 827
    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    if-eqz v1, :cond_0

    .line 828
    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    invoke-virtual {v1, v0}, Lorg/webrtc/alirtcInterface/SophonEngine;->openCamera(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCameraConfig;)V

    .line 831
    .end local v0    # "config":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCameraConfig;
    :cond_0
    return-void
.end method

.method public openCamera(Lcom/alivc/live/conf/AlivcVideoConfConstants$CameraConfig;)V
    .locals 6
    .param p1, "cameraConfig"    # Lcom/alivc/live/conf/AlivcVideoConfConstants$CameraConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 650
    iget-object v3, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    if-eqz v3, :cond_2

    .line 651
    const-string/jumbo v3, "SaaS"

    const-string/jumbo v4, "openCamera"

    invoke-static {v3, v4}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    new-instance v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCameraConfig;

    invoke-direct {v0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCameraConfig;-><init>()V

    .line 653
    .local v0, "config":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCameraConfig;
    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfConstants$CameraConfig;->getVideoSource()I

    move-result v3

    iput v3, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCameraConfig;->video_source:I

    .line 654
    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfConstants$CameraConfig;->isAutoFocus()Z

    move-result v3

    iput-boolean v3, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCameraConfig;->autoFocus:Z

    .line 655
    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfConstants$CameraConfig;->isFlash()Z

    move-result v3

    iput-boolean v3, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCameraConfig;->flash:Z

    .line 656
    iget-boolean v3, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->isCameraOpen:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->isPublishSuccess:Z

    if-eqz v3, :cond_0

    .line 657
    iput-boolean v5, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCameraConfig;->restart:Z

    .line 659
    :cond_0
    iget-object v3, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    invoke-virtual {v3, v0}, Lorg/webrtc/alirtcInterface/SophonEngine;->openCamera(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCameraConfig;)V

    .line 660
    iget-object v3, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    sget-object v4, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;->AliRTCSDK_VideoSource_Type_CameraLarge:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;

    invoke-virtual {v3, v4, v5}, Lorg/webrtc/alirtcInterface/SophonEngine;->enableLocalVideo(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Z)V

    .line 661
    iget-object v3, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    sget-object v4, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;->AliRTCSDK_VideoSource_Type_CameraSmall:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;

    invoke-virtual {v3, v4, v5}, Lorg/webrtc/alirtcInterface/SophonEngine;->enableLocalVideo(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Z)V

    .line 662
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 664
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v3, "id"

    const-string/jumbo v4, "0"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 665
    const-string/jumbo v3, "type"

    const-string/jumbo v4, "notify"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 666
    const-string/jumbo v3, "name"

    const-string/jumbo v4, "cameraOpened"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 667
    iget-object v3, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mConfUserInfo:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    if-eqz v3, :cond_1

    .line 668
    const-string/jumbo v3, "participantId"

    iget-object v4, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mConfUserInfo:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    invoke-virtual {v4}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    :cond_1
    :goto_0
    iput-boolean v5, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->isCameraOpen:Z

    .line 674
    iget-object v3, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    const-string/jumbo v4, "notify"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/webrtc/alirtcInterface/SophonEngine;->uplinkChannelMessage(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    .end local v0    # "config":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCameraConfig;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    return-void

    .line 670
    .restart local v0    # "config":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCameraConfig;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 671
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public openMic()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 703
    iget-object v2, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    if-eqz v2, :cond_1

    .line 704
    const-string/jumbo v2, "SaaS"

    const-string/jumbo v3, "openMic"

    invoke-static {v2, v3}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    iget-object v2, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    invoke-virtual {v2, v4}, Lorg/webrtc/alirtcInterface/SophonEngine;->enableLocalAudio(Z)V

    .line 706
    iput-boolean v4, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->isMicOpen:Z

    .line 707
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 709
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "id"

    const-string/jumbo v3, "0"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 710
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "notify"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 711
    const-string/jumbo v2, "name"

    const-string/jumbo v3, "audioUnmuted"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 712
    iget-object v2, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mConfUserInfo:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    if-eqz v2, :cond_0

    .line 713
    const-string/jumbo v2, "participantId"

    iget-object v3, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mConfUserInfo:Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    invoke-virtual {v3}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    const-string/jumbo v3, "notify"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/webrtc/alirtcInterface/SophonEngine;->uplinkChannelMessage(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    return-void

    .line 715
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 716
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public openPreview(Lorg/webrtc/sdk/SophonSurfaceView;)V
    .locals 3
    .param p1, "publishView"    # Lorg/webrtc/sdk/SophonSurfaceView;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 632
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mPublishView:Lorg/webrtc/sdk/SophonSurfaceView;

    .line 633
    const-string/jumbo v0, "SaaS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "openPreview localView is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mPublishView:Lorg/webrtc/sdk/SophonSurfaceView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mPublishView:Lorg/webrtc/sdk/SophonSurfaceView;

    if-nez v0, :cond_0

    .line 638
    :goto_0
    return-void

    .line 637
    :cond_0
    invoke-virtual {p0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->addLocalDisplayWindow()V

    goto :goto_0
.end method

.method public publish(Lcom/alivc/live/conf/AlivcPublishConfig;)V
    .locals 3
    .param p1, "publishConfig"    # Lcom/alivc/live/conf/AlivcPublishConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 193
    const-string/jumbo v1, "SaaS"

    const-string/jumbo v2, "publish"

    invoke-static {v1, v2}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-direct {p0, p1}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->getConfig(Lcom/alivc/live/conf/AlivcPublishConfig;)Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;

    move-result-object v0

    .line 196
    .local v0, "config":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;
    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    invoke-virtual {v1, v0}, Lorg/webrtc/alirtcInterface/SophonEngine;->publish(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;)V

    .line 199
    :cond_0
    return-void
.end method

.method public publishScreenShare()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 225
    return-void
.end method

.method public rePublish(Lcom/alivc/live/conf/AlivcPublishConfig;)V
    .locals 3
    .param p1, "publishConfig"    # Lcom/alivc/live/conf/AlivcPublishConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 183
    const-string/jumbo v1, "SaaS"

    const-string/jumbo v2, "rePublish"

    invoke-static {v1, v2}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-direct {p0, p1}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->getConfig(Lcom/alivc/live/conf/AlivcPublishConfig;)Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;

    move-result-object v0

    .line 186
    .local v0, "config":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;
    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    invoke-virtual {v1, v0}, Lorg/webrtc/alirtcInterface/SophonEngine;->republish(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;)V

    .line 189
    :cond_0
    return-void
.end method

.method public setAudioOutputMode(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;)V
    .locals 2
    .param p1, "audioMode"    # Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 780
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    if-eqz v0, :cond_1

    .line 781
    sget-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;->AlivcVideoConfAudioOutputModeSpeaker:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;

    if-ne p1, v0, :cond_2

    .line 782
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/webrtc/alirtcInterface/SophonEngine;->selectSpeakePhone(Z)V

    .line 786
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mAudioOutPutMode:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;

    .line 788
    :cond_1
    return-void

    .line 783
    :cond_2
    sget-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;->AlivcVideoConfAudioOutputModeReceiver:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;

    if-ne p1, v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/webrtc/alirtcInterface/SophonEngine;->selectSpeakePhone(Z)V

    goto :goto_0
.end method

.method public setFlash(Z)V
    .locals 1
    .param p1, "flash"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 757
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    invoke-virtual {v0, p1}, Lorg/webrtc/alirtcInterface/SophonEngine;->setFlash(Z)I

    .line 759
    iput-boolean p1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->isFlashOn:Z

    .line 761
    :cond_0
    return-void
.end method

.method public setLogLevel(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;)V
    .locals 3
    .param p1, "logLevel"    # Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 804
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    invoke-static {}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSDKLogLevel;->values()[Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSDKLogLevel;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/webrtc/alirtcInterface/SophonEngine;->changeLogLevel(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSDKLogLevel;)V

    .line 807
    :cond_0
    return-void
.end method

.method public setPlayVolume(I)V
    .locals 0
    .param p1, "playVolume"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 800
    return-void
.end method

.method public setVideoConfCallBackListener(Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;)V
    .locals 0
    .param p1, "callbackListener"    # Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    .prologue
    .line 902
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mCallbackListener:Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    .line 903
    return-void
.end method

.method public setVideoConfCollectStatusListener(Lcom/alivc/live/conf/AlivcVideoConfCollectStatusListener;)V
    .locals 2
    .param p1, "collectStatusListener"    # Lcom/alivc/live/conf/AlivcVideoConfCollectStatusListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 907
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mStatusListener:Lcom/alivc/live/conf/AlivcVideoConfCollectStatusListener;

    .line 908
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    new-instance v1, Lcom/alivc/live/conf/AlivcVideoConfImpl$1;

    invoke-direct {v1, p0}, Lcom/alivc/live/conf/AlivcVideoConfImpl$1;-><init>(Lcom/alivc/live/conf/AlivcVideoConfImpl;)V

    invoke-virtual {v0, v1}, Lorg/webrtc/alirtcInterface/SophonEngine;->setCollectStatusListener(Lorg/webrtc/alirtcInterface/CollectStatusListener;)V

    .line 918
    :cond_0
    return-void
.end method

.method public setVideoConfErrorListener(Lcom/alivc/live/conf/AlivcVideoConfListener;)V
    .locals 0
    .param p1, "errorListener"    # Lcom/alivc/live/conf/AlivcVideoConfListener;

    .prologue
    .line 887
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mErrorListener:Lcom/alivc/live/conf/AlivcVideoConfListener;

    .line 888
    return-void
.end method

.method public setVideoConfNetworkListener(Lcom/alivc/live/conf/AlivcVideoConfNetworkListener;)V
    .locals 0
    .param p1, "networkListener"    # Lcom/alivc/live/conf/AlivcVideoConfNetworkListener;

    .prologue
    .line 897
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mNetworkListener:Lcom/alivc/live/conf/AlivcVideoConfNetworkListener;

    .line 898
    return-void
.end method

.method public setVideoConfNotifyListener(Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;)V
    .locals 0
    .param p1, "infoListener"    # Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;

    .prologue
    .line 892
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mNotifyListener:Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;

    .line 893
    return-void
.end method

.method public setZoom(F)V
    .locals 0
    .param p1, "zoom"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 771
    return-void
.end method

.method public subscribe(Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;Lorg/webrtc/sdk/SophonSurfaceView;)V
    .locals 19
    .param p1, "subscribeInfo"    # Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;
    .param p2, "renderMode"    # Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;
    .param p3, "subscribeView"    # Lorg/webrtc/sdk/SophonSurfaceView;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 234
    const-string/jumbo v14, "SaaS"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "subscribe begin type is "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getVideoType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getVideoType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v13

    .line 238
    .local v13, "type":Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;
    if-eqz p1, :cond_0

    sget-object v14, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeAudioOnly:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    if-eq v13, v14, :cond_1

    if-nez p3, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    sget-object v14, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeAudioOnly:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    if-ne v13, v14, :cond_2

    .line 244
    const/16 p3, 0x0

    .line 248
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getCallId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getVideoType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->checkStreamType(Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 252
    new-instance v10, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;

    invoke-direct {v10}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;-><init>()V

    .line 253
    .local v10, "subscribeConfig":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget-object v14, v10, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    array-length v14, v14

    if-ge v5, v14, :cond_3

    .line 254
    iget-object v14, v10, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    const-string/jumbo v15, ""

    aput-object v15, v14, v5

    .line 253
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 256
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->publishInfos:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getCallId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/webrtc/alirtcInterface/PublisherInfo;

    .line 258
    .local v8, "publisherInfo":Lorg/webrtc/alirtcInterface/PublisherInfo;
    if-eqz v8, :cond_0

    .line 262
    invoke-virtual {v8}, Lorg/webrtc/alirtcInterface/PublisherInfo;->getAudio_track_label()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v10, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->audio_track_label:Ljava/lang/String;

    .line 263
    invoke-virtual {v8}, Lorg/webrtc/alirtcInterface/PublisherInfo;->getStream_label()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v10, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->stream_label:Ljava/lang/String;

    .line 265
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSubscribeViews:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getCallId()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;

    .line 267
    .local v9, "subInfo":Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;
    new-instance v12, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v14}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;-><init>(Lcom/alivc/live/conf/AlivcVideoConfImpl;Lcom/alivc/live/conf/AlivcVideoConfImpl$1;)V

    .line 268
    .local v12, "tempInfo":Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->setUnsubscribe(Z)V

    .line 269
    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getCallId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->setCallId(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getUserId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->setUserId(Ljava/lang/String;)V

    .line 271
    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getSession()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->setSession(Ljava/lang/String;)V

    .line 272
    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getDisplay()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->setDisplay(Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getVideoType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->setVideoType(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->cacheList:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getCallId()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/LinkedList;

    .line 276
    .local v7, "infoList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;>;"
    if-nez v7, :cond_4

    .line 277
    new-instance v7, Ljava/util/LinkedList;

    .end local v7    # "infoList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;>;"
    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 278
    .restart local v7    # "infoList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->cacheList:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getCallId()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :cond_4
    if-nez v9, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getCallId()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->checkSubscribe(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 284
    :cond_5
    if-eqz v9, :cond_7

    .line 285
    invoke-virtual {v9}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getSubscribeConfig()Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_6
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 286
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;

    invoke-virtual {v14}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;->getSubscribeConfig()Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;

    move-result-object v14

    if-eqz v14, :cond_6

    .line 287
    sget-object v16, Lcom/alivc/live/conf/AlivcVideoConfImpl$3;->$SwitchMap$com$alivc$live$conf$AlivcVideoConfConstants$AlivcVideoConfVideoStreamType:[I

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    invoke-virtual {v14}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->ordinal()I

    move-result v14

    aget v14, v16, v14

    packed-switch v14, :pswitch_data_0

    goto :goto_2

    .line 289
    :pswitch_0
    iget-object v0, v10, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;

    .line 290
    invoke-virtual {v14}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;->getSubscribeConfig()Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;

    move-result-object v14

    iget-object v14, v14, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    const/16 v18, 0x0

    aget-object v14, v14, v18

    aput-object v14, v16, v17

    goto :goto_2

    .line 293
    :pswitch_1
    iget-object v0, v10, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;

    .line 294
    invoke-virtual {v14}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;->getSubscribeConfig()Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;

    move-result-object v14

    iget-object v14, v14, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    const/16 v18, 0x1

    aget-object v14, v14, v18

    aput-object v14, v16, v17

    goto :goto_2

    .line 297
    :pswitch_2
    iget-object v0, v10, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;

    .line 298
    invoke-virtual {v14}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;->getSubscribeConfig()Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;

    move-result-object v14

    iget-object v14, v14, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    const/16 v18, 0x2

    aget-object v14, v14, v18

    aput-object v14, v16, v17

    goto :goto_2

    .line 307
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;>;"
    :cond_7
    const-string/jumbo v14, "SaaS"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "resubscribe config is "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->getSubscribeConfigString(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    monitor-enter v7

    .line 310
    :try_start_0
    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v14

    if-lez v14, :cond_b

    .line 311
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v14

    if-ge v5, v14, :cond_b

    .line 312
    invoke-virtual {v7, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;

    .line 313
    .local v11, "temp":Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;
    invoke-virtual {v11}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getSubscribeConfig()Ljava/util/Map;

    move-result-object v14

    invoke-static {v11}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->access$100(Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;)Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;

    invoke-virtual {v14}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;->getSubscribeConfig()Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;

    move-result-object v3

    .line 314
    .local v3, "aliSubscribeConfig":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;
    const-string/jumbo v14, "SaaS"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "resubscribe cache config is "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->getSubscribeConfigString(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    sget-object v14, Lcom/alivc/live/conf/AlivcVideoConfImpl$3;->$SwitchMap$com$alivc$live$conf$AlivcVideoConfConstants$AlivcVideoConfVideoStreamType:[I

    invoke-static {v11}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->access$100(Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;)Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v15

    invoke-virtual {v15}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_1

    .line 311
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 317
    :pswitch_3
    iget-object v15, v10, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    const/16 v16, 0x0

    invoke-virtual {v11}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->isUnsubscribe()Z

    move-result v14

    if-eqz v14, :cond_8

    const-string/jumbo v14, ""

    :goto_5
    aput-object v14, v15, v16

    goto :goto_4

    .line 330
    .end local v3    # "aliSubscribeConfig":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;
    .end local v11    # "temp":Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;
    :catchall_0
    move-exception v14

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 317
    .restart local v3    # "aliSubscribeConfig":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;
    .restart local v11    # "temp":Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;
    :cond_8
    :try_start_1
    iget-object v14, v3, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    const/16 v17, 0x0

    aget-object v14, v14, v17

    goto :goto_5

    .line 320
    :pswitch_4
    iget-object v15, v10, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    const/16 v16, 0x1

    invoke-virtual {v11}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->isUnsubscribe()Z

    move-result v14

    if-eqz v14, :cond_9

    const-string/jumbo v14, ""

    :goto_6
    aput-object v14, v15, v16

    goto :goto_4

    :cond_9
    iget-object v14, v3, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    const/16 v17, 0x1

    aget-object v14, v14, v17

    goto :goto_6

    .line 323
    :pswitch_5
    iget-object v15, v10, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    const/16 v16, 0x2

    invoke-virtual {v11}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->isUnsubscribe()Z

    move-result v14

    if-eqz v14, :cond_a

    const-string/jumbo v14, ""

    :goto_7
    aput-object v14, v15, v16

    goto :goto_4

    :cond_a
    iget-object v14, v3, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    const/16 v17, 0x2

    aget-object v14, v14, v17

    goto :goto_7

    .line 330
    .end local v3    # "aliSubscribeConfig":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;
    .end local v11    # "temp":Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;
    :cond_b
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    sget-object v14, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeAudioOnly:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    if-eq v13, v14, :cond_c

    .line 334
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v10}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->getTypeIndex(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)I

    move-result v6

    .line 335
    .local v6, "index":I
    const-string/jumbo v14, "SaaS"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "resubscribe videoIndex is "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lorg/webrtc/utils/AlivcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    if-ltz v6, :cond_0

    .line 339
    iget-object v14, v10, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    invoke-virtual {v8}, Lorg/webrtc/alirtcInterface/PublisherInfo;->getVideo_track_labels()[Ljava/lang/String;

    move-result-object v15

    aget-object v15, v15, v6

    aput-object v15, v14, v6

    .line 342
    .end local v6    # "index":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    if-eqz v14, :cond_0

    .line 343
    const-string/jumbo v14, "SaaS"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "resubscribe callId "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getCallId()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " config is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->getSubscribeConfigString(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lorg/webrtc/utils/AlivcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-virtual {v12}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getSubscribeConfig()Ljava/util/Map;

    move-result-object v14

    new-instance v15, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-direct {v15, v0, v1, v10, v2}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;-><init>(Lcom/alivc/live/conf/AlivcVideoConfImpl;Lorg/webrtc/sdk/SophonSurfaceView;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;)V

    invoke-interface {v14, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    invoke-virtual {v7, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 346
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getCallId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v10}, Lorg/webrtc/alirtcInterface/SophonEngine;->resubscribe(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)V

    goto/16 :goto_0

    .line 349
    :cond_d
    sget-object v14, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeAudioOnly:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    if-eq v13, v14, :cond_e

    .line 350
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v10}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->getTypeIndex(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)I

    move-result v6

    .line 351
    .restart local v6    # "index":I
    if-ltz v6, :cond_0

    .line 354
    iget-object v14, v10, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    invoke-virtual {v8}, Lorg/webrtc/alirtcInterface/PublisherInfo;->getVideo_track_labels()[Ljava/lang/String;

    move-result-object v15

    aget-object v15, v15, v6

    aput-object v15, v14, v6

    .line 356
    .end local v6    # "index":I
    :cond_e
    invoke-virtual {v12}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getSubscribeConfig()Ljava/util/Map;

    move-result-object v14

    new-instance v15, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-direct {v15, v0, v1, v10, v2}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;-><init>(Lcom/alivc/live/conf/AlivcVideoConfImpl;Lorg/webrtc/sdk/SophonSurfaceView;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;)V

    invoke-interface {v14, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    invoke-virtual {v7, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 358
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    if-eqz v14, :cond_0

    .line 359
    const-string/jumbo v14, "SaaS"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "subscribe callId "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getCallId()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " config is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->getSubscribeConfigString(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lorg/webrtc/utils/AlivcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getCallId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v10}, Lorg/webrtc/alirtcInterface/SophonEngine;->subscribe(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)V

    goto/16 :goto_0

    .line 287
    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public switchCamera()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 750
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    invoke-virtual {v0}, Lorg/webrtc/alirtcInterface/SophonEngine;->switchCramer()I

    .line 753
    :cond_0
    return-void
.end method

.method public switchSubscribeVideoStream(Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V
    .locals 17
    .param p1, "subUserId"    # Ljava/lang/String;
    .param p2, "srcType"    # Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;
    .param p3, "destType"    # Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    .prologue
    .line 530
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 531
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;>;"
    const/4 v4, 0x0

    .line 532
    .local v4, "info":Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;
    const-string/jumbo v13, "SaaS"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "switchSubscibeVideoStream userId is "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    if-ne v0, v1, :cond_1

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSubscribeViews:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 538
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;>;>;"
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 539
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 540
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;>;"
    if-eqz p1, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;

    invoke-virtual {v13}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getUserId()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 541
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;

    invoke-virtual {v13}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getSubscribeConfig()Ljava/util/Map;

    move-result-object v7

    .line 542
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "info":Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;
    check-cast v4, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;

    .line 547
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;>;"
    .restart local v4    # "info":Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;
    :cond_3
    const-string/jumbo v13, "SaaS"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "switchSubscibeVideoStream srcType is "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " destType is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v13

    if-eqz v13, :cond_4

    if-nez v4, :cond_5

    .line 549
    :cond_4
    const-string/jumbo v13, "SaaS"

    const-string/jumbo v14, "switchSubscibeVideoStream state error"

    invoke-static {v13, v14}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 553
    :cond_5
    const/4 v11, 0x0

    .line 554
    .local v11, "surfaceView":Lorg/webrtc/sdk/SophonSurfaceView;
    const/4 v9, 0x0

    .line 556
    .local v9, "renderMode":Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;
    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 557
    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;

    invoke-virtual {v13}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;->getSophonSurfaceView()Lorg/webrtc/sdk/SophonSurfaceView;

    move-result-object v11

    .line 558
    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;

    invoke-virtual {v13}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;->getRenderMode()Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;

    move-result-object v9

    .line 561
    :cond_6
    if-nez v11, :cond_7

    .line 562
    move-object/from16 v0, p3

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_7

    .line 563
    move-object/from16 v0, p3

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;

    invoke-virtual {v13}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;->getSophonSurfaceView()Lorg/webrtc/sdk/SophonSurfaceView;

    move-result-object v11

    .line 564
    move-object/from16 v0, p3

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;

    invoke-virtual {v13}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;->getRenderMode()Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;

    move-result-object v9

    .line 568
    :cond_7
    if-nez v11, :cond_8

    .line 569
    const-string/jumbo v13, "SaaS"

    const-string/jumbo v14, "switchSubscibeVideoStream surfaceView is null"

    invoke-static {v13, v14}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 573
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->publishInfos:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getCallId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/webrtc/alirtcInterface/PublisherInfo;

    .line 575
    .local v8, "publisherInfo":Lorg/webrtc/alirtcInterface/PublisherInfo;
    if-nez v8, :cond_9

    .line 576
    const-string/jumbo v13, "SaaS"

    const-string/jumbo v14, "switchSubscibeVideoStream publishInfo is null"

    invoke-static {v13, v14}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 580
    :cond_9
    new-instance v12, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;-><init>(Lcom/alivc/live/conf/AlivcVideoConfImpl;Lcom/alivc/live/conf/AlivcVideoConfImpl$1;)V

    .line 581
    .local v12, "tempInfo":Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;
    invoke-virtual {v4}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getCallId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->setCallId(Ljava/lang/String;)V

    .line 582
    invoke-virtual {v4}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getUserId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->setUserId(Ljava/lang/String;)V

    .line 583
    invoke-virtual {v4}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getSession()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->setSession(Ljava/lang/String;)V

    .line 584
    invoke-virtual {v4}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getDisplay()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->setDisplay(Ljava/lang/String;)V

    .line 585
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->setVideoType(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V

    .line 586
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->setSrcVideoType(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V

    .line 588
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->cacheList:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getCallId()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/LinkedList;

    .line 589
    .local v5, "infoList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;>;"
    if-nez v5, :cond_b

    .line 590
    new-instance v5, Ljava/util/LinkedList;

    .end local v5    # "infoList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;>;"
    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 591
    .restart local v5    # "infoList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->cacheList:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getCallId()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    :cond_a
    new-instance v10, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;

    invoke-direct {v10}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;-><init>()V

    .line 599
    .local v10, "subscribeConfig":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v13, v10, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    array-length v13, v13

    if-ge v3, v13, :cond_c

    .line 600
    iget-object v13, v10, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    const-string/jumbo v14, ""

    aput-object v14, v13, v3

    .line 599
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 593
    .end local v3    # "i":I
    .end local v10    # "subscribeConfig":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;
    :cond_b
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v13

    if-eqz v13, :cond_a

    invoke-virtual {v5}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;

    invoke-virtual {v13}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getVideoType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v13

    move-object/from16 v0, p3

    if-ne v13, v0, :cond_a

    .line 594
    const-string/jumbo v13, "SaaS"

    const-string/jumbo v14, "switchSubscibeVideoStream same type"

    invoke-static {v13, v14}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 604
    .restart local v3    # "i":I
    .restart local v10    # "subscribeConfig":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;
    :cond_c
    invoke-virtual {v8}, Lorg/webrtc/alirtcInterface/PublisherInfo;->getAudio_track_label()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->audio_track_label:Ljava/lang/String;

    .line 605
    invoke-virtual {v8}, Lorg/webrtc/alirtcInterface/PublisherInfo;->getStream_label()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->stream_label:Ljava/lang/String;

    .line 606
    sget-object v13, Lcom/alivc/live/conf/AlivcVideoConfImpl$3;->$SwitchMap$com$alivc$live$conf$AlivcVideoConfConstants$AlivcVideoConfVideoStreamType:[I

    invoke-virtual/range {p3 .. p3}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    .line 620
    :goto_2
    if-eqz v11, :cond_0

    .line 621
    invoke-virtual {v12}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getSubscribeConfig()Ljava/util/Map;

    move-result-object v13

    new-instance v14, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v11, v10, v9}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;-><init>(Lcom/alivc/live/conf/AlivcVideoConfImpl;Lorg/webrtc/sdk/SophonSurfaceView;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;)V

    move-object/from16 v0, p3

    invoke-interface {v13, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    invoke-virtual {v5, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 623
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    if-eqz v13, :cond_0

    .line 624
    const-string/jumbo v13, "SaaS"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "switchSubscibeVideoStream callId is "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getCallId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " config is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->getSubscribeConfigString(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/webrtc/utils/AlivcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    invoke-virtual {v4}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getCallId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v10}, Lorg/webrtc/alirtcInterface/SophonEngine;->resubscribe(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)V

    goto/16 :goto_0

    .line 608
    :pswitch_0
    iget-object v13, v10, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v8}, Lorg/webrtc/alirtcInterface/PublisherInfo;->getVideo_track_labels()[Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v15, v15, v16

    aput-object v15, v13, v14

    goto :goto_2

    .line 611
    :pswitch_1
    iget-object v13, v10, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    const/4 v14, 0x1

    invoke-virtual {v8}, Lorg/webrtc/alirtcInterface/PublisherInfo;->getVideo_track_labels()[Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    aget-object v15, v15, v16

    aput-object v15, v13, v14

    goto :goto_2

    .line 614
    :pswitch_2
    iget-object v13, v10, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    const/4 v14, 0x2

    invoke-virtual {v8}, Lorg/webrtc/alirtcInterface/PublisherInfo;->getVideo_track_labels()[Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x2

    aget-object v15, v15, v16

    aput-object v15, v13, v14

    goto/16 :goto_2

    .line 606
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public unPublish()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 203
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    if-eqz v0, :cond_0

    .line 204
    const-string/jumbo v0, "SaaS"

    const-string/jumbo v1, "unPublish"

    invoke-static {v0, v1}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    invoke-virtual {v0}, Lorg/webrtc/alirtcInterface/SophonEngine;->unpublish()V

    .line 207
    :cond_0
    return-void
.end method

.method public unPublishScreenShare()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 230
    return-void
.end method

.method public unSubscribe(Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;)V
    .locals 15
    .param p1, "subscribeInfo"    # Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 367
    iget-object v10, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    if-eqz v10, :cond_0

    .line 368
    const-string/jumbo v10, "SaaS"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "unsubscribe callId "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getCallId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " videoType is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getVideoType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getVideoType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v10

    sget-object v11, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeAudioOnly:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    if-ne v10, v11, :cond_1

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    const/4 v4, 0x0

    .line 374
    .local v4, "info":Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;
    iget-object v10, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSubscribeViews:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 375
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;>;>;"
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 376
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 377
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getUserId()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getUserId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;

    invoke-virtual {v10}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getUserId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 378
    iget-object v11, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSubscribeViews:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;

    invoke-virtual {v10}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getCallId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "info":Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;
    check-cast v4, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;

    .line 383
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;>;"
    .restart local v4    # "info":Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;
    :cond_3
    if-eqz v4, :cond_0

    .line 387
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getSubscribeConfig()Ljava/util/Map;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 388
    invoke-virtual {v4}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getSubscribeConfig()Ljava/util/Map;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getVideoType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 393
    :cond_4
    const-string/jumbo v10, "SaaS"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "unsubscribe info "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/webrtc/utils/AlivcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    new-instance v7, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;

    invoke-direct {v7}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;-><init>()V

    .line 396
    .local v7, "subscribeConfig":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v10, v7, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    array-length v10, v10

    if-ge v3, v10, :cond_5

    .line 397
    iget-object v10, v7, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    const-string/jumbo v11, ""

    aput-object v11, v10, v3

    .line 396
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 400
    :cond_5
    new-instance v9, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;-><init>(Lcom/alivc/live/conf/AlivcVideoConfImpl;Lcom/alivc/live/conf/AlivcVideoConfImpl$1;)V

    .line 401
    .local v9, "tempInfo":Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->setUnsubscribe(Z)V

    .line 402
    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getCallId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->setCallId(Ljava/lang/String;)V

    .line 403
    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getUserId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->setUserId(Ljava/lang/String;)V

    .line 404
    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getSession()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->setSession(Ljava/lang/String;)V

    .line 405
    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getDisplay()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->setDisplay(Ljava/lang/String;)V

    .line 406
    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getVideoType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->setVideoType(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V

    .line 408
    iget-object v10, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->cacheList:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getCallId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/LinkedList;

    .line 409
    .local v5, "infoList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;>;"
    if-nez v5, :cond_6

    .line 410
    new-instance v5, Ljava/util/LinkedList;

    .end local v5    # "infoList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;>;"
    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 411
    .restart local v5    # "infoList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;>;"
    iget-object v10, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->cacheList:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getCallId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    :cond_6
    if-eqz v4, :cond_0

    .line 415
    invoke-virtual {v4}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getSubscribeConfig()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    const/4 v11, 0x1

    if-gt v10, v11, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getCallId()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->checkSubscribe(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 416
    :cond_7
    invoke-virtual {v4}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getSubscribeConfig()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 417
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;>;"
    sget-object v12, Lcom/alivc/live/conf/AlivcVideoConfImpl$3;->$SwitchMap$com$alivc$live$conf$AlivcVideoConfConstants$AlivcVideoConfVideoStreamType:[I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    invoke-virtual {v10}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->ordinal()I

    move-result v10

    aget v10, v12, v10

    packed-switch v10, :pswitch_data_0

    goto :goto_2

    .line 419
    :pswitch_0
    iget-object v12, v7, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    const/4 v13, 0x0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;

    invoke-virtual {v10}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;->getSubscribeConfig()Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;

    move-result-object v10

    iget-object v10, v10, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v10, v10, v14

    aput-object v10, v12, v13

    .line 420
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;

    invoke-virtual {v10}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;->getSubscribeConfig()Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;

    move-result-object v10

    iget-object v10, v10, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->stream_label:Ljava/lang/String;

    iput-object v10, v7, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->stream_label:Ljava/lang/String;

    .line 421
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;

    invoke-virtual {v10}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;->getSubscribeConfig()Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;

    move-result-object v10

    iget-object v10, v10, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->audio_track_label:Ljava/lang/String;

    iput-object v10, v7, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->audio_track_label:Ljava/lang/String;

    goto :goto_2

    .line 424
    :pswitch_1
    iget-object v12, v7, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    const/4 v13, 0x1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;

    invoke-virtual {v10}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;->getSubscribeConfig()Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;

    move-result-object v10

    iget-object v10, v10, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    const/4 v14, 0x1

    aget-object v10, v10, v14

    aput-object v10, v12, v13

    .line 425
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;

    invoke-virtual {v10}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;->getSubscribeConfig()Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;

    move-result-object v10

    iget-object v10, v10, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->stream_label:Ljava/lang/String;

    iput-object v10, v7, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->stream_label:Ljava/lang/String;

    .line 426
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;

    invoke-virtual {v10}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;->getSubscribeConfig()Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;

    move-result-object v10

    iget-object v10, v10, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->audio_track_label:Ljava/lang/String;

    iput-object v10, v7, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->audio_track_label:Ljava/lang/String;

    goto/16 :goto_2

    .line 429
    :pswitch_2
    iget-object v12, v7, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    const/4 v13, 0x2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;

    invoke-virtual {v10}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;->getSubscribeConfig()Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;

    move-result-object v10

    iget-object v10, v10, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    const/4 v14, 0x2

    aget-object v10, v10, v14

    aput-object v10, v12, v13

    .line 430
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;

    invoke-virtual {v10}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;->getSubscribeConfig()Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;

    move-result-object v10

    iget-object v10, v10, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->stream_label:Ljava/lang/String;

    iput-object v10, v7, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->stream_label:Ljava/lang/String;

    .line 431
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;

    invoke-virtual {v10}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;->getSubscribeConfig()Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;

    move-result-object v10

    iget-object v10, v10, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->audio_track_label:Ljava/lang/String;

    iput-object v10, v7, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->audio_track_label:Ljava/lang/String;

    goto/16 :goto_2

    .line 438
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;>;"
    :cond_8
    const-string/jumbo v10, "SaaS"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "unSubscribe config is "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->getSubscribeConfigString(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    monitor-enter v5

    .line 442
    const/4 v3, 0x0

    :goto_3
    :try_start_0
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v10

    if-ge v3, v10, :cond_c

    .line 443
    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;

    .line 444
    .local v8, "temp":Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;
    invoke-virtual {v8}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getSubscribeConfig()Ljava/util/Map;

    move-result-object v10

    invoke-static {v8}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->access$100(Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;)Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;

    invoke-virtual {v10}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;->getSubscribeConfig()Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;

    move-result-object v0

    .line 445
    .local v0, "aliSubscribeConfig":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;
    sget-object v10, Lcom/alivc/live/conf/AlivcVideoConfImpl$3;->$SwitchMap$com$alivc$live$conf$AlivcVideoConfConstants$AlivcVideoConfVideoStreamType:[I

    invoke-static {v8}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->access$100(Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;)Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_1

    .line 442
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 447
    :pswitch_3
    iget-object v11, v7, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v8}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->isUnsubscribe()Z

    move-result v10

    if-eqz v10, :cond_9

    const-string/jumbo v10, ""

    :goto_5
    aput-object v10, v11, v12

    .line 448
    iget-object v10, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->stream_label:Ljava/lang/String;

    iput-object v10, v7, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->stream_label:Ljava/lang/String;

    .line 449
    iget-object v10, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->audio_track_label:Ljava/lang/String;

    iput-object v10, v7, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->audio_track_label:Ljava/lang/String;

    goto :goto_4

    .line 465
    .end local v0    # "aliSubscribeConfig":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;
    .end local v8    # "temp":Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;
    :catchall_0
    move-exception v10

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 447
    .restart local v0    # "aliSubscribeConfig":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;
    .restart local v8    # "temp":Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;
    :cond_9
    :try_start_1
    iget-object v10, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v10, v10, v13

    goto :goto_5

    .line 452
    :pswitch_4
    iget-object v11, v7, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    const/4 v12, 0x1

    invoke-virtual {v8}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->isUnsubscribe()Z

    move-result v10

    if-eqz v10, :cond_a

    const-string/jumbo v10, ""

    :goto_6
    aput-object v10, v11, v12

    .line 453
    iget-object v10, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->stream_label:Ljava/lang/String;

    iput-object v10, v7, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->stream_label:Ljava/lang/String;

    .line 454
    iget-object v10, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->audio_track_label:Ljava/lang/String;

    iput-object v10, v7, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->audio_track_label:Ljava/lang/String;

    goto :goto_4

    .line 452
    :cond_a
    iget-object v10, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    const/4 v13, 0x1

    aget-object v10, v10, v13

    goto :goto_6

    .line 457
    :pswitch_5
    iget-object v11, v7, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    const/4 v12, 0x2

    invoke-virtual {v8}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->isUnsubscribe()Z

    move-result v10

    if-eqz v10, :cond_b

    const-string/jumbo v10, ""

    :goto_7
    aput-object v10, v11, v12

    .line 458
    iget-object v10, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->stream_label:Ljava/lang/String;

    iput-object v10, v7, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->stream_label:Ljava/lang/String;

    .line 459
    iget-object v10, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->audio_track_label:Ljava/lang/String;

    iput-object v10, v7, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->audio_track_label:Ljava/lang/String;

    goto :goto_4

    .line 457
    :cond_b
    iget-object v10, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    const/4 v13, 0x2

    aget-object v10, v10, v13

    goto :goto_7

    .line 465
    .end local v0    # "aliSubscribeConfig":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;
    .end local v8    # "temp":Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;
    :cond_c
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 467
    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getVideoType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v10

    sget-object v11, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeLarge:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    if-ne v10, v11, :cond_e

    .line 468
    iget-object v10, v7, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 471
    iget-object v10, v7, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, ""

    aput-object v12, v10, v11

    .line 487
    :cond_d
    :goto_8
    const-string/jumbo v10, "SaaS"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "unSubscribe callId "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getCallId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " unSubscribe config is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-direct {p0, v7}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->getSubscribeConfigString(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/webrtc/utils/AlivcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v10, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->publishInfos:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getCallId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/webrtc/alirtcInterface/PublisherInfo;

    invoke-virtual {v10}, Lorg/webrtc/alirtcInterface/PublisherInfo;->getAudio_track_label()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->audio_track_label:Ljava/lang/String;

    .line 490
    iget-object v10, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->publishInfos:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getCallId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/webrtc/alirtcInterface/PublisherInfo;

    invoke-virtual {v10}, Lorg/webrtc/alirtcInterface/PublisherInfo;->getStream_label()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->stream_label:Ljava/lang/String;

    .line 491
    iget-object v10, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getCallId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v7}, Lorg/webrtc/alirtcInterface/SophonEngine;->resubscribe(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)V

    .line 499
    :goto_9
    invoke-virtual {v9}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getSubscribeConfig()Ljava/util/Map;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getVideoType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v11

    new-instance v12, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v12, p0, v13, v7, v14}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;-><init>(Lcom/alivc/live/conf/AlivcVideoConfImpl;Lorg/webrtc/sdk/SophonSurfaceView;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;)V

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    invoke-virtual {v5, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 473
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getVideoType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v10

    sget-object v11, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeSmall:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    if-ne v10, v11, :cond_f

    .line 474
    iget-object v10, v7, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 477
    iget-object v10, v7, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    const/4 v11, 0x1

    const-string/jumbo v12, ""

    aput-object v12, v10, v11

    goto/16 :goto_8

    .line 479
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getVideoType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v10

    sget-object v11, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeScreenShare:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    if-ne v10, v11, :cond_d

    .line 480
    iget-object v10, v7, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    const/4 v11, 0x2

    aget-object v10, v10, v11

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 483
    iget-object v10, v7, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->video_track_labels:[Ljava/lang/String;

    const/4 v11, 0x2

    const-string/jumbo v12, ""

    aput-object v12, v10, v11

    goto/16 :goto_8

    .line 493
    :cond_10
    const-string/jumbo v10, "SaaS"

    const-string/jumbo v11, "unSubscribe audio only "

    invoke-static {v10, v11}, Lorg/webrtc/utils/AlivcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v10, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->publishInfos:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getCallId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/webrtc/alirtcInterface/PublisherInfo;

    invoke-virtual {v10}, Lorg/webrtc/alirtcInterface/PublisherInfo;->getAudio_track_label()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->audio_track_label:Ljava/lang/String;

    .line 496
    iget-object v10, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->publishInfos:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getCallId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/webrtc/alirtcInterface/PublisherInfo;

    invoke-virtual {v10}, Lorg/webrtc/alirtcInterface/PublisherInfo;->getStream_label()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->stream_label:Ljava/lang/String;

    .line 497
    iget-object v10, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    invoke-virtual/range {p1 .. p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getCallId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v7}, Lorg/webrtc/alirtcInterface/SophonEngine;->resubscribe(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)V

    goto/16 :goto_9

    .line 417
    .line 445
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public unSubscribeVideoStream(Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;)V
    .locals 3
    .param p1, "subscribeInfo"    # Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 507
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getVideoType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v0

    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeAudioOnly:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    if-ne v0, v1, :cond_1

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    const-string/jumbo v0, "SaaS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unSubscribeVideoStream callId is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->getVideoType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-virtual {p0, p1}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->unSubscribe(Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;)V

    goto :goto_0
.end method

.method public updateDisplayWindow(Lorg/webrtc/sdk/SophonSurfaceView;Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;)V
    .locals 3
    .param p1, "surfaceView"    # Lorg/webrtc/sdk/SophonSurfaceView;
    .param p2, "renderMode"    # Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 211
    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    if-eqz v1, :cond_0

    .line 212
    const-string/jumbo v1, "SaaS"

    const-string/jumbo v2, "updateDisplayWindow"

    invoke-static {v1, v2}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance v0, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;

    invoke-direct {v0}, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;-><init>()V

    .line 214
    .local v0, "aliRendererConfig":Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;
    invoke-virtual {p2}, Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;->ordinal()I

    move-result v1

    iput v1, v0, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->displayMode:I

    .line 215
    invoke-virtual {p1}, Lorg/webrtc/sdk/SophonSurfaceView;->getWidth()I

    move-result v1

    iput v1, v0, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->width:I

    .line 216
    invoke-virtual {p1}, Lorg/webrtc/sdk/SophonSurfaceView;->getHeight()I

    move-result v1

    iput v1, v0, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->height:I

    .line 217
    iput-object p1, v0, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->displayView:Landroid/view/SurfaceView;

    .line 218
    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl;->mSophonEngine:Lorg/webrtc/alirtcInterface/SophonEngine;

    invoke-virtual {v1, v0}, Lorg/webrtc/alirtcInterface/SophonEngine;->updateDisplayWindow(Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;)V

    .line 220
    .end local v0    # "aliRendererConfig":Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;
    :cond_0
    return-void
.end method
