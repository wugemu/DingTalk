.class public Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "LargeLiveActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lbxr;
.implements Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;
.implements Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$b;
.implements Ljju;
.implements Ljon$b;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;


# instance fields
.field a:Landroid/view/ViewGroup;

.field b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

.field c:Ljon;

.field d:Landroid/widget/RelativeLayout$LayoutParams;

.field e:Landroid/widget/ImageView;

.field f:Landroid/widget/ProgressBar;

.field g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field h:Z

.field private i:Lcom/alibaba/android/dingtalk/live/ui/largelive/DWPenetrateFrameLayout;

.field private j:Lgwk;

.field private k:Landroid/view/ViewGroup;

.field private l:Lhdf;

.field private m:Lcom/uc/webview/export/WebView;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Z

.field private q:J

.field private r:J

.field private s:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->q:J

    return-wide v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;
    .param p1, "x1"    # J

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->q:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;Lcom/uc/webview/export/WebView;)Lcom/uc/webview/export/WebView;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;
    .param p1, "x1"    # Lcom/uc/webview/export/WebView;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->m:Lcom/uc/webview/export/WebView;

    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 7
    .param p1, "script"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 650
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->m:Lcom/uc/webview/export/WebView;

    if-nez v1, :cond_0

    .line 669
    :goto_0
    return-void

    .line 654
    :cond_0
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "javascript:"

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 656
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 658
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->m:Lcom/uc/webview/export/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/uc/webview/export/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 660
    :catch_0
    move-exception v1

    :try_start_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->m:Lcom/uc/webview/export/WebView;

    invoke-virtual {v1, p1}, Lcom/uc/webview/export/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 665
    :catch_1
    move-exception v0

    .line 666
    .local v0, "e":Ljava/lang/Throwable;
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "evaluateJavascript failed, error="

    aput-object v2, v1, v3

    .line 667
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 666
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11013
    const-string/jumbo v2, "live"

    invoke-static {v2, v6, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 663
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->m:Lcom/uc/webview/export/WebView;

    invoke-virtual {v1, p1}, Lcom/uc/webview/export/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;
    .param p1, "x1"    # J

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->r:J

    return-wide p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;)Lcom/uc/webview/export/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->m:Lcom/uc/webview/export/WebView;

    return-object v0
.end method

.method private static b(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 548
    if-eqz p0, :cond_0

    .line 549
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 551
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->r:J

    return-wide v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;

    .prologue
    .line 54
    .line 11641
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->m:Lcom/uc/webview/export/WebView;

    if-eqz v0, :cond_0

    .line 11642
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->m:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 11643
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11644
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b(Landroid/view/View;)V

    .line 409
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->a(Landroid/view/View;)V

    .line 410
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->f:Landroid/widget/ProgressBar;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b(Landroid/view/View;)V

    .line 412
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a()V

    .line 415
    :cond_0
    return-void
.end method

.method a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 554
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->e:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 556
    invoke-static {p1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Landroid/view/View;)V

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;IIIIILjava/lang/String;ILcom/alibaba/wukong/Callback;)V
    .locals 11
    .param p1, "liveUrl"    # Ljava/lang/String;
    .param p2, "playerType"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "isLandscape"    # I
    .param p6, "visitAuth"    # I
    .param p7, "poster"    # Ljava/lang/String;
    .param p8, "playerContentMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIII",
            "Ljava/lang/String;",
            "I",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 292
    .local p9, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    new-instance v0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$2;-><init>(Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;Ljava/lang/String;IIIIILjava/lang/String;ILcom/alibaba/wukong/Callback;)V

    invoke-static {p0, v0}, Lbyi;->a(Landroid/app/Activity;Lcjn$a;)V

    .line 301
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 706
    const-string/jumbo v0, "live"

    invoke-static {v0, p1, p2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    return-void
.end method

.method public final a(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2
    .param p1, "iMediaPlayer"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 529
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->setKeepScreenOn(Z)V

    .line 532
    :cond_0
    const-string/jumbo v0, "livePlayerEventPause"

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->a(Ljava/lang/String;)V

    .line 533
    return-void
.end method

.method public final a_(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2
    .param p1, "iMediaPlayer"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 537
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->setKeepScreenOn(Z)V

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->a(Landroid/view/View;)V

    .line 541
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->f:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->a(Landroid/view/View;)V

    .line 7568
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->c:Ljon;

    if-eqz v0, :cond_1

    .line 7569
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->c:Ljon;

    invoke-virtual {v0}, Ljon;->d()V

    .line 544
    :cond_1
    const-string/jumbo v0, "livePlayerEventPlay"

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->a(Ljava/lang/String;)V

    .line 545
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b()V

    .line 422
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 432
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->p:Z

    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->h()Z

    .line 5425
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_1

    .line 5426
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c()V

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->a(Landroid/view/View;)V

    .line 437
    return-void
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->a()V

    .line 442
    return-void
.end method

.method public final e()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 447
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6269
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_1

    .line 6272
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 6273
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$b;)V

    .line 6274
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;)V

    .line 6275
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->c:Ljon;

    if-eqz v0, :cond_2

    .line 453
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->c:Ljon;

    invoke-virtual {v0}, Ljon;->f()V

    .line 454
    iput-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->c:Ljon;

    .line 456
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_3

    .line 457
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c()V

    .line 458
    iput-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .line 460
    :cond_3
    return-void
.end method

.method public final f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 464
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->i:Lcom/alibaba/android/dingtalk/live/ui/largelive/DWPenetrateFrameLayout;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->i:Lcom/alibaba/android/dingtalk/live/ui/largelive/DWPenetrateFrameLayout;

    .line 7086
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/live/ui/largelive/DWPenetrateFrameLayout;->a:Z

    .line 467
    :cond_0
    return-void
.end method

.method public final g()Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 471
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->a:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->k:Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    .line 492
    :cond_0
    :goto_0
    return v6

    .line 474
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v3}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->a:Landroid/view/ViewGroup;

    if-ne v3, v4, :cond_0

    .line 475
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->a:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 477
    invoke-static {p0}, Lcms;->b(Landroid/content/Context;)I

    move-result v2

    .line 478
    .local v2, "width":I
    invoke-static {p0}, Lcms;->a(Landroid/content/Context;)I

    move-result v0

    .line 479
    .local v0, "height":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 481
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->k:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v3, v4, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 483
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->hideToolbar()V

    .line 484
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->getImmersiveStatusBarPlaceholderColor()I

    move-result v3

    iput v3, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->s:I

    .line 485
    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->setImmersiveStatusBarBackgroundColor(I)V

    .line 486
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 487
    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->setRequestedOrientation(I)V

    .line 489
    iput-boolean v6, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->p:Z

    goto :goto_0
.end method

.method public final h()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 497
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->k:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 513
    :cond_0
    :goto_0
    return v3

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->k:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_0

    .line 501
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->k:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 503
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->d:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 505
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 506
    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->setRequestedOrientation(I)V

    .line 507
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->showToolbar()V

    .line 508
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->s:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->setImmersiveStatusBarBackgroundColor(I)V

    .line 510
    iput-boolean v4, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->p:Z

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 518
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->c:Ljon;

    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->h()Z

    .line 520
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->c:Ljon;

    .line 7227
    const/4 v1, 0x0

    iput-boolean v1, v0, Ljon;->b:Z

    .line 521
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->c:Ljon;

    invoke-virtual {v0}, Ljon;->c()V

    .line 525
    :goto_0
    return-void

    .line 523
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 673
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 674
    .local v0, "id":I
    sget v1, Lbtp$e;->largelive_play_button:I

    if-ne v0, v1, :cond_0

    .line 675
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->h:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->m:Lcom/uc/webview/export/WebView;

    if-eqz v1, :cond_1

    .line 676
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->e()V

    .line 677
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->m:Lcom/uc/webview/export/WebView;

    invoke-virtual {v1}, Lcom/uc/webview/export/WebView;->reload()V

    .line 682
    :cond_0
    :goto_0
    return-void

    .line 679
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->a()V

    goto :goto_0
.end method

.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2
    .param p1, "iMediaPlayer"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 589
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->e:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b(Landroid/view/View;)V

    .line 591
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->setKeepScreenOn(Z)V

    .line 594
    :cond_0
    const-string/jumbo v0, "livePlayerEventEnded"

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->a(Ljava/lang/String;)V

    .line 595
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 93
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->k:Landroid/view/ViewGroup;

    .line 97
    sget v0, Lbtp$f;->activity_live_large:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->setContentView(I)V

    .line 99
    invoke-static {}, Lbyd;->a()V

    .line 100
    invoke-static {}, Lbxs;->a()Lbxs;

    move-result-object v0

    .line 1030
    iput-object p0, v0, Lbxs;->a:Lbxr;

    .line 1105
    sget v0, Lbtp$e;->root:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->a:Landroid/view/ViewGroup;

    .line 1111
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1112
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1113
    :cond_0
    const-string/jumbo v0, "Finish when get intent data is empty"

    .line 2013
    const-string/jumbo v1, "live"

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->finish()V

    .line 1124
    :goto_0
    return-void

    .line 1118
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->n:Ljava/lang/String;

    .line 1120
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->createRuntimeEntry(Landroid/content/Context;)Lhdf;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->l:Lhdf;

    .line 1121
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->l:Lhdf;

    if-nez v0, :cond_2

    .line 1122
    const-string/jumbo v0, "Finish when get runtime entry is null"

    .line 3013
    const-string/jumbo v1, "live"

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->finish()V

    goto :goto_0

    .line 1127
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->l:Lhdf;

    new-instance v1, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$1;-><init>(Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;)V

    invoke-interface {v0, v1}, Lhdf;->setClient(Lhdf$a;)V

    .line 1188
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->l:Lhdf;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->n:Ljava/lang/String;

    invoke-interface {v0, v1}, Lhdf;->loadUrl(Ljava/lang/String;)V

    .line 1189
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->l:Lhdf;

    invoke-interface {v0}, Lhdf;->handleCreate()V

    .line 1191
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1193
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->l:Lhdf;

    invoke-interface {v1}, Lhdf;->getView()Landroid/view/View;

    move-result-object v1

    .line 1194
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1195
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1197
    new-instance v2, Lcom/alibaba/android/dingtalk/live/ui/largelive/DWPenetrateFrameLayout;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/DWPenetrateFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->i:Lcom/alibaba/android/dingtalk/live/ui/largelive/DWPenetrateFrameLayout;

    .line 1198
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1200
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->i:Lcom/alibaba/android/dingtalk/live/ui/largelive/DWPenetrateFrameLayout;

    invoke-virtual {v3, v1, v2}, Lcom/alibaba/android/dingtalk/live/ui/largelive/DWPenetrateFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1202
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->a:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->i:Lcom/alibaba/android/dingtalk/live/ui/largelive/DWPenetrateFrameLayout;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 599
    sget v5, Lbtp$g;->icon_more:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 600
    .local v2, "iconStr":Ljava/lang/String;
    const/high16 v5, 0x41c00000    # 24.0f

    invoke-static {p0, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    .line 601
    .local v4, "size":I
    sget v5, Lbtp$b;->ui_common_theme_text_color:I

    invoke-static {p0, v5}, Ldp;->c(Landroid/content/Context;I)I

    move-result v0

    .line 602
    .local v0, "color":I
    new-instance v1, Lecw;

    invoke-direct {v1, v2, v0}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 9079
    .local v1, "icon":Lecw;
    iput v4, v1, Lecw;->b:I

    .line 10070
    iput v4, v1, Lecw;->a:I

    .line 606
    const/4 v5, 0x0

    sget v6, Lbtp$g;->more:I

    invoke-interface {p1, v5, v7, v7, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 607
    .local v3, "item":Landroid/view/MenuItem;
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 608
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 609
    return v7
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 254
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 256
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->m:Lcom/uc/webview/export/WebView;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->m:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebView;->setWebChromeClient(Lcom/uc/webview/export/WebChromeClient;)V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->l:Lhdf;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->l:Lhdf;

    invoke-interface {v0, v1}, Lhdf;->setClient(Lhdf$a;)V

    .line 261
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->l:Lhdf;

    invoke-interface {v0}, Lhdf;->handleDestroy()V

    .line 263
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->e()V

    .line 265
    invoke-static {}, Lbxs;->a()Lbxs;

    move-result-object v0

    .line 5034
    iput-object v1, v0, Lbxs;->a:Lbxr;

    .line 266
    return-void
.end method

.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 6
    .param p1, "iMediaPlayer"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 575
    const-string/jumbo v0, "live"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "Play error, i="

    aput-object v3, v2, v5

    const/4 v3, 0x1

    .line 576
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "i1="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 575
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b(Landroid/view/View;)V

    .line 578
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->f:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->a(Landroid/view/View;)V

    .line 8563
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->c:Ljon;

    if-eqz v0, :cond_0

    .line 8564
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->c:Ljon;

    invoke-virtual {v0}, Ljon;->e()V

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_1

    .line 581
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c()V

    .line 583
    :cond_1
    const-string/jumbo v0, "livePlayerEventError"

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->a(Ljava/lang/String;)V

    .line 584
    return v5
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 614
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 623
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 616
    :sswitch_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->finish()V

    goto :goto_0

    .line 10627
    :sswitch_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->j:Lgwk;

    if-nez v0, :cond_0

    .line 10628
    invoke-static {}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->m:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p0, v2}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newShareManager(Landroid/app/Activity;Lcom/uc/webview/export/WebView;)Lgwk;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->j:Lgwk;

    .line 10631
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->m:Lcom/uc/webview/export/WebView;

    if-eqz v0, :cond_2

    .line 10632
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->m:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 10634
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10635
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->n:Ljava/lang/String;

    .line 10637
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->j:Lgwk;

    invoke-interface {v2, v0, v1}, Lgwk;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    .line 614
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 232
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onPause()V

    .line 4240
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    .line 4241
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->o:Z

    .line 4242
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b()V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->l:Lhdf;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->l:Lhdf;

    invoke-interface {v0}, Lhdf;->handlePause()V

    .line 237
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 207
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 3247
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->o:Z

    if-eqz v0, :cond_0

    .line 3248
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a()V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->l:Lhdf;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->l:Lhdf;

    invoke-interface {v0}, Lhdf;->handleResume()V

    .line 212
    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 216
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onStart()V

    .line 217
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->l:Lhdf;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->l:Lhdf;

    invoke-interface {v0}, Lhdf;->handleStart()V

    .line 220
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 224
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onStop()V

    .line 225
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->l:Lhdf;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->l:Lhdf;

    invoke-interface {v0}, Lhdf;->handleStop()V

    .line 228
    :cond_0
    return-void
.end method
