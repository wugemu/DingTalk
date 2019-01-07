.class public final Lbxt;
.super Lbyt;
.source "VideoViewCompat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;
.implements Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$b;
.implements Ljon$b;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljon;

.field private c:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

.field private d:Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;

.field private e:Landroid/view/ViewGroup;

.field private f:Landroid/widget/ImageView;

.field private g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

.field private h:Landroid/widget/ProgressBar;

.field private i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private j:Lbyv;

.field private k:Z

.field private l:Z

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/ViewGroup;

    .prologue
    .line 64
    invoke-direct {p0}, Lbyt;-><init>()V

    .line 65
    iput-object p1, p0, Lbxt;->a:Landroid/app/Activity;

    .line 66
    iput-object p2, p0, Lbxt;->e:Landroid/view/ViewGroup;

    .line 68
    const-string/jumbo v0, "LIFECYCLE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    iput-object v0, p0, Lbxt;->c:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 69
    new-instance v0, Lbxt$1;

    invoke-direct {v0, p0}, Lbxt$1;-><init>(Lbxt;)V

    iput-object v0, p0, Lbxt;->d:Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;

    .line 81
    iget-object v0, p0, Lbxt;->c:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    iget-object v1, p0, Lbxt;->d:Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->registerActivityLifecycleCallbacks(Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;)V

    .line 82
    return-void
.end method

.method static synthetic a(Lbxt;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lbxt;

    .prologue
    .line 35
    iget-object v0, p0, Lbxt;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private static a(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 388
    if-eqz p0, :cond_0

    .line 389
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 391
    :cond_0
    return-void
.end method

.method static synthetic a(Lbxt;Ljava/lang/String;IIIIILjava/lang/String;I)V
    .locals 4
    .param p0, "x0"    # Lbxt;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # Ljava/lang/String;
    .param p8, "x8"    # I

    .prologue
    .line 35
    .line 2173
    iget-object v0, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_1

    .line 2175
    iget-object v0, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c()V

    .line 2176
    iget-object v0, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, p1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 2177
    .end local p3    # "x3":I
    .end local p4    # "x4":I
    .end local p7    # "x7":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2180
    .restart local p3    # "x3":I
    .restart local p4    # "x4":I
    .restart local p7    # "x7":Ljava/lang/String;
    :cond_1
    if-eqz p6, :cond_7

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lbxt;->k:Z

    .line 2181
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2185
    iget-object v0, p0, Lbxt;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->a(Landroid/content/Context;)I

    move-result v0

    .line 2186
    if-lez p3, :cond_2

    if-le p3, v0, :cond_3

    .line 2187
    :cond_2
    const/4 p3, -0x1

    .line 2189
    .end local p3    # "x3":I
    :cond_3
    if-gtz p4, :cond_4

    .line 2190
    iget-object v0, p0, Lbxt;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->a(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 p4, v0, 0x10

    .line 2210
    .end local p4    # "x4":I
    :cond_4
    new-instance v0, Ljos;

    const-string/jumbo v1, "dingtalk_lv"

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2}, Ljos;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2211
    const-string/jumbo v1, "dingtalk_largeLive"

    iput-object v1, v0, Ljos;->q:Ljava/lang/String;

    .line 2212
    const/4 v1, 0x1

    if-ne p2, v1, :cond_8

    .line 2213
    const/4 v1, 0x2

    iput v1, v0, Ljos;->b:I

    .line 2217
    :goto_2
    const/4 v1, 0x2

    iput v1, v0, Ljos;->c:I

    .line 2218
    const/4 v1, 0x1

    iput v1, v0, Ljos;->a:I

    .line 2219
    packed-switch p8, :pswitch_data_0

    .line 2229
    const/4 v1, 0x0

    iput v1, v0, Ljos;->d:I

    .line 2194
    :goto_3
    new-instance v1, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v2, p0, Lbxt;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .line 2195
    iget-object v1, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v1, v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Ljos;)V

    .line 2196
    iget-object v0, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, p1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 2198
    iput p3, p0, Lbxt;->m:I

    .line 2199
    iput p4, p0, Lbxt;->n:I

    .line 2200
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p3, p4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2201
    iget-object v1, p0, Lbxt;->e:Landroid/view/ViewGroup;

    iget-object v2, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2237
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2240
    const-string/jumbo v0, "https:"

    invoke-virtual {p7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2241
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "https:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    .line 2243
    .end local p7    # "x7":Ljava/lang/String;
    :cond_5
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lbxt;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbxt;->f:Landroid/widget/ImageView;

    .line 2244
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2247
    iget-object v0, p0, Lbxt;->f:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2249
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 2250
    iget-object v2, p0, Lbxt;->f:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-interface {v0, v2, p7, v3}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 2252
    iget-object v0, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v2, p0, Lbxt;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2256
    :cond_6
    iget-object v0, p0, Lbxt;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2257
    sget v1, Lbtp$f;->layout_button_play:I

    iget-object v2, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2259
    sget v0, Lbtp$e;->largelive_play_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lbxt;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 2260
    sget v0, Lbtp$e;->largelive_progress:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lbxt;->h:Landroid/widget/ProgressBar;

    .line 2261
    iget-object v0, p0, Lbxt;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2263
    iget-object v0, p0, Lbxt;->h:Landroid/widget/ProgressBar;

    invoke-direct {p0, v0}, Lbxt;->b(Landroid/view/View;)V

    .line 2268
    new-instance v0, Ljon;

    iget-object v1, p0, Lbxt;->a:Landroid/app/Activity;

    iget-object v2, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-direct {v0, v1, v2}, Ljon;-><init>(Landroid/content/Context;Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)V

    iput-object v0, p0, Lbxt;->b:Ljon;

    .line 2269
    iget-object v0, p0, Lbxt;->b:Ljon;

    invoke-virtual {v0}, Ljon;->b()V

    .line 2270
    const/4 v0, 0x1

    if-ne p2, v0, :cond_9

    .line 2271
    iget-object v0, p0, Lbxt;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-direct {p0, v0}, Lbxt;->b(Landroid/view/View;)V

    .line 2272
    iget-object v0, p0, Lbxt;->b:Ljon;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljon;->a(I)V

    .line 2276
    :goto_4
    iget-object v0, p0, Lbxt;->b:Ljon;

    .line 3158
    iput-object p0, v0, Ljon;->a:Ljon$b;

    .line 2277
    iget-object v0, p0, Lbxt;->b:Ljon;

    invoke-virtual {v0}, Ljon;->d()V

    .line 3281
    iget-object v0, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    .line 3284
    iget-object v0, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 3285
    iget-object v0, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$b;)V

    .line 3286
    iget-object v0, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;)V

    .line 3287
    iget-object v0, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    goto/16 :goto_0

    .line 2180
    .restart local p3    # "x3":I
    .restart local p4    # "x4":I
    .restart local p7    # "x7":Ljava/lang/String;
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 2215
    .end local p3    # "x3":I
    .end local p4    # "x4":I
    :cond_8
    const/4 v1, 0x0

    iput v1, v0, Ljos;->b:I

    goto/16 :goto_2

    .line 2221
    :pswitch_0
    const/4 v1, 0x1

    iput v1, v0, Ljos;->d:I

    goto/16 :goto_3

    .line 2224
    :pswitch_1
    const/4 v1, 0x3

    iput v1, v0, Ljos;->d:I

    goto/16 :goto_3

    .line 2274
    .end local p7    # "x7":Ljava/lang/String;
    :cond_9
    iget-object v0, p0, Lbxt;->b:Ljon;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljon;->a(I)V

    goto :goto_4

    .line 2219
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Z)V
    .locals 3
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 431
    iget-object v1, p0, Lbxt;->a:Landroid/app/Activity;

    sget v2, Lbtp$e;->toolbar:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 432
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 433
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 435
    :cond_0
    return-void

    .line 433
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private b(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 394
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Lbxt;->f:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 396
    invoke-static {p1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Landroid/view/View;)V

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private b(Z)V
    .locals 3
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 438
    iget-object v2, p0, Lbxt;->a:Landroid/app/Activity;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;

    if-eqz v2, :cond_0

    .line 439
    iget-object v2, p0, Lbxt;->a:Landroid/app/Activity;

    check-cast v2, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->getImmersiveStatusBarPlaceholderId()I

    move-result v0

    .line 440
    .local v0, "id":I
    iget-object v2, p0, Lbxt;->a:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 441
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 442
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 445
    .end local v0    # "id":I
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    return-void

    .line 442
    .restart local v0    # "id":I
    .restart local v1    # "view":Landroid/view/View;
    :cond_1
    const/16 v2, 0x8

    goto :goto_0
.end method

.method static synthetic b(Lbxt;)Z
    .locals 1
    .param p0, "x0"    # Lbxt;

    .prologue
    .line 35
    iget-boolean v0, p0, Lbxt;->l:Z

    return v0
.end method

.method static synthetic c(Lbxt;)Ljon;
    .locals 1
    .param p0, "x0"    # Lbxt;

    .prologue
    .line 35
    iget-object v0, p0, Lbxt;->b:Ljon;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-static {v0}, Lbxt;->a(Landroid/view/View;)V

    .line 102
    iget-object v0, p0, Lbxt;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-direct {p0, v0}, Lbxt;->b(Landroid/view/View;)V

    .line 103
    iget-object v0, p0, Lbxt;->h:Landroid/widget/ProgressBar;

    invoke-static {v0}, Lbxt;->a(Landroid/view/View;)V

    .line 105
    iget-object v0, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a()V

    .line 108
    :cond_0
    return-void
.end method

.method public final a(Lbyv;)V
    .locals 0
    .param p1, "callback"    # Lbyv;

    .prologue
    .line 163
    iput-object p1, p0, Lbxt;->j:Lbyv;

    .line 164
    return-void
.end method

.method public final a(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2
    .param p1, "iMediaPlayer"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 323
    iget-object v0, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->setKeepScreenOn(Z)V

    .line 326
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;IIIIILjava/lang/String;I)Z
    .locals 11
    .param p1, "liveUrl"    # Ljava/lang/String;
    .param p2, "playerType"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "isLandscape"    # I
    .param p6, "visitAuth"    # I
    .param p7, "poster"    # Ljava/lang/String;
    .param p8, "playerContentMode"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 87
    iget-object v10, p0, Lbxt;->a:Landroid/app/Activity;

    new-instance v0, Lbxt$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lbxt$2;-><init>(Lbxt;Ljava/lang/String;IIIIILjava/lang/String;I)V

    invoke-static {v10, v0}, Lbyi;->a(Landroid/app/Activity;Lcjn$a;)V

    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public final a_(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2
    .param p1, "iMediaPlayer"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 313
    iget-object v0, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->setKeepScreenOn(Z)V

    .line 316
    :cond_0
    iget-object v0, p0, Lbxt;->f:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lbxt;->b(Landroid/view/View;)V

    .line 317
    iget-object v0, p0, Lbxt;->h:Landroid/widget/ProgressBar;

    invoke-direct {p0, v0}, Lbxt;->b(Landroid/view/View;)V

    .line 1410
    iget-object v0, p0, Lbxt;->b:Ljon;

    if-eqz v0, :cond_1

    .line 1411
    iget-object v0, p0, Lbxt;->b:Ljon;

    invoke-virtual {v0}, Ljon;->d()V

    .line 319
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b()V

    .line 115
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 119
    invoke-virtual {p0}, Lbxt;->a()V

    .line 120
    return-void
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 124
    iget-boolean v0, p0, Lbxt;->l:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lbxt;->h()Z

    .line 127
    :cond_0
    iget-object v0, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Z)V

    .line 129
    iget-object v0, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-direct {p0, v0}, Lbxt;->b(Landroid/view/View;)V

    .line 131
    :cond_1
    return-void
.end method

.method public final e()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 135
    .line 1291
    iget-object v0, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    .line 1294
    iget-object v0, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 1295
    iget-object v0, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$b;)V

    .line 1296
    iget-object v0, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;)V

    .line 1297
    iget-object v0, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbxt;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lbxt;->e:Landroid/view/ViewGroup;

    iget-object v1, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 140
    :cond_1
    iget-object v0, p0, Lbxt;->b:Ljon;

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lbxt;->b:Ljon;

    invoke-virtual {v0}, Ljon;->f()V

    .line 142
    iput-object v2, p0, Lbxt;->b:Ljon;

    .line 144
    :cond_2
    iget-object v0, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_3

    .line 145
    iget-object v0, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c()V

    .line 146
    iput-object v2, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .line 148
    :cond_3
    iget-object v0, p0, Lbxt;->c:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    iget-object v1, p0, Lbxt;->d:Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->unregisterActivityLifecycleCallbacks(Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;)V

    .line 149
    return-void
.end method

.method public final f()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 153
    iget-boolean v1, p0, Lbxt;->l:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbxt;->b:Ljon;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lbxt;->b:Ljon;

    invoke-virtual {v1, v0}, Ljon;->a(Z)V

    .line 156
    const/4 v0, 0x1

    .line 158
    :cond_0
    return v0
.end method

.method public final g()Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 339
    iget-object v3, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lbxt;->e:Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    .line 360
    :cond_0
    :goto_0
    return v6

    .line 342
    :cond_1
    iget-boolean v3, p0, Lbxt;->l:Z

    if-nez v3, :cond_0

    .line 343
    iget-object v3, p0, Lbxt;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcms;->b(Landroid/content/Context;)I

    move-result v2

    .line 344
    .local v2, "width":I
    iget-object v3, p0, Lbxt;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcms;->a(Landroid/content/Context;)I

    move-result v0

    .line 345
    .local v0, "height":I
    iget-object v3, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v3}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 346
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_2

    .line 347
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 348
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 349
    iget-object v3, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v3}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->requestLayout()V

    .line 352
    :cond_2
    invoke-direct {p0, v5}, Lbxt;->a(Z)V

    .line 353
    invoke-direct {p0, v5}, Lbxt;->b(Z)V

    .line 354
    iget-object v3, p0, Lbxt;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 355
    iget-object v3, p0, Lbxt;->a:Landroid/app/Activity;

    invoke-virtual {v3, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 357
    iput-boolean v6, p0, Lbxt;->l:Z

    goto :goto_0
.end method

.method public final h()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 365
    iget-object v1, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbxt;->e:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    .line 384
    :cond_0
    :goto_0
    return v3

    .line 368
    :cond_1
    iget-boolean v1, p0, Lbxt;->l:Z

    if-eqz v1, :cond_0

    .line 369
    iget-object v1, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 370
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_2

    .line 371
    iget v1, p0, Lbxt;->m:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 372
    iget v1, p0, Lbxt;->n:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 373
    iget-object v1, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->requestLayout()V

    .line 376
    :cond_2
    invoke-direct {p0, v3}, Lbxt;->a(Z)V

    .line 377
    invoke-direct {p0, v3}, Lbxt;->b(Z)V

    .line 378
    iget-object v1, p0, Lbxt;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 379
    iget-object v1, p0, Lbxt;->a:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 381
    const/4 v1, 0x0

    iput-boolean v1, p0, Lbxt;->l:Z

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 417
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 418
    .local v0, "id":I
    sget v1, Lbtp$e;->largelive_play_button:I

    if-ne v0, v1, :cond_0

    .line 419
    iget-boolean v1, p0, Lbxt;->k:Z

    if-eqz v1, :cond_1

    .line 420
    invoke-virtual {p0}, Lbxt;->e()V

    .line 421
    iget-object v1, p0, Lbxt;->j:Lbyv;

    if-eqz v1, :cond_0

    .line 422
    iget-object v1, p0, Lbxt;->j:Lbyv;

    invoke-virtual {v1}, Lbyv;->a()V

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    invoke-virtual {p0}, Lbxt;->a()V

    goto :goto_0
.end method

.method public final onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2
    .param p1, "iMediaPlayer"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 330
    iget-object v0, p0, Lbxt;->f:Landroid/widget/ImageView;

    invoke-static {v0}, Lbxt;->a(Landroid/view/View;)V

    .line 332
    iget-object v0, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->setKeepScreenOn(Z)V

    .line 335
    :cond_0
    return-void
.end method

.method public final onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 2
    .param p1, "iMediaPlayer"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 302
    iget-object v0, p0, Lbxt;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-static {v0}, Lbxt;->a(Landroid/view/View;)V

    .line 303
    iget-object v0, p0, Lbxt;->h:Landroid/widget/ProgressBar;

    invoke-direct {p0, v0}, Lbxt;->b(Landroid/view/View;)V

    .line 1404
    iget-object v0, p0, Lbxt;->b:Ljon;

    if-eqz v0, :cond_0

    .line 1405
    iget-object v0, p0, Lbxt;->b:Ljon;

    invoke-virtual {v0}, Ljon;->e()V

    .line 305
    :cond_0
    iget-object v0, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lbxt;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Z)V

    .line 308
    :cond_1
    return v1
.end method
