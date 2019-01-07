.class public Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;
.super Landroid/widget/FrameLayout;
.source "TaoLiveVideoView.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Ljoj$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$c;,
        Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;,
        Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$b;
    }
.end annotation


# instance fields
.field A:Z

.field B:Z

.field C:Z

.field D:Z

.field public E:Z

.field public F:Ljoj;

.field G:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

.field H:Ljoq$a;

.field private I:Ljava/lang/String;

.field private J:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;",
            ">;"
        }
    .end annotation
.end field

.field private L:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field private M:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;",
            ">;"
        }
    .end annotation
.end field

.field private N:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private O:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;",
            ">;"
        }
    .end annotation
.end field

.field private P:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private Q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private R:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$b;",
            ">;"
        }
    .end annotation
.end field

.field private S:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;",
            ">;"
        }
    .end annotation
.end field

.field private T:Landroid/content/Context;

.field private U:Ljava/lang/String;

.field private V:Z

.field private W:F

.field a:Ljoq;

.field private aa:F

.field private ab:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private ac:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private ad:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private ae:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

.field private af:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field private ag:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$c;

.field b:Landroid/view/View;

.field c:Ljos;

.field d:Ljava/lang/String;

.field e:Ljjq;

.field f:Ljju;

.field g:Landroid/widget/ImageView;

.field h:Ljjr;

.field i:I

.field j:Ljoq$b;

.field k:I

.field l:I

.field m:I

.field n:I

.field o:I

.field public p:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public q:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field r:I

.field s:I

.field t:I

.field u:I

.field v:J

.field w:I

.field x:J

.field y:Z

.field z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 477
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 478
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 481
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 482
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x0

    .line 485
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->I:Ljava/lang/String;

    .line 94
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->d:Ljava/lang/String;

    .line 106
    iput v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->i:I

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->j:Ljoq$b;

    .line 136
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->t:I

    .line 137
    const/4 v0, 0x3

    iput v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->u:I

    .line 139
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->v:J

    .line 140
    iput v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->w:I

    .line 141
    const-wide/32 v0, 0x989680

    iput-wide v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->x:J

    .line 150
    iput-boolean v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->y:Z

    .line 151
    iput-boolean v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->z:Z

    .line 152
    iput-boolean v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->A:Z

    .line 153
    iput-boolean v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->B:Z

    .line 154
    iput-boolean v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->C:Z

    .line 159
    iput-boolean v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->V:Z

    .line 160
    iput-boolean v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->E:Z

    .line 215
    new-instance v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$1;

    invoke-direct {v0, p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$1;-><init>(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)V

    iput-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->G:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 225
    new-instance v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$3;

    invoke-direct {v0, p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$3;-><init>(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)V

    iput-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->ab:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 252
    new-instance v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$4;

    invoke-direct {v0, p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$4;-><init>(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)V

    iput-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->ac:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 405
    new-instance v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$5;

    invoke-direct {v0, p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$5;-><init>(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)V

    iput-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->ad:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 434
    new-instance v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$6;

    invoke-direct {v0, p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$6;-><init>(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)V

    iput-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->ae:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 447
    new-instance v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$7;

    invoke-direct {v0, p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$7;-><init>(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)V

    iput-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->af:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 1478
    new-instance v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$10;

    invoke-direct {v0, p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$10;-><init>(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)V

    iput-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->H:Ljoq$a;

    .line 1665
    iput-object p1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->T:Landroid/content/Context;

    .line 1667
    iput v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->k:I

    .line 1668
    iput v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->l:I

    .line 1669
    iput v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->m:I

    .line 1670
    iput v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->n:I

    .line 1671
    iput v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->i:I

    .line 1673
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->setBackgroundColor(I)V

    .line 488
    return-void
.end method

.method static synthetic a(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;
    .param p1, "x1"    # F

    .prologue
    .line 58
    iput p1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->W:F

    return p1
.end method

.method static synthetic a(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->U:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->P:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    return-object v0
.end method

.method private a(IIII)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "vrRenderType"    # I
    .param p3, "vrLng"    # I
    .param p4, "vrLat"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x2

    .line 738
    iget-object v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a:Ljoq;

    if-eqz v3, :cond_1

    .line 739
    iget-object v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v3, v3, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    if-eqz v3, :cond_0

    .line 740
    iget-object v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v3, v3, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    invoke-virtual {v3, v4}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 742
    :cond_0
    iget-object v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a:Ljoq;

    invoke-interface {v3}, Ljoq;->getView()Landroid/view/View;

    move-result-object v1

    .line 743
    .local v1, "renderUIView":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->removeView(Landroid/view/View;)V

    .line 744
    iget-object v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a:Ljoq;

    invoke-interface {v3}, Ljoq;->a()V

    .line 745
    iput-object v4, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a:Ljoq;

    .line 748
    .end local v1    # "renderUIView":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    .line 749
    .local v2, "renderView":Ljoq;
    const/4 v3, 0x1

    if-ne p1, v3, :cond_3

    .line 750
    new-instance v2, Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView;

    .end local v2    # "renderView":Ljoq;
    invoke-virtual {p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView;-><init>(Landroid/content/Context;)V

    .line 755
    .restart local v2    # "renderView":Ljoq;
    :cond_2
    :goto_0
    if-nez v2, :cond_4

    .line 832
    :goto_1
    return-void

    .line 751
    :cond_3
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    .line 752
    new-instance v2, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;

    .end local v2    # "renderView":Ljoq;
    invoke-virtual {p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;-><init>(Landroid/content/Context;)V

    .restart local v2    # "renderView":Ljoq;
    goto :goto_0

    .line 758
    :cond_4
    iget-object v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    iput p1, v3, Ljos;->c:I

    .line 759
    iget-object v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    iput p2, v3, Ljos;->i:I

    .line 760
    iget-object v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    iput p3, v3, Ljos;->j:I

    .line 761
    iget-object v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    iput p4, v3, Ljos;->k:I

    .line 762
    iput-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a:Ljoq;

    .line 763
    iget-object v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    iget v3, v3, Ljos;->d:I

    invoke-interface {v2, v3}, Ljoq;->setAspectRatio(I)V

    .line 764
    iget v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->k:I

    if-lez v3, :cond_5

    iget v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->l:I

    if-lez v3, :cond_5

    .line 765
    iget v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->k:I

    iget v4, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->l:I

    invoke-interface {v2, v3, v4}, Ljoq;->a(II)V

    .line 766
    :cond_5
    iget v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->m:I

    if-lez v3, :cond_6

    iget v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->n:I

    if-lez v3, :cond_6

    .line 767
    iget v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->m:I

    iget v4, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->n:I

    invoke-interface {v2, v3, v4}, Ljoq;->b(II)V

    .line 769
    :cond_6
    iget-object v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a:Ljoq;

    invoke-interface {v3}, Ljoq;->getView()Landroid/view/View;

    move-result-object v1

    .line 771
    .restart local v1    # "renderUIView":Landroid/view/View;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v0, v5, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 775
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 777
    new-instance v3, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$8;

    invoke-direct {v3, p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$8;-><init>(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 827
    invoke-virtual {p0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->addView(Landroid/view/View;)V

    .line 829
    iput-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b:Landroid/view/View;

    .line 830
    iget-object v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a:Ljoq;

    iget-object v4, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->H:Ljoq$a;

    invoke-interface {v3, v4}, Ljoq;->a(Ljoq$a;)V

    .line 831
    iget-object v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a:Ljoq;

    iget v4, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->o:I

    invoke-interface {v3, v4}, Ljoq;->setVideoRotation(I)V

    goto :goto_1
.end method

.method public static a(Landroid/view/View;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 1542
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1543
    .local v0, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1544
    new-instance v1, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$2;

    invoke-direct {v1, p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1562
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1563
    return-void
.end method

.method static synthetic a(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;IIII)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b(IIII)V

    return-void
.end method

.method static synthetic a(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;IIIIILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Ljava/lang/String;

    .prologue
    .line 58
    return-void
.end method

.method static synthetic a(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;Ljoq$b;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;
    .param p1, "x1"    # Ljoq$b;

    .prologue
    .line 58
    invoke-static {p1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Ljoq$b;)V

    return-void
.end method

.method static synthetic a(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;Ltv/danmaku/ijk/media/player/IMediaPlayer;Ljoq$b;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;
    .param p1, "x1"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "x2"    # Ljoq$b;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer;Ljoq$b;)V

    return-void
.end method

.method private static a(Ljoq$b;)V
    .locals 2
    .param p0, "holder"    # Ljoq$b;

    .prologue
    .line 1473
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljoq$b;->b()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 1474
    invoke-interface {p0}, Ljoq$b;->b()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 1476
    :cond_0
    return-void
.end method

.method private a(Ltv/danmaku/ijk/media/player/IMediaPlayer;Ljoq$b;)V
    .locals 1
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "holder"    # Ljoq$b;

    .prologue
    .line 1460
    if-nez p1, :cond_0

    .line 1470
    :goto_0
    return-void

    .line 1463
    :cond_0
    if-nez p2, :cond_1

    .line 1464
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 1468
    :cond_1
    invoke-static {p2}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Ljoq$b;)V

    .line 1469
    invoke-interface {p2, p1}, Ljoq$b;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;
    .param p1, "x1"    # F

    .prologue
    .line 58
    iput p1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->aa:F

    return p1
.end method

.method static synthetic b(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->Q:Ljava/util/List;

    return-object v0
.end method

.method private b(IIII)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "sarNum"    # I
    .param p4, "sarDen"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1582
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->k:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->l:I

    if-eq p2, v0, :cond_1

    .line 1583
    :cond_0
    iput p1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->k:I

    .line 1584
    iput p2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->l:I

    .line 1585
    iput p3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->m:I

    .line 1586
    iput p4, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->n:I

    .line 1587
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a:Ljoq;

    if-eqz v0, :cond_1

    .line 1588
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a:Ljoq;

    iget v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->k:I

    iget v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->l:I

    invoke-interface {v0, v1, v2}, Ljoq;->a(II)V

    .line 1589
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a:Ljoq;

    iget v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->m:I

    iget v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->n:I

    invoke-interface {v0, v1, v2}, Ljoq;->b(II)V

    .line 1592
    :cond_1
    return-void
.end method

.method private b(Z)V
    .locals 4
    .param p1, "byUser"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x4

    .line 1370
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->i:I

    if-ne v1, v3, :cond_1

    .line 1392
    :cond_0
    :goto_0
    return-void

    .line 1372
    :cond_1
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v1, v1, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->d()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1373
    if-nez p1, :cond_2

    .line 1374
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->D:Z

    .line 1377
    :cond_2
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v1, v1, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->pause()V

    .line 1378
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->S:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 1379
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->S:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;

    .line 1380
    .local v0, "listener":Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;
    if-eqz v0, :cond_3

    .line 1381
    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v2, v2, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    invoke-interface {v0, v2}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    goto :goto_1

    .line 1386
    .end local v0    # "listener":Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;
    :cond_4
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    iget-boolean v1, v1, Ljos;->l:Z

    if-eqz v1, :cond_5

    .line 1387
    invoke-static {}, Ljoi;->a()Ljoi;

    invoke-static {}, Ljoi;->b()V

    .line 1389
    :cond_5
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iput v3, v1, Ljoj;->e:I

    .line 1391
    :cond_6
    iput v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->i:I

    goto :goto_0
.end method

.method static synthetic c(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Ljoj;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    return-object v0
.end method

.method static synthetic d(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->N:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic e(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->O:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method private f()Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;
    .locals 26

    .prologue
    .line 984
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->f:Ljju;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 985
    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "openVideo url: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->d:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", mSurfaceHolder: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->j:Ljoq$b;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->d:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->T:Landroid/content/Context;

    move-object/from16 v20, v0

    if-nez v20, :cond_2

    .line 990
    :cond_1
    const/16 v20, 0x0

    .line 1154
    :goto_1
    return-object v20

    .line 993
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->T:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    check-cast v20, Landroid/app/Application;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 994
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->B:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 999
    :cond_3
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->B:Z

    .line 1001
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->e:Ljjq;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v13, v0, Ljos;->p:Ljava/lang/String;

    .line 1003
    .local v13, "keyStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljos;->q:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 1004
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Ljos;->q:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1005
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->e:Ljjq;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Ljos;->o:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Ljos;->a:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v13, v2}, Ljok;->a(Ljjq;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Ljos;->a:I

    .line 1007
    .end local v13    # "keyStr":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Ljos;->a:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1e

    .line 1008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    move-object/from16 v20, v0

    new-instance v21, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->T:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->e:Ljjq;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->h:Ljjr;

    move-object/from16 v24, v0

    invoke-direct/range {v21 .. v24}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>(Landroid/content/Context;Ljjq;Ljjr;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    move-object/from16 v20, v0

    check-cast v20, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/16 v21, 0x520a

    const-wide/16 v22, 0x1

    invoke-virtual/range {v20 .. v23}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setPropertyLong(IJ)V

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    move-object/from16 v20, v0

    check-cast v20, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/16 v21, 0x1

    const-string/jumbo v22, "timeout"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->x:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    move-wide/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setOption(ILjava/lang/String;J)V

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->e:Ljjq;

    move-object/from16 v20, v0

    if-eqz v20, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->e:Ljjq;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljjq;->a()Ljava/lang/String;

    move-result-object v20

    :goto_2
    invoke-static/range {v20 .. v20}, Ljok;->b(Ljava/lang/String;)J

    move-result-wide v14

    .line 1016
    .local v14, "nettrafic":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    move-object/from16 v20, v0

    check-cast v20, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/16 v21, 0x520d

    const-wide/32 v22, 0x96000

    cmp-long v22, v14, v22

    if-ltz v22, :cond_f

    .end local v14    # "nettrafic":J
    :goto_3
    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v14, v15}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setPropertyLong(IJ)V

    .line 1019
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1020
    .local v6, "accelerate_speed":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Ljos;->b:I

    move/from16 v20, v0

    if-nez v20, :cond_11

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->e:Ljjq;

    move-object/from16 v20, v0

    if-eqz v20, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->e:Ljjq;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljjq;->a()Ljava/lang/String;

    move-result-object v20

    :goto_4
    invoke-static/range {v20 .. v20}, Ljok;->c(Ljava/lang/String;)F

    move-result v6

    .line 1024
    :cond_7
    :goto_5
    const v20, 0x3f99999a    # 1.2f

    cmpl-float v20, v6, v20

    if-lez v20, :cond_13

    .line 1025
    const v6, 0x3f99999a    # 1.2f

    .line 1030
    :cond_8
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    move-object/from16 v20, v0

    check-cast v20, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/16 v21, 0x5211

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setPropertyFloat(IF)V

    .line 1032
    const/high16 v18, 0x3f800000    # 1.0f

    .line 1033
    .local v18, "slow_speed":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Ljos;->b:I

    move/from16 v20, v0

    if-nez v20, :cond_15

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->e:Ljjq;

    move-object/from16 v20, v0

    if-eqz v20, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->e:Ljjq;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljjq;->a()Ljava/lang/String;

    move-result-object v20

    :goto_7
    invoke-static/range {v20 .. v20}, Ljok;->c(Ljava/lang/String;)F

    move-result v18

    .line 1037
    :cond_9
    :goto_8
    const/high16 v20, 0x3f800000    # 1.0f

    cmpl-float v20, v18, v20

    if-lez v20, :cond_17

    .line 1038
    const/high16 v18, 0x3f800000    # 1.0f

    .line 1043
    :cond_a
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    move-object/from16 v20, v0

    check-cast v20, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/16 v21, 0x4e8e

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setPropertyFloat(IF)V

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    move-object/from16 v20, v0

    check-cast v20, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/16 v21, 0x5210

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->y:Z

    move/from16 v22, v0

    if-eqz v22, :cond_18

    const-wide/16 v22, 0x1

    :goto_a
    invoke-virtual/range {v20 .. v23}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setPropertyLong(IJ)V

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->e:Ljjq;

    move-object/from16 v20, v0

    if-eqz v20, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->e:Ljjq;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljjq;->a()Ljava/lang/String;

    move-result-object v20

    :goto_b
    invoke-static/range {v20 .. v20}, Ljok;->a(Ljava/lang/String;)Z

    move-result v7

    .line 1047
    .local v7, "bsendsei":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    move-object/from16 v20, v0

    check-cast v20, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/16 v21, 0x4e8f

    if-eqz v7, :cond_1a

    const-wide/16 v22, 0x1

    :goto_c
    invoke-virtual/range {v20 .. v23}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setPropertyLong(IJ)V

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->e:Ljjq;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->e:Ljjq;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljjq;->a()Ljava/lang/String;

    move-result-object v20

    :goto_d
    invoke-static/range {v20 .. v20}, Ljok;->b(Ljava/lang/String;)J

    move-result-wide v8

    .line 1050
    .local v8, "first_play_buffer":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    move-object/from16 v20, v0

    check-cast v20, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/16 v21, 0x4e95

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v8, v9}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setPropertyLong(IJ)V

    .line 1051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->e:Ljjq;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->e:Ljjq;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljjq;->a()Ljava/lang/String;

    move-result-object v20

    :goto_e
    invoke-static/range {v20 .. v20}, Ljok;->b(Ljava/lang/String;)J

    move-result-wide v16

    .line 1052
    .local v16, "play_buffer":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    move-object/from16 v20, v0

    check-cast v20, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/16 v21, 0x4e98

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setPropertyLong(IJ)V

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    move-object/from16 v20, v0

    check-cast v20, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/16 v21, 0x4e9c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->I:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setPropertyString(ILjava/lang/String;)V

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    move-object/from16 v20, v0

    check-cast v20, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/16 v21, 0x4e9d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->C:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1d

    const-wide/16 v22, 0x1

    :goto_f
    invoke-virtual/range {v20 .. v23}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setPropertyLong(IJ)V

    .line 1062
    .end local v6    # "accelerate_speed":F
    .end local v7    # "bsendsei":Z
    .end local v8    # "first_play_buffer":J
    .end local v16    # "play_buffer":J
    .end local v18    # "slow_speed":F
    :cond_b
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    move-object/from16 v20, v0

    check-cast v20, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->setConfig(Ljos;)V

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->z:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->setLooping(Z)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->af:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->registerOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->G:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->registerOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->ab:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->registerOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->ad:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->registerOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->ac:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->registerOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->ae:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->registerOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 1074
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->s:I

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->f:Ljju;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    .line 1076
    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "player setDataSource: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->d:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->d:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 1091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->p:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    if-eqz v20, :cond_24

    .line 1092
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->p:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v10, v0, :cond_23

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->p:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 1094
    .local v12, "key":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->p:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    .line 1095
    .local v19, "value":Ljava/lang/Float;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move/from16 v20, v0

    if-eqz v20, :cond_21

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    move-object/from16 v20, v0

    check-cast v20, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v19, :cond_20

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v21

    :goto_12
    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setPropertyFloat(IF)V

    .line 1092
    :cond_d
    :goto_13
    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    .line 1014
    .end local v10    # "i":I
    .end local v12    # "key":I
    .end local v19    # "value":Ljava/lang/Float;
    :cond_e
    const-string/jumbo v20, "2000000"

    goto/16 :goto_2

    .line 1016
    .restart local v14    # "nettrafic":J
    :cond_f
    const-wide/32 v14, 0x96000

    goto/16 :goto_3

    .line 1021
    .end local v14    # "nettrafic":J
    .restart local v6    # "accelerate_speed":F
    :cond_10
    const-string/jumbo v20, "1.0"

    goto/16 :goto_4

    .line 1022
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Ljos;->b:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->e:Ljjq;

    move-object/from16 v20, v0

    if-eqz v20, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->e:Ljjq;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljjq;->a()Ljava/lang/String;

    move-result-object v20

    :goto_14
    invoke-static/range {v20 .. v20}, Ljok;->c(Ljava/lang/String;)F

    move-result v6

    goto/16 :goto_5

    :cond_12
    const-string/jumbo v20, "1.0"

    goto :goto_14

    .line 1027
    :cond_13
    const/high16 v20, 0x3f800000    # 1.0f

    cmpg-float v20, v6, v20

    if-gez v20, :cond_8

    .line 1028
    const/high16 v6, 0x3f800000    # 1.0f

    goto/16 :goto_6

    .line 1034
    .restart local v18    # "slow_speed":F
    :cond_14
    const-string/jumbo v20, "1.0"

    goto/16 :goto_7

    .line 1035
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Ljos;->b:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->e:Ljjq;

    move-object/from16 v20, v0

    if-eqz v20, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->e:Ljjq;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljjq;->a()Ljava/lang/String;

    move-result-object v20

    :goto_15
    invoke-static/range {v20 .. v20}, Ljok;->c(Ljava/lang/String;)F

    move-result v18

    goto/16 :goto_8

    :cond_16
    const-string/jumbo v20, "1.0"

    goto :goto_15

    .line 1040
    :cond_17
    const v20, 0x3f4ccccd    # 0.8f

    cmpg-float v20, v18, v20

    if-gez v20, :cond_a

    .line 1041
    const v18, 0x3f4ccccd    # 0.8f

    goto/16 :goto_9

    .line 1044
    :cond_18
    const-wide/16 v22, 0x0

    goto/16 :goto_a

    .line 1046
    :cond_19
    const-string/jumbo v20, "false"

    goto/16 :goto_b

    .line 1047
    .restart local v7    # "bsendsei":Z
    :cond_1a
    const-wide/16 v22, 0x0

    goto/16 :goto_c

    .line 1049
    :cond_1b
    const-string/jumbo v20, "800"

    goto/16 :goto_d

    .line 1051
    .restart local v8    # "first_play_buffer":J
    :cond_1c
    const-string/jumbo v20, "3000"

    goto/16 :goto_e

    .line 1054
    .restart local v16    # "play_buffer":J
    :cond_1d
    const-wide/16 v22, 0x0

    goto/16 :goto_f

    .line 1056
    .end local v6    # "accelerate_speed":F
    .end local v7    # "bsendsei":Z
    .end local v8    # "first_play_buffer":J
    .end local v16    # "play_buffer":J
    .end local v18    # "slow_speed":F
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Ljos;->a:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    move-object/from16 v20, v0

    new-instance v21, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->T:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->e:Ljjq;

    move-object/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;-><init>(Landroid/content/Context;Ljjq;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    .line 1058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    move-object/from16 v20, v0

    check-cast v20, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->setAudioStreamType(I)V

    .line 1059
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->y:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b

    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_10

    .line 1137
    :catch_0
    move-exception v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Ljoj;->e:I

    .line 1138
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->i:I

    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Ljos;->a:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Ljos;->b:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2f

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->T:Landroid/content/Context;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1f

    .line 1142
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v20, "com.taobao.taobaoavsdk.LoadSoFailed"

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1143
    .local v11, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->T:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1145
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_1f
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Z)V

    .line 1147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Ljos;->a:I

    goto/16 :goto_0

    .line 1096
    .restart local v10    # "i":I
    .restart local v12    # "key":I
    .restart local v19    # "value":Ljava/lang/Float;
    :cond_20
    const/16 v21, 0x0

    goto/16 :goto_12

    .line 1098
    :cond_21
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;

    move/from16 v20, v0

    if-eqz v20, :cond_d

    .line 1099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    move-object/from16 v20, v0

    check-cast v20, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;

    if-eqz v19, :cond_22

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v21

    :goto_16
    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->setPropertyFloat(IF)V

    goto/16 :goto_13

    :cond_22
    const/16 v21, 0x0

    goto :goto_16

    .line 1102
    .end local v12    # "key":I
    .end local v19    # "value":Ljava/lang/Float;
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->p:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->clear()V

    .line 1104
    .end local v10    # "i":I
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->q:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2a

    .line 1105
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->q:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v10, v0, :cond_29

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->q:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 1107
    .restart local v12    # "key":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->q:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 1108
    .local v19, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move/from16 v20, v0

    if-eqz v20, :cond_27

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    move-object/from16 v20, v0

    check-cast v20, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v19, :cond_26

    .end local v19    # "value":Ljava/lang/String;
    :goto_18
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setPropertyString(ILjava/lang/String;)V

    .line 1105
    :cond_25
    :goto_19
    add-int/lit8 v10, v10, 0x1

    goto :goto_17

    .line 1109
    .restart local v19    # "value":Ljava/lang/String;
    :cond_26
    const-string/jumbo v19, ""

    goto :goto_18

    .line 1111
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;

    move/from16 v20, v0

    if-eqz v20, :cond_25

    .line 1112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    move-object/from16 v20, v0

    check-cast v20, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;

    if-eqz v19, :cond_28

    .end local v19    # "value":Ljava/lang/String;
    :goto_1a
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->setPropertyString(ILjava/lang/String;)V

    goto :goto_19

    .restart local v19    # "value":Ljava/lang/String;
    :cond_28
    const-string/jumbo v19, ""

    goto :goto_1a

    .line 1115
    .end local v12    # "key":I
    .end local v19    # "value":Ljava/lang/String;
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->q:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->clear()V

    .line 1117
    .end local v10    # "i":I
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->j:Ljoq$b;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer;Ljoq$b;)V

    .line 1118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 1120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->e:Ljjq;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->e:Ljjq;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljjq;->a()Ljava/lang/String;

    move-result-object v20

    :goto_1b
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->t:I

    .line 1121
    move-object/from16 v0, p0

    iget v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->t:I

    move/from16 v20, v0

    if-gtz v20, :cond_2b

    .line 1122
    const/16 v20, 0x3a98

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->t:I

    .line 1124
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->e:Ljjq;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->e:Ljjq;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljjq;->a()Ljava/lang/String;

    move-result-object v20

    :goto_1c
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->u:I

    .line 1126
    move-object/from16 v0, p0

    iget v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->u:I

    move/from16 v20, v0

    if-gtz v20, :cond_2c

    .line 1127
    const/16 v20, 0x3

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->u:I

    .line 1132
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->prepareAsync()V

    .line 1135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Ljoj;->e:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1154
    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    move-object/from16 v20, v0

    goto/16 :goto_1

    .line 1120
    :cond_2d
    :try_start_2
    const-string/jumbo v20, "5"

    goto :goto_1b

    .line 1124
    :cond_2e
    const-string/jumbo v20, "5"
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1c

    .line 1151
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->ad:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x0

    invoke-interface/range {v20 .. v23}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    goto :goto_1d
.end method

.method static synthetic g(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->L:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method private g()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 1448
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v1, v1, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget v1, v1, Ljoj;->e:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget v1, v1, Ljoj;->e:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget v1, v1, Ljoj;->e:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->M:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->E:Z

    return v0
.end method

.method static synthetic j(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic k(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)F
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .prologue
    .line 58
    iget v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->W:F

    return v0
.end method

.method static synthetic l(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)F
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .prologue
    .line 58
    iget v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->aa:F

    return v0
.end method

.method static synthetic m(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->U:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->T:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic o(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$c;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->ag:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$c;

    return-object v0
.end method

.method private setCoverImg(I)V
    .locals 4
    .param p1, "coverResId"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, -0x2

    .line 677
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 680
    :cond_1
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->g:Landroid/widget/ImageView;

    if-nez v1, :cond_2

    .line 681
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->T:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->g:Landroid/widget/ImageView;

    .line 682
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 684
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 685
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 687
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->g:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 688
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x0

    .line 1159
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    if-nez v1, :cond_1

    .line 1210
    :cond_0
    :goto_0
    return-void

    .line 1161
    :cond_1
    iput-boolean v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->D:Z

    .line 1162
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->f:Ljju;

    if-eqz v1, :cond_2

    .line 1163
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "player start,mMediaPlayer :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v2, v2, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1164
    :cond_2
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    iget-boolean v1, v1, Ljos;->l:Z

    if-eqz v1, :cond_3

    .line 1165
    invoke-static {}, Ljoi;->a()Ljoi;

    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    invoke-static {v1, p0}, Ljoi;->a(Ljoj;Ljoj$a;)Ljoj;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    .line 1167
    :cond_3
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v1, v1, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    if-nez v1, :cond_4

    .line 1170
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    .line 6836
    invoke-direct {p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->f()Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    move-result-object v2

    .line 1170
    iput-object v2, v1, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    .line 1172
    :cond_4
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    iget-boolean v1, v1, Ljos;->l:Z

    if-eqz v1, :cond_5

    .line 1173
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-boolean v1, v1, Ljoj;->d:Z

    if-eqz v1, :cond_9

    .line 1174
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iput-boolean v3, v1, Ljoj;->d:Z

    .line 1175
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v1, v1, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    if-eqz v1, :cond_5

    .line 1176
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget v1, v1, Ljoj;->c:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_7

    .line 1177
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget v1, v1, Ljoj;->b:I

    invoke-virtual {p0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(I)V

    .line 1194
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->g()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1197
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v1, v1, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->j:Ljoq$b;

    invoke-direct {p0, v1, v2}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer;Ljoq$b;)V

    .line 1198
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v1, v1, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->start()V

    .line 1199
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->R:Ljava/util/List;

    if-eqz v1, :cond_a

    .line 1200
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->R:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$b;

    .line 1201
    .local v0, "listener":Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$b;
    if-eqz v0, :cond_6

    .line 1202
    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v2, v2, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    invoke-interface {v0, v2}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$b;->a_(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    goto :goto_2

    .line 1178
    .end local v0    # "listener":Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$b;
    :cond_7
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget v1, v1, Ljoj;->c:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_8

    .line 1179
    invoke-virtual {p0, v3}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(I)V

    goto :goto_1

    .line 1180
    :cond_8
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget v1, v1, Ljoj;->c:I

    if-ne v1, v5, :cond_5

    .line 1181
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget v1, v1, Ljoj;->b:I

    invoke-virtual {p0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(I)V

    .line 1182
    invoke-virtual {p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a()V

    goto :goto_1

    .line 1187
    :cond_9
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v1, v1, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    if-eqz v1, :cond_5

    .line 1188
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v1, v1, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->getVideoWidth()I

    move-result v1

    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v2, v2, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    invoke-virtual {v2}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->getVideoHeight()I

    move-result v2

    iget-object v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v3, v3, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    .line 1189
    invoke-virtual {v3}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->getVideoSarNum()I

    move-result v3

    iget-object v4, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v4, v4, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    invoke-virtual {v4}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->getVideoSarDen()I

    move-result v4

    .line 1188
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b(IIII)V

    goto/16 :goto_1

    .line 1207
    :cond_a
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iput v5, v1, Ljoj;->e:I

    .line 1209
    :cond_b
    iput v5, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->i:I

    goto/16 :goto_0
.end method

.method public final a(FF)V
    .locals 1
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .prologue
    .line 933
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    invoke-virtual {v0, p1, p2}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->setVolume(FF)V

    .line 936
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 4
    .param p1, "msec"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1419
    invoke-direct {p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1420
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->f:Ljju;

    if-eqz v0, :cond_0

    .line 1421
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "player seekTo begin: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1422
    :cond_0
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->seekTo(J)V

    .line 1423
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->f:Ljju;

    if-eqz v0, :cond_1

    .line 1424
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "player seekTo end: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1425
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->r:I

    .line 1429
    :goto_0
    return-void

    .line 1427
    :cond_2
    iput p1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->r:I

    goto :goto_0
.end method

.method public final a(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;)V
    .locals 1
    .param p1, "l"    # Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->S:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1312
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->S:Ljava/util/List;

    .line 1314
    :cond_0
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->S:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1315
    return-void
.end method

.method public final a(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$b;)V
    .locals 1
    .param p1, "l"    # Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$b;

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->R:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1299
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->R:Ljava/util/List;

    .line 1301
    :cond_0
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->R:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1302
    return-void
.end method

.method public final a(Ljos;)V
    .locals 4
    .param p1, "config"    # Ljos;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 495
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    iput-object p1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    .line 499
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    iget-object v0, v0, Ljos;->p:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->setBusinessId(Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    iget v0, v0, Ljos;->c:I

    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    iget v1, v1, Ljos;->i:I

    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    iget v2, v2, Ljos;->j:I

    iget-object v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    iget v3, v3, Ljos;->k:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(IIII)V

    .line 501
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    iget v0, v0, Ljos;->h:I

    invoke-direct {p0, v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->setCoverImg(I)V

    .line 502
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    iget-object v0, v0, Ljos;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 503
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    const-string/jumbo v1, "tblive"

    iput-object v1, v0, Ljos;->o:Ljava/lang/String;

    .line 505
    :cond_2
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    iget-object v0, v0, Ljos;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 506
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    .line 2040
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 506
    iput-object v1, v0, Ljos;->n:Ljava/lang/String;

    .line 508
    :cond_3
    const-string/jumbo v0, "TBLive"

    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    iget-object v1, v1, Ljos;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 509
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ljos;->l:Z

    .line 511
    :cond_4
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    iget-boolean v0, v0, Ljos;->l:Z

    if-eqz v0, :cond_5

    .line 512
    invoke-static {}, Ljoi;->a()Ljoi;

    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    iget-object v0, v0, Ljos;->n:Ljava/lang/String;

    invoke-static {v0, p0}, Ljoi;->a(Ljava/lang/String;Ljoj$a;)Ljoj;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    .line 517
    :goto_1
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->af:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->registerOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 519
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->G:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->registerOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 520
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->ab:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->registerOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 521
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->ad:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->registerOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 522
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->ac:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->registerOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 523
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->ae:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->registerOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    goto/16 :goto_0

    .line 515
    :cond_5
    new-instance v0, Ljoj;

    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    iget-object v1, v1, Ljos;->n:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Ljoj;-><init>(Ljava/lang/String;Ljoj$a;)V

    iput-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    goto :goto_1
.end method

.method public final a(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 1
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->K:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1250
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->K:Ljava/util/List;

    .line 1252
    :cond_0
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->K:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1253
    return-void
.end method

.method public final a(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 1
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->O:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1268
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->O:Ljava/util/List;

    .line 1270
    :cond_0
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->O:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1271
    return-void
.end method

.method public final a(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 1
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->Q:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1286
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->Q:Ljava/util/List;

    .line 1288
    :cond_0
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->Q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1289
    return-void
.end method

.method public final a(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 1
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->M:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1219
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->M:Ljava/util/List;

    .line 1221
    :cond_0
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->M:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1222
    return-void
.end method

.method public a(Z)V
    .locals 7
    .param p1, "cleartargetstate"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 857
    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    if-nez v2, :cond_1

    .line 909
    :cond_0
    :goto_0
    return-void

    .line 859
    :cond_1
    if-eqz p1, :cond_4

    .line 860
    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->S:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 861
    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->S:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;

    .line 862
    .local v0, "listener":Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;
    if-eqz v0, :cond_2

    .line 863
    iget-object v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v3, v3, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    invoke-interface {v0, v3}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    goto :goto_1

    .line 866
    .end local v0    # "listener":Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;
    :cond_3
    iput v5, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->r:I

    .line 867
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->d:Ljava/lang/String;

    .line 870
    :cond_4
    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->T:Landroid/content/Context;

    if-eqz v2, :cond_5

    .line 871
    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->T:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    invoke-virtual {v2, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 873
    :cond_5
    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v2, v2, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    if-eqz v2, :cond_0

    .line 874
    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v2, v2, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    invoke-virtual {v2}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->resetListeners()V

    .line 876
    :try_start_0
    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v2, v2, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    instance-of v2, v2, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v2, :cond_7

    .line 877
    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v1, v2, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    check-cast v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 878
    .local v1, "mediaPayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$9;

    invoke-direct {v3, p0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$9;-><init>(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 892
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 900
    .end local v1    # "mediaPayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    :goto_2
    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iput-object v6, v2, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    .line 901
    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a:Ljoq;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a:Ljoq;

    instance-of v2, v2, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;

    if-eqz v2, :cond_6

    .line 902
    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a:Ljoq;

    check-cast v2, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;

    .line 3220
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_6

    .line 3223
    iget-object v3, v2, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->a:Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;

    if-eqz v3, :cond_6

    iget-object v3, v2, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->a:Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;

    .line 4089
    iget-object v3, v3, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;->b:Landroid/view/Surface;

    .line 3223
    if-eqz v3, :cond_6

    .line 3224
    iget-object v3, v2, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->a:Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;

    .line 5089
    iget-object v3, v3, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;->b:Landroid/view/Surface;

    .line 3224
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 3225
    iget-object v2, v2, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->a:Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;

    .line 6089
    iput-object v6, v2, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;->b:Landroid/view/Surface;

    .line 904
    :cond_6
    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iput v5, v2, Ljoj;->e:I

    .line 905
    if-eqz p1, :cond_0

    .line 906
    iput v5, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->i:I

    goto/16 :goto_0

    .line 895
    :cond_7
    :try_start_1
    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v2, v2, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    invoke-virtual {v2}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->release()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method public b()V
    .locals 1

    .prologue
    .line 1395
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->D:Z

    .line 1396
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b(Z)V

    .line 1397
    return-void
.end method

.method public final b(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;)V
    .locals 1
    .param p1, "l"    # Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->S:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1319
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->S:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1321
    :cond_0
    return-void
.end method

.method public final b(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$b;)V
    .locals 1
    .param p1, "l"    # Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$b;

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->R:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1306
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->R:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1308
    :cond_0
    return-void
.end method

.method public final b(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 1
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->K:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1257
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->K:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1259
    :cond_0
    return-void
.end method

.method public final b(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 1
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->O:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1275
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->O:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1277
    :cond_0
    return-void
.end method

.method public final b(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 1
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->Q:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1293
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->Q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1295
    :cond_0
    return-void
.end method

.method public final b(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 1
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->M:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1226
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->M:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1228
    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 844
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    iget-boolean v0, v0, Ljos;->l:Z

    if-eqz v0, :cond_1

    .line 845
    invoke-static {}, Ljoi;->a()Ljoi;

    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    iget-object v1, v0, Ljos;->n:Ljava/lang/String;

    .line 3044
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3047
    sget-object v0, Ljoi;->a:Ljoh;

    invoke-virtual {v0}, Ljoh;->snapshot()Ljava/util/Map;

    move-result-object v0

    .line 3048
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3049
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3050
    sget-object v3, Ljoi;->a:Ljoh;

    invoke-virtual {v3, v0}, Ljoh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljoj;

    .line 3051
    iget-object v3, v0, Ljoj;->g:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 3052
    iget-object v3, v0, Ljoj;->g:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3053
    iget-object v0, v0, Ljoj;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 3054
    sput-object p0, Ljoi;->b:Ljoj$a;

    .line 3055
    sget-object v0, Ljoi;->a:Ljoh;

    invoke-virtual {v0, v1}, Ljoh;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 848
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Z)V

    .line 850
    :cond_2
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 1432
    invoke-direct {p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x5

    .line 236
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    iget-boolean v1, v1, Ljos;->l:Z

    if-eqz v1, :cond_0

    .line 237
    invoke-static {}, Ljoi;->a()Ljoi;

    invoke-static {}, Ljoi;->b()V

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iput v2, v1, Ljoj;->e:I

    .line 240
    iput v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->i:I

    .line 241
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->J:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    if-eqz v1, :cond_1

    .line 242
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->J:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v2, v2, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    invoke-interface {v1, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 244
    :cond_1
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->K:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 245
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->K:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 246
    .local v0, "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
    if-eqz v0, :cond_2

    .line 247
    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v2, v2, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    invoke-interface {v0, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    goto :goto_0

    .line 250
    .end local v0    # "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
    :cond_3
    return-void
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    if-eqz v0, :cond_0

    .line 1442
    iget v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->s:I

    .line 1444
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConfig()Ljos;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1407
    invoke-direct {p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1408
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v0, v0

    .line 1410
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentState()I
    .locals 1

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget v0, v0, Ljoj;->e:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDestoryState()I
    .locals 1

    .prologue
    .line 1437
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1400
    invoke-direct {p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1401
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    .line 1403
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getRenderView()Ljoq;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a:Ljoq;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->getVideoHeight()I

    move-result v0

    .line 922
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->getVideoWidth()I

    move-result v0

    .line 915
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 171
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 205
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    iget-boolean v0, v0, Ljos;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->T:Landroid/content/Context;

    if-ne v0, p1, :cond_0

    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b(Z)V

    .line 190
    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    iget-boolean v0, v0, Ljos;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->T:Landroid/content/Context;

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->D:Z

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a()V

    .line 183
    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 200
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 176
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 195
    return-void
.end method

.method public setAspectRatio(I)V
    .locals 1
    .param p1, "aspectRatio"    # I

    .prologue
    .line 716
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    iput p1, v0, Ljos;->d:I

    .line 718
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a:Ljoq;

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a:Ljoq;

    invoke-interface {v0, p1}, Ljoq;->setAspectRatio(I)V

    .line 722
    :cond_0
    return-void
.end method

.method public setAudioOnly(Z)V
    .locals 1
    .param p1, "audioOnly"    # Z

    .prologue
    .line 954
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    iget v0, v0, Ljos;->b:I

    if-nez v0, :cond_0

    .line 955
    iput-boolean p1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->C:Z

    .line 957
    :cond_0
    return-void
.end method

.method public setBusinessId(Ljava/lang/String;)V
    .locals 1
    .param p1, "businessId"    # Ljava/lang/String;

    .prologue
    .line 532
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    iput-object p1, v0, Ljos;->p:Ljava/lang/String;

    .line 535
    :cond_0
    return-void
.end method

.method public setCdnIP(Ljava/lang/String;)V
    .locals 3
    .param p1, "cdnip"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 547
    const-string/jumbo v1, " "

    const-string/jumbo v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "str":Ljava/lang/String;
    iput-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->I:Ljava/lang/String;

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "CDN IP: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->I:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    return-void
.end method

.method public setConfigAdapter(Ljjq;)V
    .locals 0
    .param p1, "adapter"    # Ljjq;

    .prologue
    .line 585
    iput-object p1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->e:Ljjq;

    .line 586
    return-void
.end method

.method public setCustomLibLoader(Ljjr;)V
    .locals 0
    .param p1, "customLibLoader"    # Ljjr;

    .prologue
    .line 491
    iput-object p1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->h:Ljjr;

    .line 492
    return-void
.end method

.method public setLogAdapter(Ljju;)V
    .locals 0
    .param p1, "adapter"    # Ljju;

    .prologue
    .line 589
    iput-object p1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->f:Ljju;

    .line 590
    return-void
.end method

.method public setLooping(Z)V
    .locals 1
    .param p1, "looping"    # Z

    .prologue
    .line 926
    iput-boolean p1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->z:Z

    .line 927
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->setLooping(Z)V

    .line 930
    :cond_0
    return-void
.end method

.method public setMonitorAdapter(Ljjv;)V
    .locals 0
    .param p1, "adapter"    # Ljjv;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 595
    return-void
.end method

.method public setMuted(Z)V
    .locals 6
    .param p1, "muted"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 939
    iput-boolean p1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->y:Z

    .line 940
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    if-nez v0, :cond_1

    .line 951
    :cond_0
    :goto_0
    return-void

    .line 942
    :cond_1
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    instance-of v0, v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_3

    .line 943
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/16 v1, 0x5210

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v1, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setPropertyLong(IJ)V

    goto :goto_0

    :cond_2
    move-wide v2, v4

    goto :goto_1

    .line 945
    :cond_3
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    instance-of v0, v0, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;

    if-eqz v0, :cond_5

    .line 946
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    check-cast v0, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;

    const/16 v1, 0x4e21

    if-eqz p1, :cond_4

    :goto_2
    invoke-virtual {v0, v1, v2, v3}, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->setProperty64(IJ)V

    goto :goto_0

    :cond_4
    move-wide v2, v4

    goto :goto_2

    .line 948
    :cond_5
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    instance-of v0, v0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    invoke-virtual {v0, v1, v1}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->setVolume(FF)V

    goto :goto_0
.end method

.method public setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1245
    iput-object p1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->J:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 1246
    return-void
.end method

.method public setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1263
    iput-object p1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->N:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 1264
    return-void
.end method

.method public setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1281
    iput-object p1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->P:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 1282
    return-void
.end method

.method public setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1214
    iput-object p1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->L:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 1215
    return-void
.end method

.method public setPlayerType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 558
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    iget v0, v0, Ljos;->a:I

    if-eq v0, p1, :cond_0

    .line 559
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    iput p1, v0, Ljos;->a:I

    .line 560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->B:Z

    .line 562
    :cond_0
    return-void
.end method

.method public setRenderType(I)V
    .locals 4
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 725
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    iget v0, v0, Ljos;->i:I

    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    iget v1, v1, Ljos;->j:I

    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    iget v2, v2, Ljos;->k:I

    .line 2731
    iget-object v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    iget v3, v3, Ljos;->c:I

    if-ne v3, p1, :cond_1

    iget-object v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    iget v3, v3, Ljos;->i:I

    if-ne v3, v0, :cond_1

    iget-object v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    iget v3, v3, Ljos;->j:I

    if-ne v3, v1, :cond_1

    iget-object v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    iget v3, v3, Ljos;->k:I

    if-ne v3, v2, :cond_1

    .line 2733
    :cond_0
    :goto_0
    return-void

    .line 2734
    :cond_1
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(IIII)V

    goto :goto_0
.end method

.method public setScenarioType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 552
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    iput p1, v0, Ljos;->b:I

    .line 555
    :cond_0
    return-void
.end method

.method public setSurfaceListener(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$c;)V
    .locals 0
    .param p1, "listener"    # Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$c;

    .prologue
    .line 1456
    iput-object p1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->ag:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$c;

    .line 1457
    return-void
.end method

.method public setTimeout(J)V
    .locals 7
    .param p1, "timeout_us"    # J

    .prologue
    .line 975
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 976
    iput-wide p1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->x:J

    .line 979
    :goto_0
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    instance-of v0, v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/4 v1, 0x1

    const-string/jumbo v2, "timeout"

    iget-wide v4, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->x:J

    invoke-virtual {v0, v1, v2, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setOption(ILjava/lang/String;J)V

    .line 981
    :cond_0
    return-void

    .line 978
    :cond_1
    const-wide/32 v0, 0x989680

    iput-wide v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->x:J

    goto :goto_0
.end method

.method public setVideoDefinition(Ljava/lang/String;)V
    .locals 1
    .param p1, "videoDefinition"    # Ljava/lang/String;

    .prologue
    .line 579
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    iput-object p1, v0, Ljos;->u:Ljava/lang/String;

    .line 582
    :cond_0
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, -0x1

    .line 1345
    if-nez p1, :cond_1

    .line 1367
    :cond_0
    :goto_0
    return-void

    .line 1348
    :cond_1
    iput-object p1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->d:Ljava/lang/String;

    .line 1349
    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->d:Ljava/lang/String;

    const-string/jumbo v3, "//"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1350
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "https:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->d:Ljava/lang/String;

    .line 1352
    :cond_2
    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v2, v2, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget v2, v2, Ljoj;->e:I

    if-nez v2, :cond_0

    .line 1353
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->d:Ljava/lang/String;

    .line 1354
    .local v1, "playUrl":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->C:Z

    if-eqz v2, :cond_3

    .line 1355
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1356
    .local v0, "appendQuery":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "onlyaudio=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1357
    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->d:Ljava/lang/String;

    invoke-static {v2, v0}, Ljok;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 1360
    .end local v0    # "appendQuery":Ljava/lang/StringBuilder;
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v2, v2, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    invoke-virtual {v2, v1}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1362
    :catch_0
    move-exception v2

    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iput v4, v2, Ljoj;->e:I

    .line 1363
    iput v4, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->i:I

    .line 1364
    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->ad:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->F:Ljoj;

    iget-object v3, v3, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    goto :goto_0
.end method
