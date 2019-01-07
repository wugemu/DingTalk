.class public Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;
.super Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;
.source "RecruitVideoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$a;
    }
.end annotation


# instance fields
.field private I:Landroid/content/Context;

.field private J:Landroid/widget/ImageView;

.field private K:Landroid/support/v4/widget/ContentLoadingProgressBar;

.field private L:Landroid/widget/ProgressBar;

.field private M:Ljava/lang/Runnable;

.field private N:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$a;

.field private O:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->I:Landroid/content/Context;

    .line 61
    new-instance v0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$1;-><init>(Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->O:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;)Landroid/support/v4/widget/ContentLoadingProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->K:Landroid/support/v4/widget/ContentLoadingProgressBar;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->b(Z)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->L:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private b(Z)V
    .locals 4
    .param p1, "immediate"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 231
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->M:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->M:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 235
    if-eqz p1, :cond_1

    .line 236
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->M:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 239
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->M:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;)Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->N:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$a;

    return-object v0
.end method

.method private f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 243
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->M:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->M:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static getDefaultConfig()Lgvf;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 93
    new-instance v0, Ljos;

    const-string/jumbo v1, "dt_recruit_id"

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2}, Ljos;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .local v0, "taoLiveVideoViewConfig":Ljos;
    const-string/jumbo v1, "dt_recruit_type"

    iput-object v1, v0, Ljos;->q:Ljava/lang/String;

    .line 95
    iput v4, v0, Ljos;->b:I

    .line 96
    iput v4, v0, Ljos;->c:I

    .line 1014
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_recruitment_video_use_ffmpeg"

    .line 1083
    invoke-virtual {v1, v2, v3}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 97
    if-eqz v1, :cond_0

    .line 98
    iput v3, v0, Ljos;->a:I

    .line 102
    :goto_0
    iput v3, v0, Ljos;->d:I

    .line 103
    new-instance v1, Lgvf;

    invoke-direct {v1, v0}, Lgvf;-><init>(Ljos;)V

    return-object v1

    .line 100
    :cond_0
    iput v4, v0, Ljos;->a:I

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->I:Landroid/content/Context;

    invoke-static {v0}, Lcms;->p(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v0, v1, :cond_2

    .line 181
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "[RecruitVideoView] start when activity is not active."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    invoke-super {p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a()V

    .line 186
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->J:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->J:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->b(Z)V

    .line 190
    :cond_2
    return-void
.end method

.method public final a(Lgvf;)V
    .locals 3
    .param p1, "recruitVideoConfig"    # Lgvf;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 107
    if-nez p1, :cond_3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->a(Ljos;)V

    .line 108
    if-eqz p1, :cond_0

    .line 2045
    iget-boolean v1, p1, Lgvf;->b:Z

    .line 108
    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lgtt$e;->recruitment_layout_recruit_video_start:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 110
    sget v1, Lgtt$d;->iv_start:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->J:Landroid/widget/ImageView;

    .line 111
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->J:Landroid/widget/ImageView;

    new-instance v2, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$2;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$2;-><init>(Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    :cond_0
    if-eqz p1, :cond_1

    .line 2049
    iget-boolean v1, p1, Lgvf;->c:Z

    .line 118
    if-eqz v1, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lgtt$e;->recruitment_layout_recruit_pb:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 120
    sget v1, Lgtt$d;->v_pb:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->L:Landroid/widget/ProgressBar;

    .line 121
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->L:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 122
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2053
    iget v2, p1, Lgvf;->d:F

    .line 122
    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 123
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->L:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    if-eqz p1, :cond_2

    .line 2057
    iget-boolean v1, p1, Lgvf;->e:Z

    .line 125
    if-eqz v1, :cond_2

    .line 126
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lgtt$e;->recruitment_layout_recruit_video_buffering:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 127
    sget v1, Lgtt$d;->pb_loading:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/ContentLoadingProgressBar;

    iput-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->K:Landroid/support/v4/widget/ContentLoadingProgressBar;

    .line 129
    :cond_2
    new-instance v1, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$3;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$3;-><init>(Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;)V

    iput-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->M:Ljava/lang/Runnable;

    .line 151
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->setLooping(Z)V

    .line 152
    new-instance v1, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$4;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$4;-><init>(Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;)V

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->setLogAdapter(Ljju;)V

    .line 175
    return-void

    .line 2041
    :cond_3
    iget-object v1, p1, Lgvf;->a:Ljos;

    goto/16 :goto_0
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "clearTargetState"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->f()V

    .line 220
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->J:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->J:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    :cond_0
    invoke-super {p0, p1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Z)V

    .line 224
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 194
    invoke-super {p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b()V

    .line 195
    invoke-direct {p0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->f()V

    .line 196
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->J:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->J:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 199
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->f()V

    .line 204
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->J:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->J:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    :cond_0
    invoke-super {p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c()V

    .line 208
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 83
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->O:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 84
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->O:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->b(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 89
    invoke-super {p0, p1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 90
    return-void
.end method

.method public setMuted(Z)V
    .locals 3
    .param p1, "mute"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 212
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_video_mute_with_release"

    .line 2083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 212
    if-eqz v0, :cond_0

    .line 213
    invoke-super {p0, p1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->setMuted(Z)V

    .line 215
    :cond_0
    return-void
.end method

.method public setPbListener(Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$a;)V
    .locals 0
    .param p1, "pbListener"    # Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$a;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->N:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$a;

    .line 228
    return-void
.end method
