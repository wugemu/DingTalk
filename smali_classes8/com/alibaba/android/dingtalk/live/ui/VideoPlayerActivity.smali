.class public Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljju;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/ViewGroup;

.field private f:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Ljon;

.field private q:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private r:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$b;

.field private s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;

.field private t:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->h:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x2

    .line 212
    new-instance v0, Ljos;

    const-string/jumbo v3, "dingtalk_lv"

    const-string/jumbo v4, ""

    invoke-direct {v0, v3, v4}, Ljos;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .local v0, "config":Ljos;
    iput v5, v0, Ljos;->b:I

    .line 214
    iput v5, v0, Ljos;->c:I

    .line 215
    const/4 v3, 0x1

    iput v3, v0, Ljos;->a:I

    .line 216
    iput v7, v0, Ljos;->d:I

    .line 217
    const-string/jumbo v3, "dingtalk_liveReplay"

    iput-object v3, v0, Ljos;->q:Ljava/lang/String;

    .line 218
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->i:Ljava/lang/String;

    iput-object v3, v0, Ljos;->s:Ljava/lang/String;

    .line 220
    new-instance v3, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-direct {v3, p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->f:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .line 221
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->f:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v3, v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Ljos;)V

    .line 222
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->f:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v3, p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->setLogAdapter(Ljju;)V

    .line 4295
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->f:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v3, :cond_3

    .line 4298
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->q:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    if-nez v3, :cond_0

    .line 4299
    new-instance v3, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity$3;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity$3;-><init>(Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;)V

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->q:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 4312
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->f:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->q:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    invoke-virtual {v3, v4}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 4314
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->r:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$b;

    if-nez v3, :cond_1

    .line 4315
    new-instance v3, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity$4;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity$4;-><init>(Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;)V

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->r:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$b;

    .line 4323
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->f:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->r:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$b;

    invoke-virtual {v3, v4}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$b;)V

    .line 4325
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;

    if-nez v3, :cond_2

    .line 4326
    new-instance v3, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity$5;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity$5;-><init>(Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;)V

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;

    .line 4334
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->f:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;

    invoke-virtual {v3, v4}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;)V

    .line 4336
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->t:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    if-nez v3, :cond_3

    .line 4337
    new-instance v3, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity$6;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity$6;-><init>(Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;)V

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->t:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 4344
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->f:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->t:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    invoke-virtual {v3, v4}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 225
    :cond_3
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 227
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->e:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->f:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v3, v4, v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 229
    new-instance v3, Ljon;

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->f:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-direct {v3, p0, v4}, Ljon;-><init>(Landroid/content/Context;Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)V

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->p:Ljon;

    .line 230
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->p:Ljon;

    invoke-virtual {v3}, Ljon;->b()V

    .line 231
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->p:Ljon;

    invoke-virtual {v3, v5}, Ljon;->a(I)V

    .line 233
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->f:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    sget v4, Lbtp$e;->video_controller_layout:I

    invoke-virtual {v3, v4}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->d:Landroid/view/View;

    .line 235
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->h:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 236
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->j:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->k:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/taobao/taolive/sdk/utils/DingTalkUtils;->getAuthUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->f:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v3, v2}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 238
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->f:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v3}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a()V

    .line 240
    .end local v2    # "url":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;

    .prologue
    .line 41
    .line 7166
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7167
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->a()V

    .line 7173
    :goto_0
    return-void

    .line 7170
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->o:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->j:Ljava/lang/String;

    .line 7171
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7172
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->a()V

    goto :goto_0

    .line 7176
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->showLoadingDialog()V

    .line 7177
    new-instance v0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity$2;-><init>(Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;)V

    .line 7207
    const-class v1, Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/Callback;

    .line 7208
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v1

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->k:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->i:Ljava/lang/String;

    .line 7236
    new-instance v0, Lbxe$5;

    const/4 v3, 0x0

    iget-object v4, v1, Lbxe;->a:Ljava/util/concurrent/Executor;

    invoke-direct/range {v0 .. v6}, Lbxe$5;-><init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;)V

    .line 7242
    invoke-virtual {v0}, Lbxe$5;->start()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->a()V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;)Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->f:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;

    .prologue
    .line 41
    .line 7349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->n:Z

    .line 7350
    new-instance v0, Lbvy;

    invoke-direct {v0}, Lbvy;-><init>()V

    .line 7351
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->k:Ljava/lang/String;

    iput-object v1, v0, Lbvy;->a:Ljava/lang/String;

    .line 7352
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->i:Ljava/lang/String;

    iput-object v1, v0, Lbvy;->b:Ljava/lang/String;

    .line 7353
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lbvy;->c:Ljava/lang/Integer;

    .line 7355
    invoke-static {}, Ligb;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->l:Ljava/lang/String;

    .line 7356
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->l:Ljava/lang/String;

    iput-object v1, v0, Lbvy;->d:Ljava/lang/String;

    .line 7357
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lbxe;->a(Lbvy;Lcom/alibaba/wukong/Callback;)V

    .line 41
    return-void
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;

    .prologue
    .line 41
    .line 7361
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->n:Z

    if-eqz v0, :cond_0

    .line 7362
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->n:Z

    .line 7363
    new-instance v0, Lbun;

    invoke-direct {v0}, Lbun;-><init>()V

    .line 7364
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->k:Ljava/lang/String;

    iput-object v1, v0, Lbun;->a:Ljava/lang/String;

    .line 7365
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->i:Ljava/lang/String;

    iput-object v1, v0, Lbun;->b:Ljava/lang/String;

    .line 7366
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lbun;->c:Ljava/lang/Integer;

    .line 7367
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->l:Ljava/lang/String;

    iput-object v1, v0, Lbun;->d:Ljava/lang/String;

    .line 7368
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lbxe;->a(Lbun;Lcom/alibaba/wukong/Callback;)V

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 416
    const-string/jumbo v0, "live"

    invoke-static {v0, p1, p2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method public isFixedOrientation()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const-wide/16 v4, 0x12c

    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 245
    .local v0, "id":I
    sget v1, Lbtp$e;->iv_back:I

    if-ne v0, v1, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->finish()V

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    sget v1, Lbtp$e;->root:I

    if-ne v0, v1, :cond_3

    .line 248
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    .line 5278
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 5279
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 5280
    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 5281
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 5282
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 5283
    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 5284
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 5285
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 5286
    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 5287
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->d:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 5288
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 5289
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 5290
    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 6261
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 6262
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 6263
    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 6264
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 6265
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 6266
    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 6267
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 6268
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 6269
    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 6270
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->d:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 6271
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->d:Landroid/view/View;

    .line 6272
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 6273
    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    .line 253
    :cond_3
    sget v1, Lbtp$e;->tv_play:I

    if-ne v0, v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->f:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->f:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    sget v0, Lbtp$f;->live_video_player_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->setContentView(I)V

    .line 1117
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_extra_play_url"

    invoke-static {v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->h:Ljava/lang/String;

    .line 1118
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_extra_live_uuid"

    invoke-static {v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->i:Ljava/lang/String;

    .line 1119
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_extra_live_key"

    invoke-static {v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->j:Ljava/lang/String;

    .line 1120
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "cid"

    invoke-static {v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->k:Ljava/lang/String;

    .line 1121
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-static {v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->g:Ljava/lang/String;

    .line 1122
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_live_record_check"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->o:Z

    .line 2096
    sget v0, Lbtp$e;->tv_play:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->a:Landroid/view/View;

    .line 2097
    sget v0, Lbtp$e;->view_layer:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->b:Landroid/view/View;

    .line 2098
    sget v0, Lbtp$e;->layout_header:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->c:Landroid/view/View;

    .line 2099
    sget v0, Lbtp$e;->root:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->e:Landroid/view/ViewGroup;

    .line 2100
    sget v0, Lbtp$e;->iv_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2101
    sget v1, Lbtp$e;->tv_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2102
    invoke-static {p0, v0}, Lbyh;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Landroid/widget/ImageView;)V

    .line 2103
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->c:Landroid/view/View;

    invoke-static {p0, v0}, Lbyf;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Landroid/view/View;)V

    .line 2105
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2111
    sget v0, Lbtp$e;->root:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2112
    sget v0, Lbtp$e;->iv_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2113
    sget v0, Lbtp$e;->tv_play:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    new-instance v0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity$1;-><init>(Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;)V

    invoke-static {p0, v0}, Lbyi;->a(Landroid/app/Activity;Lcjn$a;)V

    .line 88
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 152
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 3373
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->f:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_3

    .line 3376
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->q:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    .line 3377
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->f:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->q:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 3378
    iput-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->q:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 3380
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->r:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$b;

    if-eqz v0, :cond_1

    .line 3381
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->f:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->r:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$b;

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$b;)V

    .line 3382
    iput-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->r:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$b;

    .line 3384
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;

    if-eqz v0, :cond_2

    .line 3385
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->f:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;)V

    .line 3386
    iput-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;

    .line 3388
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->t:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_3

    .line 3389
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->f:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->t:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 3390
    iput-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->t:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->p:Ljon;

    if-eqz v0, :cond_4

    .line 155
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->p:Ljon;

    invoke-virtual {v0}, Ljon;->f()V

    .line 156
    iput-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->p:Ljon;

    .line 158
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->f:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_5

    .line 159
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->f:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c()V

    .line 160
    iput-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->f:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .line 162
    :cond_5
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onPause()V

    .line 3138
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->f:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    .line 3139
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->f:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->m:Z

    .line 3140
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->f:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b()V

    .line 135
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 2145
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->f:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->m:Z

    if-eqz v0, :cond_0

    .line 2146
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->f:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a()V

    .line 129
    :cond_0
    return-void
.end method
