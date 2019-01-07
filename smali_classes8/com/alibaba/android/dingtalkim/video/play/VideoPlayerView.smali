.class public Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;
.super Landroid/widget/FrameLayout;
.source "VideoPlayerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lecb$d;


# instance fields
.field private A:Landroid/view/View$OnClickListener;

.field private B:Landroid/view/View$OnClickListener;

.field private C:Landroid/view/View$OnClickListener;

.field private D:Landroid/os/Handler$Callback;

.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private final d:J

.field private final e:J

.field private f:Landroid/os/Handler;

.field private g:Lecb$c;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/view/ViewGroup;

.field private k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private l:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/SeekBar;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/LinearLayout;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/LinearLayout;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/LinearLayout;

.field private x:Landroid/widget/TextView;

.field private y:Z

.field private z:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->a:Ljava/lang/String;

    .line 29
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->b:I

    .line 30
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->c:I

    .line 31
    const-wide/16 v0, 0xfa0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->d:J

    .line 32
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->e:J

    .line 388
    new-instance v0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView$1;-><init>(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->D:Landroid/os/Handler$Callback;

    .line 1066
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->D:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->f:Landroid/os/Handler;

    .line 1067
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lctk$g;->video_player_controller:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1068
    sget v0, Lctk$f;->iv_center_start:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->i:Landroid/widget/ImageView;

    .line 1069
    sget v0, Lctk$f;->iv_video_thumb:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->h:Landroid/widget/ImageView;

    .line 1071
    sget v0, Lctk$f;->ll_top:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->j:Landroid/view/ViewGroup;

    .line 1072
    sget v0, Lctk$f;->iv_more:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->l:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1073
    sget v0, Lctk$f;->iv_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1075
    sget v0, Lctk$f;->ll_bottom:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->m:Landroid/widget/LinearLayout;

    .line 1076
    sget v0, Lctk$f;->iv_restart_or_pause:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->n:Landroid/widget/ImageView;

    .line 1077
    sget v0, Lctk$f;->tv_position:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->o:Landroid/widget/TextView;

    .line 1078
    sget v0, Lctk$f;->tv_duration:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->p:Landroid/widget/TextView;

    .line 1079
    sget v0, Lctk$f;->sb_seek:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->q:Landroid/widget/SeekBar;

    .line 1080
    sget v0, Lctk$f;->iv_full_screen:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->r:Landroid/widget/ImageView;

    .line 1082
    sget v0, Lctk$f;->ll_loading:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->s:Landroid/widget/LinearLayout;

    .line 1083
    sget v0, Lctk$f;->tv_load_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->t:Landroid/widget/TextView;

    .line 1085
    sget v0, Lctk$f;->ll_error:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->u:Landroid/widget/LinearLayout;

    .line 1086
    sget v0, Lctk$f;->tv_retry:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->v:Landroid/widget/TextView;

    .line 1088
    sget v0, Lctk$f;->ll_completed:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->w:Landroid/widget/LinearLayout;

    .line 1089
    sget v0, Lctk$f;->tv_replay:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->x:Landroid/widget/TextView;

    .line 1091
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1092
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1093
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->l:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1094
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1095
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1096
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->v:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1097
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->x:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1098
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->q:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1099
    invoke-virtual {p0, p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;

    .prologue
    .line 24
    .line 1257
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1260
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->g:Lecb$c;

    invoke-interface {v0}, Lecb$c;->getCurrentPosition()J

    move-result-wide v0

    .line 1261
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->g:Lecb$c;

    invoke-interface {v2}, Lecb$c;->getDuration()J

    move-result-wide v2

    .line 1262
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->g:Lecb$c;

    invoke-interface {v4}, Lecb$c;->getBufferPercentage()I

    move-result v4

    .line 1263
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->q:Landroid/widget/SeekBar;

    invoke-virtual {v5, v4}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 1264
    const/high16 v4, 0x42c80000    # 100.0f

    long-to-float v5, v0

    mul-float/2addr v4, v5

    long-to-float v5, v2

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 1265
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->q:Landroid/widget/SeekBar;

    invoke-virtual {v5, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1266
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->o:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lebr;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1267
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->p:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lebr;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->setTopBottomVisible(Z)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->d()V

    return-void
.end method

.method private d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->e()V

    .line 253
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->f:Landroid/os/Handler;

    const/16 v1, 0x3e9

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 254
    return-void
.end method

.method private e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 271
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->f:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 272
    return-void
.end method

.method private f()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->g()V

    .line 276
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->f:Landroid/os/Handler;

    const/16 v1, 0x3e8

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 277
    return-void
.end method

.method private g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 281
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->f:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 282
    return-void
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->g:Lecb$c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setTopBottomVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 164
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->j:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->m:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 166
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->y:Z

    .line 167
    if-eqz p1, :cond_3

    .line 168
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->g:Lecb$c;

    invoke-interface {v0}, Lecb$c;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->g:Lecb$c;

    invoke-interface {v0}, Lecb$c;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->f()V

    .line 174
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 164
    goto :goto_0

    :cond_2
    move v1, v2

    .line 165
    goto :goto_1

    .line 172
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->g()V

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 318
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->y:Z

    .line 319
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->e()V

    .line 320
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->g()V

    .line 321
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->q:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 322
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->q:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 324
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 327
    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->setTopBottomVisible(Z)V

    .line 328
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->r:Landroid/widget/ImageView;

    sget v1, Lctk$e;->ic_player_enlarge:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 331
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 334
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;Lcom/alibaba/android/dingtalkim/video/play/PlayerState;)V
    .locals 4
    .param p1, "screenMode"    # Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;
    .param p2, "playState"    # Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 178
    sget-object v0, Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;->NORMAL:Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;

    if-eq p1, v0, :cond_0

    .line 182
    sget-object v0, Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;->FULL_SCREEN:Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;

    if-eq p1, v0, :cond_0

    .line 186
    sget-object v0, Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;->TINY_WINDOW:Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;

    .line 193
    :cond_0
    sget-object v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->IDLE:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    if-eq p2, v0, :cond_1

    .line 195
    sget-object v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->PREPARING:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    if-ne p2, v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->t:Landroid/widget/TextView;

    sget v1, Lctk$i;->dt_im_video_player_loading:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 200
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    :cond_1
    :goto_0
    return-void

    .line 203
    :cond_2
    sget-object v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->PREPARED:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    if-ne p2, v0, :cond_3

    .line 204
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 205
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->d()V

    goto :goto_0

    .line 206
    :cond_3
    sget-object v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->PLAYING:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    if-ne p2, v0, :cond_4

    .line 207
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->n:Landroid/widget/ImageView;

    sget v1, Lctk$e;->ic_player_pause:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 209
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->f()V

    .line 210
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->d()V

    .line 211
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 212
    :cond_4
    sget-object v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->PAUSED:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    if-ne p2, v0, :cond_5

    .line 213
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->n:Landroid/widget/ImageView;

    sget v1, Lctk$e;->ic_player_start:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 216
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->g()V

    .line 217
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->e()V

    goto :goto_0

    .line 218
    :cond_5
    sget-object v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->BUFFERING_PLAYING:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    if-ne p2, v0, :cond_6

    .line 219
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->n:Landroid/widget/ImageView;

    sget v1, Lctk$e;->ic_player_pause:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 222
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->t:Landroid/widget/TextView;

    sget v1, Lctk$i;->dt_im_video_player_buffering:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 223
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->f()V

    .line 224
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->d()V

    goto :goto_0

    .line 225
    :cond_6
    sget-object v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->BUFFERING_PAUSED:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    if-ne p2, v0, :cond_7

    .line 226
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->n:Landroid/widget/ImageView;

    sget v1, Lctk$e;->ic_player_start:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->t:Landroid/widget/TextView;

    sget v1, Lctk$i;->dt_im_video_player_buffering:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 230
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->g()V

    .line 231
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->e()V

    goto/16 :goto_0

    .line 232
    :cond_7
    sget-object v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->COMPLETED:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    if-ne p2, v0, :cond_8

    .line 233
    invoke-direct {p0, v3}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->setTopBottomVisible(Z)V

    .line 234
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->n:Landroid/widget/ImageView;

    sget v1, Lctk$e;->ic_player_start:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 237
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->q:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 238
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->q:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 239
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->e()V

    goto/16 :goto_0

    .line 241
    :cond_8
    sget-object v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->ERROR:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    if-ne p2, v0, :cond_1

    .line 242
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->e()V

    .line 243
    invoke-direct {p0, v3}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->setTopBottomVisible(Z)V

    .line 244
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public final b()Landroid/view/View;
    .locals 0

    .prologue
    .line 349
    return-object p0
.end method

.method public final c()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 382
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->setOnRootLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 383
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->setOnRootClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->setOnCancelClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->a()V

    .line 386
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->i:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->g:Lecb$c;

    invoke-interface {v0}, Lecb$c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->g:Lecb$c;

    invoke-interface {v0}, Lecb$c;->a()V

    goto :goto_0

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-ne p1, v0, :cond_3

    .line 125
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->C:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->C:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->n:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_8

    .line 129
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->g:Lecb$c;

    invoke-interface {v0}, Lecb$c;->g()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->g:Lecb$c;

    invoke-interface {v0}, Lecb$c;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 130
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->g:Lecb$c;

    invoke-interface {v0}, Lecb$c;->c()V

    goto :goto_0

    .line 131
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->g:Lecb$c;

    invoke-interface {v0}, Lecb$c;->h()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->g:Lecb$c;

    invoke-interface {v0}, Lecb$c;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 132
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->g:Lecb$c;

    invoke-interface {v0}, Lecb$c;->b()V

    goto :goto_0

    .line 133
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->g:Lecb$c;

    invoke-interface {v0}, Lecb$c;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->g:Lecb$c;

    invoke-interface {v0}, Lecb$c;->a()V

    goto :goto_0

    .line 137
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->r:Landroid/widget/ImageView;

    if-eq p1, v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->v:Landroid/widget/TextView;

    if-ne p1, v0, :cond_9

    .line 140
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->g:Lecb$c;

    invoke-interface {v0}, Lecb$c;->a()V

    goto :goto_0

    .line 141
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->x:Landroid/widget/TextView;

    if-ne p1, v0, :cond_a

    .line 142
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->v:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    goto/16 :goto_0

    .line 143
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->l:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-ne p1, v0, :cond_b

    .line 144
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->B:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->B:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto/16 :goto_0

    .line 147
    :cond_b
    if-ne p1, p0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->g:Lecb$c;

    invoke-interface {v0}, Lecb$c;->g()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->g:Lecb$c;

    .line 149
    invoke-interface {v0}, Lecb$c;->h()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->g:Lecb$c;

    .line 150
    invoke-interface {v0}, Lecb$c;->e()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->g:Lecb$c;

    .line 151
    invoke-interface {v0}, Lecb$c;->f()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->g:Lecb$c;

    invoke-interface {v0}, Lecb$c;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    :cond_c
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->g:Lecb$c;

    invoke-interface {v0}, Lecb$c;->l()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 153
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->y:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->setTopBottomVisible(Z)V

    goto/16 :goto_0

    :cond_d
    const/4 v0, 0x0

    goto :goto_1

    .line 155
    :cond_e
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->A:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->A:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 286
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 287
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 288
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 293
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->g()V

    .line 298
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->h()Z

    move-result v1

    if-nez v1, :cond_0

    .line 311
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->g:Lecb$c;

    invoke-interface {v1}, Lecb$c;->f()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->g:Lecb$c;

    invoke-interface {v1}, Lecb$c;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 306
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->g:Lecb$c;

    invoke-interface {v1}, Lecb$c;->b()V

    .line 308
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->g:Lecb$c;

    invoke-interface {v1}, Lecb$c;->getDuration()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v2, v4

    long-to-float v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 309
    .local v0, "position":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->g:Lecb$c;

    invoke-interface {v1, v0}, Lecb$c;->a(I)V

    .line 310
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->f()V

    goto :goto_0
.end method

.method public setEnableTotBottomVisible(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 354
    if-nez p1, :cond_0

    .line 355
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->setTopBottomVisible(Z)V

    .line 357
    :cond_0
    return-void
.end method

.method public setImage(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    return-void
.end method

.method public setIvThumb(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 109
    return-void
.end method

.method public setOnCancelClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->C:Landroid/view/View$OnClickListener;

    .line 378
    return-void
.end method

.method public setOnMoreClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->B:Landroid/view/View$OnClickListener;

    .line 373
    return-void
.end method

.method public setOnRootClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->A:Landroid/view/View$OnClickListener;

    .line 368
    return-void
.end method

.method public setOnRootLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1, "onLongClickListener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->z:Landroid/view/View$OnLongClickListener;

    .line 362
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->z:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 363
    return-void
.end method

.method public setPresenter(Lecb$c;)V
    .locals 1
    .param p1, "presenter"    # Lecb$c;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->g:Lecb$c;

    .line 339
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->g:Lecb$c;

    invoke-interface {v0}, Lecb$c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->setTopBottomVisible(Z)V

    goto :goto_0
.end method
