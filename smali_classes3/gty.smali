.class public final Lgty;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "OrgHomePageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lgtz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lgus;

.field private b:Landroid/app/Activity;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgur;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

.field private e:Lgud;

.field private f:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private g:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private h:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private i:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$a;

.field private j:Lgtz$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;Lgud;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$a;Lgtz$a;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "vVideo"    # Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;
    .param p4, "absorberController"    # Lgud;
    .param p5, "onInfoListener"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    .param p6, "onErrorListener"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
    .param p7, "onCompletionListener"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
    .param p8, "pbListener"    # Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$a;
    .param p9, "orgHomePageHolderListener"    # Lgtz$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lgur;",
            ">;",
            "Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;",
            "Lgud;",
            "Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;",
            "Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;",
            "Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;",
            "Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$a;",
            "Lgtz$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "SRMediaObjects":Ljava/util/List;, "Ljava/util/List<Lgur;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 43
    iput-object p1, p0, Lgty;->b:Landroid/app/Activity;

    .line 44
    iput-object p2, p0, Lgty;->c:Ljava/util/List;

    .line 45
    iput-object p3, p0, Lgty;->d:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    .line 46
    iput-object p4, p0, Lgty;->e:Lgud;

    .line 47
    iput-object p5, p0, Lgty;->f:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 48
    iput-object p6, p0, Lgty;->g:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 49
    iput-object p7, p0, Lgty;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 50
    iput-object p8, p0, Lgty;->i:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$a;

    .line 51
    iput-object p9, p0, Lgty;->j:Lgtz$a;

    .line 52
    return-void
.end method

.method static synthetic a(Lgty;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lgty;

    .prologue
    .line 21
    iget-object v0, p0, Lgty;->b:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lgty;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lgty;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 65
    int-to-long v0, p1

    return-wide v0
.end method

.method public final synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 21
    check-cast p1, Lgtz;

    .line 2094
    iget-object v0, p0, Lgty;->c:Ljava/util/List;

    if-eqz v0, :cond_3

    if-ltz p2, :cond_3

    iget-object v0, p0, Lgty;->c:Ljava/util/List;

    .line 2096
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_3

    .line 2097
    iget-object v0, p0, Lgty;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgur;

    .line 2099
    :goto_0
    iget-object v2, p0, Lgty;->a:Lgus;

    .line 3070
    iput-object v2, p1, Lgtz;->c:Lgus;

    .line 3071
    iput-object v0, p1, Lgtz;->d:Lgur;

    .line 3072
    iget-object v2, p1, Lgtz;->d:Lgur;

    if-eqz v2, :cond_1

    .line 3076
    iget-object v2, p1, Lgtz;->c:Lgus;

    if-eqz v2, :cond_0

    .line 3077
    iget-object v2, p1, Lgtz;->y:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v3, p1, Lgtz;->b:Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;

    iget-object v4, p1, Lgtz;->c:Lgus;

    iget-object v4, v4, Lgus;->c:Ljava/lang/String;

    invoke-static {v4}, Lguz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 3080
    :cond_0
    invoke-virtual {v0}, Lgur;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3081
    iget-object v0, p1, Lgtz;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_1
    return-void

    .line 3083
    :cond_2
    iget-object v0, p1, Lgtz;->y:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v2, p1, Lgtz;->A:Landroid/widget/ImageView;

    iget-object v3, p1, Lgtz;->d:Lgur;

    iget-object v3, v3, Lgur;->b:Ljava/lang/String;

    invoke-static {v3}, Lguz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public final synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 21
    .line 4070
    iget-object v0, p0, Lgty;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lgtt$e;->recruitment_item_org_home_page:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 4071
    new-instance v0, Lgty$1;

    invoke-direct {v0, p0, v2}, Lgty$1;-><init>(Lgty;Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 4080
    new-instance v0, Lgtz;

    iget-object v1, p0, Lgty;->b:Landroid/app/Activity;

    iget-object v3, p0, Lgty;->d:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    iget-object v4, p0, Lgty;->e:Lgud;

    iget-object v5, p0, Lgty;->f:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    iget-object v6, p0, Lgty;->g:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    iget-object v7, p0, Lgty;->h:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    iget-object v8, p0, Lgty;->i:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$a;

    iget-object v9, p0, Lgty;->j:Lgtz$a;

    invoke-direct/range {v0 .. v9}, Lgtz;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;Lgud;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$a;Lgtz$a;)V

    .line 21
    return-object v0
.end method

.method public final synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 21
    check-cast p1, Lgtz;

    .line 1104
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 1105
    if-eqz p1, :cond_0

    .line 2088
    iget-object v0, p1, Lgtz;->a:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2089
    iget-object v0, p1, Lgtz;->e:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_0

    .line 2090
    iget-object v0, p1, Lgtz;->e:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    .line 21
    :cond_0
    return-void
.end method
