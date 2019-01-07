.class public Lcom/taobao/weex/ui/component/WXVideo;
.super Lcom/taobao/weex/ui/component/WXComponent;
.source "WXVideo.java"


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/component/WXComponent",
        "<",
        "Landroid/widget/FrameLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private mAutoPlay:Z

.field private mError:Z

.field mPrepared:Z

.field private mStopped:Z

.field private mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 0
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "instanceId"    # Ljava/lang/String;
    .param p4, "isLazy"    # Z
    .param p5, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/taobao/weex/ui/component/WXVideo;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 0
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "isLazy"    # Z
    .param p4, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 63
    return-void
.end method

.method static synthetic access$002(Lcom/taobao/weex/ui/component/WXVideo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/WXVideo;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mError:Z

    return p1
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/component/WXVideo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/WXVideo;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXVideo;->notify(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/taobao/weex/ui/component/WXVideo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/WXVideo;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mAutoPlay:Z

    return v0
.end method

.method static synthetic access$300(Lcom/taobao/weex/ui/component/WXVideo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/WXVideo;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mStopped:Z

    return v0
.end method

.method static synthetic access$302(Lcom/taobao/weex/ui/component/WXVideo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/WXVideo;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mStopped:Z

    return p1
.end method

.method private notify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "newStatus"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 157
    new-instance v4, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 158
    .local v4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "playStatus"

    invoke-interface {v4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string/jumbo v0, "timeStamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 162
    .local v5, "domChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 163
    .local v6, "attrsChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "playStatus"

    invoke-interface {v6, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string/jumbo v0, "attrs"

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVideo;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVideo;->getRef()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/WXSDKManager;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 167
    return-void
.end method


# virtual methods
.method public bindData(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 1
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->bindData(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 172
    const-string/jumbo v0, "appear"

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXVideo;->addEvent(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 183
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->destroy()V

    .line 184
    return-void
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXVideo;->initComponentHostView(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 67
    new-instance v0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;-><init>(Landroid/content/Context;)V

    .line 69
    .local v0, "video":Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;
    new-instance v1, Lcom/taobao/weex/ui/component/WXVideo$1;

    invoke-direct {v1, p0, v0}, Lcom/taobao/weex/ui/component/WXVideo$1;-><init>(Lcom/taobao/weex/ui/component/WXVideo;Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 87
    new-instance v1, Lcom/taobao/weex/ui/component/WXVideo$2;

    invoke-direct {v1, p0, v0}, Lcom/taobao/weex/ui/component/WXVideo$2;-><init>(Lcom/taobao/weex/ui/component/WXVideo;Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 116
    new-instance v1, Lcom/taobao/weex/ui/component/WXVideo$3;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/WXVideo$3;-><init>(Lcom/taobao/weex/ui/component/WXVideo;)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 129
    new-instance v1, Lcom/taobao/weex/ui/component/WXVideo$4;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/WXVideo$4;-><init>(Lcom/taobao/weex/ui/component/WXVideo;)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->setOnVideoPauseListener(Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;)V

    .line 152
    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    .line 153
    return-object v0
.end method

.method public notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "wxEventType"    # Ljava/lang/String;
    .param p2, "direction"    # Ljava/lang/String;

    .prologue
    .line 177
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->createVideoViewIfVisible()Z

    .line 179
    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 1
    .param p1, "autoPlay"    # Z
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "autoPlay"
    .end annotation

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mAutoPlay:Z

    .line 227
    if-eqz p1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->createIfNotExist()Lcom/taobao/weex/ui/view/WXVideoView;

    .line 229
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->start()V

    .line 231
    :cond_0
    return-void
.end method

.method public setPlaystatus(Ljava/lang/String;)V
    .locals 2
    .param p1, "playstatus"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "playStatus"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 238
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mPrepared:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mError:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mStopped:Z

    if-nez v0, :cond_3

    .line 239
    const-string/jumbo v0, "play"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->start()V

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    const-string/jumbo v0, "pause"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->pause()V

    goto :goto_0

    .line 243
    :cond_2
    const-string/jumbo v0, "stop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->stopPlayback()V

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mStopped:Z

    goto :goto_0

    .line 247
    :cond_3
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mError:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mStopped:Z

    if-eqz v0, :cond_0

    :cond_4
    const-string/jumbo v0, "play"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mError:Z

    .line 249
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->resume()V

    .line 251
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 188
    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 208
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    :cond_1
    :goto_1
    return v3

    .line 188
    :sswitch_0
    const-string/jumbo v5, "src"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "autoPlay"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v3

    goto :goto_0

    :sswitch_2
    const-string/jumbo v5, "playStatus"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    .line 190
    :pswitch_0
    invoke-static {p2, v6}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "src":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 192
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXVideo;->setSrc(Ljava/lang/String;)V

    goto :goto_1

    .line 196
    .end local v1    # "src":Ljava/lang/String;
    :pswitch_1
    invoke-static {p2, v6}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    .line 197
    .local v0, "result":Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/taobao/weex/ui/component/WXVideo;->setAutoPlay(Z)V

    goto :goto_1

    .line 202
    .end local v0    # "result":Ljava/lang/Boolean;
    :pswitch_2
    invoke-static {p2, v6}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "status":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 204
    invoke-virtual {p0, v2}, Lcom/taobao/weex/ui/component/WXVideo;->setPlaystatus(Ljava/lang/String;)V

    goto :goto_1

    .line 188
    :sswitch_data_0
    .sparse-switch
        0x1bde4 -> :sswitch_0
        0x55bf6d83 -> :sswitch_1
        0x5e571046 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 4
    .param p1, "src"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "src"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVideo;->getHostView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVideo;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    .line 219
    .local v0, "instance":Lcom/taobao/weex/WXSDKInstance;
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "video"

    invoke-virtual {v0, v2, v3}, Lcom/taobao/weex/WXSDKInstance;->rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->setVideoURI(Landroid/net/Uri;)V

    .line 220
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
