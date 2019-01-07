.class public Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;
.super Lcom/taobao/weex/ui/component/WXComponent;
.source "TBLiveWeexVideoComponent.java"


# static fields
.field private static final MEDIA_ERR_ABORTED:J = 0x1L

.field private static final MEDIA_ERR_DECODE:J = 0x3L

.field private static final MEDIA_ERR_NETWORK:J = 0x2L

.field private static final MEDIA_ERR_SRC_NOT_SUPPORTED:J = 0x4L

.field private static final TAG:Ljava/lang/String;

.field private static final WEEX_VIDEO_EVENT_CANPLAYTHROUGH:Ljava/lang/String; = "canplaythrough"

.field private static final WEEX_VIDEO_EVENT_COMPLETED:Ljava/lang/String; = "ended"

.field private static final WEEX_VIDEO_EVENT_ERROR:Ljava/lang/String; = "error"

.field private static final WEEX_VIDEO_EVENT_FAIL:Ljava/lang/String; = "fail"

.field private static final WEEX_VIDEO_EVENT_FINISHED:Ljava/lang/String; = "finish"

.field private static final WEEX_VIDEO_EVENT_FIRST_FRAME_RENDERED:Ljava/lang/String; = "firstvideoframerendered"

.field private static final WEEX_VIDEO_EVENT_PAUSED:Ljava/lang/String; = "pause"

.field private static final WEEX_VIDEO_EVENT_PLAYING:Ljava/lang/String; = "playing"

.field private static final WEEX_VIDEO_EVENT_STALLED:Ljava/lang/String; = "stalled"

.field private static final WEEX_VIDEO_EVENT_STARTED:Ljava/lang/String; = "start"

.field private static final WEEX_VIDEO_EVENT_TIMEUPDATE:Ljava/lang/String; = "timeupdate"


# instance fields
.field private mIsPlayingBeforeActivityPause:Z

.field private mVideoView:Ljov;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 0
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 51
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;J)J
    .locals 3
    .param p0, "x0"    # Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;
    .param p1, "x1"    # J

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->covertErrCode(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private covertErrCode(J)J
    .locals 3
    .param p1, "errCode"    # J

    .prologue
    .line 217
    const-wide/16 v0, -0x5

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x3c

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 218
    :cond_0
    const-wide/16 p1, 0x2

    .line 224
    .end local p1    # "errCode":J
    :cond_1
    :goto_0
    return-wide p1

    .line 219
    .restart local p1    # "errCode":J
    :cond_2
    const-wide/16 v0, -0x2710

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 220
    const-wide/16 p1, 0x3

    goto :goto_0

    .line 221
    :cond_3
    const-wide/32 v0, -0x434544f8

    cmp-long v0, p1, v0

    if-eqz v0, :cond_4

    const-wide/32 v0, -0x4d4544f8

    cmp-long v0, p1, v0

    if-eqz v0, :cond_4

    const-wide/32 v0, -0x4f5250f8

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 222
    :cond_4
    const-wide/16 p1, 0x4

    goto :goto_0
.end method

.method private initVideoView(Ljava/lang/String;)V
    .locals 9
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 89
    const-string/jumbo v7, "unknown"

    .line 90
    .local v7, "referUrl":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v7

    .line 95
    :cond_0
    const-string/jumbo v1, "live"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    new-instance v1, Ljow;

    invoke-virtual {p0}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v7}, Ljow;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    iput-object v1, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    .line 97
    const-string/jumbo v8, "live"

    .line 109
    .local v8, "videoType":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    new-instance v2, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;

    invoke-direct {v2, p0}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;-><init>(Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;)V

    invoke-virtual {v1, v2}, Ljov;->a(Ljov$a;)V

    .line 208
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 209
    .local v6, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "url"

    invoke-interface {v6, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string/jumbo v1, "type"

    invoke-interface {v6, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    new-instance v0, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    const-string/jumbo v1, "Page_WeexVideo"

    const/16 v2, 0x899

    const-string/jumbo v3, "Page_WeexVideo_Initialization"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "0"

    invoke-direct/range {v0 .. v6}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 213
    .local v0, "builder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    .line 214
    return-void

    .line 98
    .end local v0    # "builder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    .end local v6    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "videoType":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "video"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    new-instance v1, Ljow;

    invoke-virtual {p0}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3, v7}, Ljow;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    iput-object v1, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    .line 100
    const-string/jumbo v8, "video"

    .restart local v8    # "videoType":Ljava/lang/String;
    goto :goto_0

    .line 101
    .end local v8    # "videoType":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "interact"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 102
    new-instance v1, Lcom/taobao/tbliveweexvideo/InteractVideoView;

    invoke-virtual {p0}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/taobao/tbliveweexvideo/InteractVideoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    .line 103
    const-string/jumbo v8, "interact"

    .restart local v8    # "videoType":Ljava/lang/String;
    goto :goto_0

    .line 105
    .end local v8    # "videoType":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljow;

    invoke-virtual {p0}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3, v7}, Ljow;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    iput-object v1, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    .line 106
    const-string/jumbo v8, "video"

    .restart local v8    # "videoType":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 390
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->destroy()V

    .line 392
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    invoke-virtual {v0}, Ljov;->i()V

    .line 395
    :cond_0
    return-void
.end method

.method public getCurrentTime(Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 304
    iget-object v1, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 305
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 306
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "result"

    iget-object v2, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    invoke-virtual {v2}, Ljov;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    .line 309
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public getMuted(Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 341
    iget-object v1, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 342
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 343
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "result"

    iget-object v2, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    invoke-virtual {v2}, Ljov;->b()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    .line 346
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public getVideoHeight()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    invoke-virtual {v0}, Ljov;->e()I

    .line 358
    :cond_0
    return-void
.end method

.method public getVideoWidth()V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    invoke-virtual {v0}, Ljov;->d()I

    .line 352
    :cond_0
    return-void
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v2

    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 57
    .local v1, "type":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->initVideoView(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v2

    const-string/jumbo v3, "muted"

    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    .local v0, "object":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 62
    :try_start_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 63
    check-cast v0, Ljava/lang/String;

    .end local v0    # "object":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->setMuted(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v2

    const-string/jumbo v3, "controls"

    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    .restart local v0    # "object":Ljava/lang/Object;
    if-eqz v0, :cond_4

    .line 74
    :try_start_1
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 75
    check-cast v0, Ljava/lang/String;

    .end local v0    # "object":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->setControls(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    invoke-virtual {v2}, Ljov;->a()Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 64
    .restart local v0    # "object":Ljava/lang/Object;
    :cond_2
    :try_start_2
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 65
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "object":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->setMuted(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    .line 76
    .restart local v0    # "object":Ljava/lang/Object;
    :cond_3
    :try_start_3
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 77
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "object":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->setControls(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 80
    :catch_1
    move-exception v2

    goto :goto_1

    .line 82
    .restart local v0    # "object":Ljava/lang/Object;
    :cond_4
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->setControls(Z)V

    goto :goto_1
.end method

.method public notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "wxEventType"    # Ljava/lang/String;
    .param p2, "direction"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 362
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "notifyAppearStateChange --- wxEventType = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " direction = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    return-void
.end method

.method public onActivityPause()V
    .locals 1

    .prologue
    .line 369
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityPause()V

    .line 371
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    invoke-virtual {v0}, Ljov;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mIsPlayingBeforeActivityPause:Z

    .line 373
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    invoke-virtual {v0}, Ljov;->g()V

    .line 375
    :cond_0
    return-void
.end method

.method public onActivityResume()V
    .locals 1

    .prologue
    .line 379
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityResume()V

    .line 381
    iget-boolean v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mIsPlayingBeforeActivityPause:Z

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    invoke-virtual {v0}, Ljov;->h()V

    .line 386
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .prologue
    .line 327
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    invoke-virtual {v0}, Ljov;->g()V

    .line 330
    :cond_0
    return-void
.end method

.method public play()V
    .locals 1
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    invoke-virtual {v0}, Ljov;->h()V

    .line 323
    :cond_0
    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 2
    .param p1, "autoPlay"    # Z
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "autoplay"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setAutoPlay-------autoPlay = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 238
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    invoke-virtual {v0, p1}, Ljov;->a(Z)V

    .line 241
    :cond_0
    return-void
.end method

.method public setControls(Z)V
    .locals 2
    .param p1, "controls"    # Z
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "controls"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setControls-------controls = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 251
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    invoke-virtual {v0, p1}, Ljov;->b(Z)V

    .line 254
    :cond_0
    return-void
.end method

.method public setCurrentTime(J)V
    .locals 5
    .param p1, "currentTime"    # J
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .prologue
    .line 296
    const-wide/16 v2, 0x3e8

    mul-long v0, p1, v2

    .line 297
    .local v0, "mills":J
    iget-object v2, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    if-eqz v2, :cond_0

    .line 298
    iget-object v2, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    invoke-virtual {v2, v0, v1}, Ljov;->a(J)V

    .line 300
    :cond_0
    return-void
.end method

.method public setLandscape(Z)V
    .locals 2
    .param p1, "landscape"    # Z
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "landscape"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setLandscape-------landscape = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 279
    return-void
.end method

.method public setLoop(Z)V
    .locals 2
    .param p1, "loop"    # Z
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "loop"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setLoop-------loop = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 260
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    invoke-virtual {v0, p1}, Ljov;->d(Z)V

    .line 263
    :cond_0
    return-void
.end method

.method public setMuted(Z)V
    .locals 1
    .param p1, "muted"    # Z
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .prologue
    .line 334
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    invoke-virtual {v0, p1}, Ljov;->c(Z)V

    .line 337
    :cond_0
    return-void
.end method

.method public setPlayStatus(Ljava/lang/String;)V
    .locals 2
    .param p1, "playStatus"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "playStatus"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setPlayStatus-------playStatus = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    if-eqz v0, :cond_0

    .line 285
    const-string/jumbo v0, "pause"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    invoke-virtual {v0}, Ljov;->g()V

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    const-string/jumbo v0, "play"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    invoke-virtual {v0}, Ljov;->h()V

    goto :goto_0
.end method

.method public setPoster(Ljava/lang/String;)V
    .locals 0
    .param p1, "poster"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "poster"
    .end annotation

    .prologue
    .line 246
    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 2
    .param p1, "scale"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "size"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setSize-------size = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    invoke-virtual {v0, p1}, Ljov;->b(Ljava/lang/String;)V

    .line 271
    :cond_0
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 2
    .param p1, "src"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "src"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setSrc-------src = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    invoke-virtual {v0, p1}, Ljov;->a(Ljava/lang/String;)V

    .line 233
    :cond_0
    return-void
.end method

.method public setVolume(J)V
    .locals 3
    .param p1, "volume"    # J
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->mVideoView:Ljov;

    long-to-float v1, p1

    invoke-virtual {v0, v1}, Ljov;->a(F)V

    .line 316
    :cond_0
    return-void
.end method
