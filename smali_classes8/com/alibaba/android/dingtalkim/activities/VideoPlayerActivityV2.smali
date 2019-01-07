.class public Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "VideoPlayerActivityV2.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/ImageView;

.field private d:Ljava/lang/String;

.field private e:Lebs;

.field private f:Lecb$c;

.field private g:Z

.field private h:Z

.field private i:Lecb$b;

.field private j:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 246
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$7;-><init>(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->i:Lecb$b;

    .line 259
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$8;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$8;-><init>(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->j:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 55
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->h:Z

    .line 56
    sget v0, Lctk$g;->activity_video_player_v2:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->setContentView(I)V

    .line 1062
    sget v0, Lctk$f;->video_load_progress:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->a:Landroid/view/View;

    .line 1063
    sget v0, Lctk$f;->video_play_btn:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->b:Landroid/view/View;

    .line 1064
    sget v0, Lctk$f;->video_thumb:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->c:Landroid/widget/ImageView;

    .line 1066
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->b:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1072
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->e:Lebs;

    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->e:Lebs;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lebs;->a(Landroid/widget/ImageView;)V

    .line 1075
    :cond_0
    sget v0, Lctk$f;->video_player:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lecb$c;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->f:Lecb$c;

    .line 1076
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->f:Lecb$c;

    invoke-interface {v0, v2}, Lecb$c;->setEnableTopBottomVisible(Z)V

    .line 58
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->b()V

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->b()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 25
    .line 3135
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3138
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "DD"

    const-string/jumbo v2, "video_inner_play"

    const-string/jumbo v3, "all"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 3139
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->d:Ljava/lang/String;

    .line 3140
    new-instance v0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;-><init>(Landroid/content/Context;)V

    .line 3141
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->setOnRootLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3150
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->setOnRootClickListener(Landroid/view/View$OnClickListener;)V

    .line 3156
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->setOnMoreClickListener(Landroid/view/View$OnClickListener;)V

    .line 3157
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$5;-><init>(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->setOnCancelClickListener(Landroid/view/View$OnClickListener;)V

    .line 3165
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->f:Lecb$c;

    invoke-interface {v1, v0}, Lecb$c;->setViewer(Lecb$d;)V

    .line 3167
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->f:Lecb$c;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->i:Lecb$b;

    invoke-interface {v0, v1}, Lecb$c;->setOnErrorListener(Lecb$b;)V

    .line 3170
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->f:Lecb$c;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lecb$c;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 3171
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->f:Lecb$c;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->e:Lebs;

    invoke-virtual {v1}, Lebs;->g()Z

    move-result v1

    invoke-interface {v0, v1}, Lecb$c;->setLooping(Z)V

    .line 3172
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->f:Lecb$c;

    invoke-interface {v0}, Lecb$c;->a()V

    .line 25
    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->e:Lebs;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->e:Lebs;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;)V

    invoke-virtual {v0, v1}, Lebs;->a(Lebs$a;)V

    .line 112
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->e:Lebs;

    invoke-virtual {v0}, Lebs;->a()V

    .line 114
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;

    .prologue
    const/4 v2, 0x0

    .line 25
    .line 2123
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2124
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2125
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;)Lecb$c;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->f:Lecb$c;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;

    .prologue
    const/16 v1, 0x8

    .line 25
    .line 3117
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3118
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3119
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;

    .prologue
    const/4 v2, 0x0

    .line 25
    .line 4129
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4130
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4131
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;)Lebs;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->e:Lebs;

    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 201
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 202
    iget-boolean v3, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->h:Z

    if-nez v3, :cond_1

    .line 203
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->a()V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->f:Lecb$c;

    invoke-interface {v3}, Lecb$c;->getTextureView()Landroid/view/TextureView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 206
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->f:Lecb$c;

    invoke-interface {v3}, Lecb$c;->getTextureView()Landroid/view/TextureView;

    move-result-object v1

    .line 207
    .local v1, "textureView":Landroid/view/TextureView;
    invoke-virtual {v1}, Landroid/view/TextureView;->getWidth()I

    move-result v2

    .line 208
    .local v2, "width":I
    invoke-virtual {v1}, Landroid/view/TextureView;->getHeight()I

    move-result v0

    .line 209
    .local v0, "height":I
    invoke-virtual {v1}, Landroid/view/TextureView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$6;

    invoke-direct {v4, p0, v2, v1, v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$6;-><init>(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;ILandroid/view/TextureView;I)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p0}, Lebx;->a(Landroid/content/Intent;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)Lebs;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->e:Lebs;

    .line 43
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->e:Lebs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->e:Lebs;

    invoke-virtual {v0}, Lebs;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->finish()V

    .line 52
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->e:Lebs;

    invoke-virtual {v0}, Lebs;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->getRequestedOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 47
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lebh;->a(Landroid/app/Activity;I)V

    goto :goto_0

    .line 49
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->a()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 224
    .line 1229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->e:Lebs;

    if-eqz v0, :cond_0

    .line 1230
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->e:Lebs;

    invoke-virtual {v0, v1}, Lebs;->a(Lebs$a;)V

    .line 1231
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->e:Lebs;

    invoke-virtual {v0}, Lebs;->c()V

    .line 1232
    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->e:Lebs;

    .line 1234
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->f:Lecb$c;

    if-eqz v0, :cond_1

    .line 1235
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->f:Lecb$c;

    invoke-interface {v0, v1}, Lecb$c;->setOnCompleteListener(Lecb$a;)V

    .line 1236
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->f:Lecb$c;

    invoke-interface {v0, v1}, Lecb$c;->setOnErrorListener(Lecb$b;)V

    .line 1237
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->f:Lecb$c;

    invoke-interface {v0}, Lecb$c;->j()V

    .line 1238
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->f:Lecb$c;

    invoke-interface {v0}, Lecb$c;->m()V

    .line 1240
    :cond_1
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->h:Z

    .line 1241
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->g:Z

    .line 1242
    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->d:Ljava/lang/String;

    .line 225
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 226
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->h:Z

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->f:Lecb$c;

    invoke-interface {v0}, Lecb$c;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->f:Lecb$c;

    invoke-interface {v0}, Lecb$c;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->f:Lecb$c;

    invoke-interface {v0}, Lecb$c;->c()V

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->g:Z

    .line 196
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onPause()V

    .line 197
    return-void

    .line 193
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->g:Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->h:Z

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->f:Lecb$c;

    invoke-interface {v0}, Lecb$c;->getPlayingUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->f:Lecb$c;

    invoke-interface {v0}, Lecb$c;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->f:Lecb$c;

    invoke-interface {v0}, Lecb$c;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->f:Lecb$c;

    invoke-interface {v0}, Lecb$c;->b()V

    .line 183
    :cond_1
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 184
    return-void
.end method
