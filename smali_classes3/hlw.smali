.class public Lhlw;
.super Lcom/alipay/mobile/nebula/view/H5BaseEmbedView;
.source "MiniEmbedVideoView.java"


# instance fields
.field private a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

.field private b:Ljon;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:I

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 80
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/view/H5BaseEmbedView;-><init>()V

    .line 69
    iput-boolean v3, p0, Lhlw;->e:Z

    .line 73
    iput v3, p0, Lhlw;->g:I

    .line 81
    const-string/jumbo v0, "hybrid_video_check_dynamic_so"

    invoke-static {v0, v1}, Lhdo;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1482
    const-string/jumbo v0, "MiniEmbedVideoView"

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "checkFfmpeg"

    aput-object v2, v1, v3

    .line 2098
    const-string/jumbo v2, "mini_api"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1483
    invoke-static {}, Lcjn;->a()Lcjn;

    move-result-object v0

    const-string/jumbo v1, "tbffmpeg"

    new-instance v2, Lhlw$2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lhlw$2;-><init>(Lhlw;Lcma;)V

    invoke-virtual {v0, v1, v2}, Lcjn;->a(Ljava/lang/String;Lcjn$a;)V

    .line 84
    :cond_0
    return-void
.end method

.method static synthetic a(Lhlw;)Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;
    .locals 1
    .param p0, "x0"    # Lhlw;

    .prologue
    .line 35
    iget-object v0, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a()V

    .line 392
    :cond_0
    return-void
.end method

.method static synthetic a(Lhlw;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 2
    .param p0, "x0"    # Lhlw;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 35
    .line 5470
    if-nez p2, :cond_0

    .line 5471
    new-instance p2, Lcom/alibaba/fastjson/JSONObject;

    .end local p2    # "x2":Lcom/alibaba/fastjson/JSONObject;
    invoke-direct {p2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 5474
    :cond_0
    const-string/jumbo v0, "element"

    iget-object v1, p0, Lhlw;->i:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5476
    iget-object v0, p0, Lhlw;->mH5Page:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhlw;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhlw;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liop;

    invoke-interface {v0}, Liop;->getBridge()Linx;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5477
    iget-object v0, p0, Lhlw;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liop;

    invoke-interface {v0}, Liop;->getBridge()Linx;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Linx;->sendDataWarpToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 35
    :cond_1
    return-void
.end method

.method private a(Z)V
    .locals 3
    .param p1, "controls"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 319
    iput-boolean p1, p0, Lhlw;->f:Z

    .line 320
    if-eqz p1, :cond_2

    .line 321
    iget-object v0, p0, Lhlw;->b:Ljon;

    if-nez v0, :cond_0

    .line 322
    new-instance v1, Ljon;

    iget-object v0, p0, Lhlw;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-direct {v1, v0, v2}, Ljon;-><init>(Landroid/content/Context;Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)V

    iput-object v1, p0, Lhlw;->b:Ljon;

    .line 323
    iget-object v0, p0, Lhlw;->b:Ljon;

    invoke-virtual {v0}, Ljon;->b()V

    .line 324
    iget-object v0, p0, Lhlw;->b:Ljon;

    new-instance v1, Lhlw$10;

    invoke-direct {v1, p0}, Lhlw$10;-><init>(Lhlw;)V

    .line 4162
    iput-object v1, v0, Ljon;->c:Ljon$a;

    .line 334
    iget-object v0, p0, Lhlw;->b:Ljon;

    new-instance v1, Lhlw$11;

    invoke-direct {v1, p0}, Lhlw$11;-><init>(Lhlw;)V

    .line 5158
    iput-object v1, v0, Ljon;->a:Ljon$b;

    .line 381
    :cond_0
    iget-object v0, p0, Lhlw;->b:Ljon;

    invoke-virtual {v0}, Ljon;->d()V

    .line 382
    iget-object v0, p0, Lhlw;->b:Ljon;

    invoke-virtual {v0}, Ljon;->c()V

    .line 386
    :cond_1
    :goto_0
    return-void

    .line 383
    :cond_2
    iget-object v0, p0, Lhlw;->b:Ljon;

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lhlw;->b:Ljon;

    invoke-virtual {v0}, Ljon;->e()V

    goto :goto_0
.end method

.method static synthetic a(Lhlw;Z)Z
    .locals 0
    .param p0, "x0"    # Lhlw;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lhlw;->e:Z

    return p1
.end method

.method private b()V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c()V

    .line 404
    :cond_0
    return-void
.end method

.method private b(Z)V
    .locals 2
    .param p1, "fullScreen"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 419
    iget-object v0, p0, Lhlw;->b:Ljon;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lhlw;->e:Z

    if-eq v0, p1, :cond_0

    .line 420
    iget-object v0, p0, Lhlw;->b:Ljon;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljon;->a(Z)V

    .line 422
    :cond_0
    return-void
.end method

.method static synthetic b(Lhlw;)Z
    .locals 3
    .param p0, "x0"    # Lhlw;

    .prologue
    .line 35
    .line 5553
    iget-object v0, p0, Lhlw;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 5556
    iget-object v0, p0, Lhlw;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 5557
    const/4 v1, 0x0

    .line 5558
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 5559
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 5561
    :goto_0
    if-eqz v0, :cond_0

    .line 5564
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 5565
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 5566
    invoke-virtual {v0, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 5567
    mul-int/lit8 v0, v1, 0x2

    div-int/lit8 v0, v0, 0x3

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 35
    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lhlw;Z)Z
    .locals 0
    .param p0, "x0"    # Lhlw;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lhlw;->j:Z

    return p1
.end method

.method static synthetic c(Lhlw;Z)V
    .locals 1
    .param p0, "x0"    # Lhlw;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lhlw;->b(Z)V

    return-void
.end method

.method static synthetic c(Lhlw;)Z
    .locals 1
    .param p0, "x0"    # Lhlw;

    .prologue
    .line 35
    iget-boolean v0, p0, Lhlw;->j:Z

    return v0
.end method

.method static synthetic d(Lhlw;)V
    .locals 3
    .param p0, "x0"    # Lhlw;

    .prologue
    .line 35
    .line 6522
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    .line 6524
    const/4 v1, 0x0

    .line 6525
    iget-object v0, p0, Lhlw;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 6528
    iget-object v0, p0, Lhlw;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 6529
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 6530
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 6532
    :goto_0
    if-eqz v0, :cond_0

    .line 6537
    new-instance v1, Lhlw$3;

    invoke-direct {v1, p0, v0}, Lhlw$3;-><init>(Lhlw;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 35
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getSnapshot(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "i"    # I
    .param p2, "i1"    # I
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "s1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 235
    .local p5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpecialRestoreView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/view/View;
    .locals 1
    .param p1, "i"    # I
    .param p2, "i1"    # I
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "s1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 230
    .local p5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/view/View;
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 88
    iget-object v0, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-nez v0, :cond_4

    .line 89
    iget-object v0, p0, Lhlw;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhlw;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 90
    :cond_0
    const/4 v0, 0x0

    .line 100
    :goto_0
    return-object v0

    .line 93
    :cond_1
    if-eqz p5, :cond_2

    .line 94
    const-string/jumbo v0, "id"

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lhlw;->i:Ljava/lang/String;

    .line 2243
    :cond_2
    const-string/jumbo v3, ""

    .line 2245
    iput-boolean v1, p0, Lhlw;->c:Z

    .line 2246
    if-eqz p5, :cond_3

    const-string/jumbo v0, "live"

    invoke-interface {p5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2247
    const-string/jumbo v0, "live"

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lhlw;->c:Z

    .line 2250
    :cond_3
    new-instance v4, Ljos;

    const-string/jumbo v0, "DingtalkEAppVideo"

    invoke-direct {v4, v0}, Ljos;-><init>(Ljava/lang/String;)V

    .line 2251
    iput-object v3, v4, Ljos;->s:Ljava/lang/String;

    .line 2252
    iput v2, v4, Ljos;->c:I

    .line 2253
    iget-boolean v0, p0, Lhlw;->c:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    iput v0, v4, Ljos;->b:I

    .line 2255
    new-instance v1, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v0, p0, Lhlw;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .line 2257
    iget-object v0, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, v4}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Ljos;)V

    .line 2259
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lhlw;->a(Z)V

    .line 2261
    iget-object v0, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    new-instance v1, Lhlw$1;

    invoke-direct {v1, p0}, Lhlw$1;-><init>(Lhlw;)V

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->setSurfaceListener(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$c;)V

    .line 2269
    iget-object v0, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    new-instance v1, Lhlw$4;

    invoke-direct {v1, p0}, Lhlw$4;-><init>(Lhlw;)V

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 2275
    iget-object v0, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    new-instance v1, Lhlw$5;

    invoke-direct {v1, p0}, Lhlw$5;-><init>(Lhlw;)V

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 2285
    iget-object v0, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    new-instance v1, Lhlw$6;

    invoke-direct {v1, p0}, Lhlw$6;-><init>(Lhlw;)V

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$b;)V

    .line 2291
    iget-object v0, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    new-instance v1, Lhlw$7;

    invoke-direct {v1, p0}, Lhlw$7;-><init>(Lhlw;)V

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;)V

    .line 2297
    iget-object v0, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    new-instance v1, Lhlw$8;

    invoke-direct {v1, p0}, Lhlw$8;-><init>(Lhlw;)V

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 2311
    iget-object v0, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    new-instance v1, Lhlw$9;

    invoke-direct {v1, p0}, Lhlw$9;-><init>(Lhlw;)V

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 100
    :cond_4
    iget-object v0, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 2253
    goto :goto_1
.end method

.method public onEmbedViewAttachedToWebView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 105
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    .line 106
    iget-boolean v0, p0, Lhlw;->f:Z

    invoke-direct {p0, v0}, Lhlw;->a(Z)V

    .line 107
    iget v0, p0, Lhlw;->g:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 108
    iget-object v0, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a()V

    .line 111
    :cond_0
    return-void
.end method

.method public onEmbedViewDestory(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public onEmbedViewDetachedFromWebView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 117
    iget-boolean v0, p0, Lhlw;->e:Z

    if-eqz v0, :cond_2

    .line 118
    invoke-direct {p0, v1}, Lhlw;->b(Z)V

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhlw;->h:Z

    .line 124
    :goto_0
    iget-object v0, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getCurrentState()I

    move-result v0

    iput v0, p0, Lhlw;->g:I

    .line 129
    iget-object v0, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b()V

    .line 132
    :cond_0
    iget-object v0, p0, Lhlw;->b:Ljon;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lhlw;->b:Ljon;

    invoke-virtual {v0}, Ljon;->f()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lhlw;->b:Ljon;

    .line 139
    :cond_1
    return-void

    .line 121
    :cond_2
    iput-boolean v1, p0, Lhlw;->h:Z

    goto :goto_0
.end method

.method public onEmbedViewParamChanged(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .param p6, "name"    # [Ljava/lang/String;
    .param p7, "value"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 147
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public onEmbedViewVisibilityChanged(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .param p6, "reason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public onReceivedMessage(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Liny;)V
    .locals 3
    .param p1, "actionType"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 180
    const-string/jumbo v1, "play"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    invoke-direct {p0}, Lhlw;->a()V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    const-string/jumbo v1, "pause"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2395
    iget-object v1, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v1, :cond_0

    .line 2396
    iget-object v1, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b()V

    goto :goto_0

    .line 184
    :cond_2
    const-string/jumbo v1, "seek"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 186
    :try_start_0
    const-string/jumbo v1, "position"

    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2407
    iget-object v2, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v2, :cond_0

    .line 2408
    iget-object v2, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v2, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 191
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const-string/jumbo v1, "stop"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 192
    invoke-direct {p0}, Lhlw;->b()V

    goto :goto_0

    .line 193
    :cond_4
    const-string/jumbo v1, "playbackRate"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 195
    :try_start_1
    const-string/jumbo v1, "rate"

    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/JSONObject;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 196
    :catch_1
    move-exception v0

    .line 197
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 200
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    const-string/jumbo v1, "requestFullScreen"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 201
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lhlw;->b(Z)V

    goto :goto_0

    .line 202
    :cond_6
    const-string/jumbo v1, "exitFullScreen"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lhlw;->b(Z)V

    goto/16 :goto_0
.end method

.method public onReceivedRender(Lcom/alibaba/fastjson/JSONObject;Liny;)V
    .locals 4
    .param p1, "data"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "h5BridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 211
    :try_start_0
    invoke-direct {p0}, Lhlw;->b()V

    .line 212
    const-string/jumbo v1, "src"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2425
    iget-object v2, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v2, :cond_0

    .line 2426
    iget-object v2, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v2, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 213
    :cond_0
    const-string/jumbo v1, "autoplay"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2431
    iput-boolean v1, p0, Lhlw;->d:Z

    .line 214
    const-string/jumbo v1, "controls"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lhlw;->a(Z)V

    .line 215
    const-string/jumbo v1, "loop"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2441
    iget-object v2, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v2, :cond_1

    .line 2442
    iget-boolean v2, p0, Lhlw;->c:Z

    if-nez v2, :cond_1

    .line 2443
    iget-object v2, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v2, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->setLooping(Z)V

    .line 216
    :cond_1
    const-string/jumbo v1, "muted"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 3435
    iget-object v2, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v2, :cond_2

    .line 3436
    iget-object v2, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v2, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->setMuted(Z)V

    .line 217
    :cond_2
    const-string/jumbo v1, "objectFit"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3449
    iget-object v2, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v2, :cond_3

    .line 3450
    iget-object v2, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v2}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getRenderView()Ljoq;

    move-result-object v2

    .line 3451
    if-eqz v2, :cond_3

    .line 3452
    const-string/jumbo v3, "contain"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3453
    const/4 v1, 0x2

    invoke-interface {v2, v1}, Ljoq;->setAspectRatio(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :cond_3
    :goto_0
    iget-object v1, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->d()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lhlw;->d:Z

    if-eqz v1, :cond_4

    .line 224
    invoke-direct {p0}, Lhlw;->a()V

    .line 226
    :cond_4
    return-void

    .line 3454
    :cond_5
    :try_start_1
    const-string/jumbo v3, "cover"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3455
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljoq;->setAspectRatio(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3456
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_2
    const-string/jumbo v3, "fill"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3457
    const/4 v1, 0x1

    invoke-interface {v2, v1}, Ljoq;->setAspectRatio(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public onWebViewDestory()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c()V

    .line 176
    :cond_0
    return-void
.end method

.method public onWebViewPause()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b()V

    .line 169
    :cond_0
    return-void
.end method

.method public onWebViewResume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 156
    iget-object v1, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lhlw;->h:Z

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 158
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 159
    iget-object v1, p0, Lhlw;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 162
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public triggerPreSnapshot()V
    .locals 0

    .prologue
    .line 240
    return-void
.end method
