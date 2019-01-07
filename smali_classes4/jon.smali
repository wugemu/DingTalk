.class public final Ljon;
.super Ljava/lang/Object;
.source "PlayerController.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;
.implements Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$b;
.implements Ljom$a;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljon$a;,
        Ljon$b;
    }
.end annotation


# instance fields
.field private A:Ljom;

.field private B:I

.field public a:Ljon$b;

.field public b:Z

.field public c:Ljon$a;

.field d:Landroid/view/ViewGroup;

.field e:Z

.field f:F

.field g:F

.field h:Z

.field i:Landroid/animation/AnimatorSet;

.field j:Landroid/animation/AnimatorSet;

.field k:Landroid/widget/FrameLayout;

.field l:Landroid/view/ViewGroup$LayoutParams;

.field m:I

.field n:I

.field o:I

.field p:I

.field q:I

.field r:[I

.field private s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

.field private t:Ljol;

.field private u:Landroid/os/Handler;

.field private v:Landroid/content/Context;

.field private w:Landroid/view/View;

.field private x:Z

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "videoView"    # Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean v1, p0, Ljon;->x:Z

    .line 61
    iput-boolean v1, p0, Ljon;->y:Z

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Ljon;->z:I

    .line 79
    iput-boolean v1, p0, Ljon;->b:Z

    .line 392
    iput v1, p0, Ljon;->B:I

    .line 567
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Ljon;->r:[I

    .line 87
    iput-object p1, p0, Ljon;->v:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .line 89
    iget-object v0, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 90
    iget-object v0, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 91
    iget-object v0, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 92
    iget-object v0, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$b;)V

    .line 93
    iget-object v0, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;)V

    .line 94
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Ljom;

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-direct {v0, p1}, Ljom;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Ljon;->A:Ljom;

    .line 97
    :cond_0
    return-void
.end method

.method private static a(Landroid/app/Activity;)I
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/16 v2, 0x12

    .line 772
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v1, v2, :cond_0

    .line 773
    invoke-static {p0}, Ljon;->b(Landroid/app/Activity;)I

    move-result v0

    .line 779
    .local v0, "width":I
    :goto_0
    return v0

    .line 774
    .end local v0    # "width":I
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v2, :cond_1

    .line 775
    invoke-static {p0}, Ljon;->b(Landroid/app/Activity;)I

    move-result v1

    invoke-static {p0}, Ljon;->b(Landroid/content/Context;)I

    move-result v2

    sub-int v0, v1, v2

    .restart local v0    # "width":I
    goto :goto_0

    .line 777
    .end local v0    # "width":I
    :cond_1
    invoke-static {p0}, Ljon;->c(Landroid/content/Context;)I

    move-result v0

    .restart local v0    # "width":I
    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 753
    const/4 v3, 0x0

    .line 754
    .local v3, "dpi":I
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 755
    .local v1, "display":Landroid/view/Display;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 759
    .local v2, "dm":Landroid/util/DisplayMetrics;
    :try_start_0
    const-string/jumbo v6, "android.view.Display"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 761
    .local v0, "c":Ljava/lang/Class;
    const-string/jumbo v6, "getRealMetrics"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/util/DisplayMetrics;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 762
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    .end local v0    # "c":Ljava/lang/Class;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 764
    :catch_0
    move-exception v4

    .line 765
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Ljon;)Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;
    .locals 1
    .param p0, "x0"    # Ljon;

    .prologue
    .line 38
    iget-object v0, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    return-object v0
.end method

.method private static a(Landroid/view/View;Z)V
    .locals 4
    .param p0, "decorView"    # Landroid/view/View;
    .param p1, "visible"    # Z

    .prologue
    .line 814
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-le v2, v3, :cond_0

    if-eqz p0, :cond_0

    .line 815
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 816
    .local v0, "currentSystemUIVisibility":I
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 818
    .local v1, "newSystemUIVisibility":I
    :goto_0
    if-eq v1, v0, :cond_0

    .line 819
    invoke-virtual {p0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 822
    .end local v0    # "currentSystemUIVisibility":I
    .end local v1    # "newSystemUIVisibility":I
    :cond_0
    return-void

    .line 816
    .restart local v0    # "currentSystemUIVisibility":I
    :cond_1
    const/16 v1, 0x1006

    goto :goto_0
.end method

.method static synthetic a(Ljon;Z)Z
    .locals 0
    .param p0, "x0"    # Ljon;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Ljon;->b:Z

    return p1
.end method

.method private static b(Landroid/app/Activity;)I
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 783
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 787
    const/4 v1, 0x0

    .line 788
    .local v1, "result":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "status_bar_height"

    const-string/jumbo v4, "dimen"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 789
    .local v0, "resourceId":I
    if-lez v0, :cond_0

    .line 790
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 792
    :cond_0
    return v1
.end method

.method private static b(I)Ljava/lang/String;
    .locals 11
    .param p0, "timeMs"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 541
    div-int/lit16 v3, p0, 0x3e8

    .line 542
    .local v3, "totalSeconds":I
    rem-int/lit8 v2, v3, 0x3c

    .line 543
    .local v2, "seconds":I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 544
    .local v1, "minutes":I
    div-int/lit16 v0, v3, 0xe10

    .line 546
    .local v0, "hours":I
    if-lez v0, :cond_0

    .line 547
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string/jumbo v5, "%02d:%02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 549
    :goto_0
    return-object v4

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string/jumbo v5, "%02d:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method static synthetic b(Ljon;)Ljol;
    .locals 1
    .param p0, "x0"    # Ljon;

    .prologue
    .line 38
    iget-object v0, p0, Ljon;->t:Ljol;

    return-object v0
.end method

.method private static c(Landroid/content/Context;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 796
    const/4 v3, 0x0

    .line 797
    .local v3, "dpi":I
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 798
    .local v1, "display":Landroid/view/Display;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 802
    .local v2, "dm":Landroid/util/DisplayMetrics;
    :try_start_0
    const-string/jumbo v6, "android.view.Display"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 804
    .local v0, "c":Ljava/lang/Class;
    const-string/jumbo v6, "getRealMetrics"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/util/DisplayMetrics;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 805
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    .end local v0    # "c":Ljava/lang/Class;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 807
    :catch_0
    move-exception v4

    .line 808
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Ljon;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Ljon;

    .prologue
    .line 38
    iget-object v0, p0, Ljon;->v:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Ljon;)Ljom;
    .locals 1
    .param p0, "x0"    # Ljon;

    .prologue
    .line 38
    iget-object v0, p0, Ljon;->A:Ljom;

    return-object v0
.end method

.method private g()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 477
    iget-object v0, p0, Ljon;->t:Ljol;

    if-nez v0, :cond_1

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    invoke-direct {p0}, Ljon;->h()V

    .line 481
    iput v2, p0, Ljon;->B:I

    .line 482
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 483
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Ljon;->t:Ljol;

    iget v1, v1, Ljol;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 485
    :cond_2
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 486
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->e:Landroid/widget/TextView;

    invoke-static {v2}, Ljon;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    :cond_3
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->f:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->f:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 490
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->f:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    goto :goto_0
.end method

.method private h()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 527
    iget-object v0, p0, Ljon;->u:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Ljon;->u:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 529
    iput-object v1, p0, Ljon;->u:Landroid/os/Handler;

    .line 531
    :cond_0
    return-void
.end method

.method private i()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 534
    iget-object v0, p0, Ljon;->u:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 535
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Ljon;->u:Landroid/os/Handler;

    .line 536
    iget-object v0, p0, Ljon;->u:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 538
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 268
    iget-object v0, p0, Ljon;->t:Ljol;

    if-nez v0, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->a:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 274
    :cond_2
    iput p1, p0, Ljon;->z:I

    .line 275
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 277
    :pswitch_0
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->b:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 278
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 280
    :cond_3
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 281
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 283
    :cond_4
    iget-boolean v0, p0, Ljon;->y:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->a:Landroid/view/View;

    sget v1, Ljng$a;->avsdk_video_play_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 288
    :pswitch_1
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->b:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 289
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 291
    :cond_5
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 292
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 294
    :cond_6
    iget-boolean v0, p0, Ljon;->y:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 299
    :pswitch_2
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->b:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 300
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 302
    :cond_7
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 303
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 305
    :cond_8
    iget-boolean v0, p0, Ljon;->y:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->a:Landroid/view/View;

    sget v1, Ljng$a;->avsdk_video_play_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 310
    :pswitch_3
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->b:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 311
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 313
    :cond_9
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    .line 314
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 316
    :cond_a
    iget-boolean v0, p0, Ljon;->y:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 462
    iget-object v0, p0, Ljon;->t:Ljol;

    if-nez v0, :cond_0

    .line 474
    :goto_0
    return-void

    .line 465
    :cond_0
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljon;->v:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Ljon;->v:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Ljon$4;

    invoke-direct {v1, p0}, Ljon$4;-><init>(Ljon;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 473
    :cond_1
    invoke-direct {p0}, Ljon;->h()V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 10
    .param p1, "bOnlyChangeIcon"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v8, 0x12c

    const/4 v7, 0x2

    const/16 v3, 0x12

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 365
    iget-object v0, p0, Ljon;->t:Ljol;

    if-nez v0, :cond_1

    .line 2575
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    iget-boolean v0, p0, Ljon;->b:Z

    if-eqz v0, :cond_9

    .line 369
    iput-boolean v6, p0, Ljon;->b:Z

    .line 370
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 371
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Ljon;->t:Ljol;

    iget v1, v1, Ljol;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 374
    :cond_2
    iget-object v0, p0, Ljon;->a:Ljon$b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljon;->a:Ljon$b;

    invoke-interface {v0}, Ljon$b;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1668
    :cond_3
    iget-object v0, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljon;->v:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljon;->h:Z

    if-nez v0, :cond_0

    .line 1670
    iget-object v0, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getConfig()Ljos;

    move-result-object v0

    .line 1671
    if-eqz v0, :cond_0

    iget v0, v0, Ljos;->c:I

    if-eq v0, v5, :cond_0

    .line 1673
    iput-boolean v5, p0, Ljon;->h:Z

    .line 1674
    iget-object v0, p0, Ljon;->d:Landroid/view/ViewGroup;

    if-nez v0, :cond_4

    .line 1675
    iget-object v0, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Ljon;->d:Landroid/view/ViewGroup;

    .line 1677
    :cond_4
    iget v0, p0, Ljon;->n:I

    if-nez v0, :cond_8

    iget-object v0, p0, Ljon;->v:Landroid/content/Context;

    invoke-static {v0}, Ljon;->a(Landroid/content/Context;)I

    move-result v0

    :goto_1
    iput v0, p0, Ljon;->n:I

    .line 1678
    iget-object v0, p0, Ljon;->v:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Ljon;->a(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Ljon;->m:I

    .line 1679
    iget-object v0, p0, Ljon;->k:Landroid/widget/FrameLayout;

    if-nez v0, :cond_5

    .line 1680
    iget-object v0, p0, Ljon;->v:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Ljon;->k:Landroid/widget/FrameLayout;

    .line 1682
    :cond_5
    iget-object v0, p0, Ljon;->k:Landroid/widget/FrameLayout;

    invoke-static {v0, v5}, Ljon;->a(Landroid/view/View;Z)V

    .line 1683
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v3, :cond_6

    .line 1684
    iget-object v0, p0, Ljon;->v:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1685
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1686
    iget-object v0, p0, Ljon;->v:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1687
    iget-object v0, p0, Ljon;->v:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1689
    :cond_6
    iget v0, p0, Ljon;->n:I

    iget v1, p0, Ljon;->o:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Ljon;->r:[I

    aget v1, v1, v6

    add-int/2addr v1, v0

    .line 1690
    iget v0, p0, Ljon;->m:I

    iget v2, p0, Ljon;->p:I

    sub-int/2addr v0, v2

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Ljon;->r:[I

    aget v2, v2, v5

    add-int/2addr v0, v2

    .line 1692
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_7

    .line 1693
    iget-object v2, p0, Ljon;->v:Landroid/content/Context;

    invoke-static {v2}, Ljon;->b(Landroid/content/Context;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    .line 1696
    :cond_7
    iget-object v2, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    const-string/jumbo v3, "translationX"

    new-array v4, v5, [F

    int-to-float v1, v1

    aput v1, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1697
    iget-object v2, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    const-string/jumbo v3, "translationY"

    new-array v4, v5, [F

    int-to-float v0, v0

    aput v0, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1698
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Ljon;->j:Landroid/animation/AnimatorSet;

    .line 1699
    iget-object v2, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    const-string/jumbo v3, "rotation"

    new-array v4, v5, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1700
    new-instance v3, Ljon$7;

    invoke-direct {v3, p0}, Ljon$7;-><init>(Ljon;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1712
    iget-object v3, p0, Ljon;->j:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1713
    iget-object v3, p0, Ljon;->j:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1714
    iget-object v2, p0, Ljon;->j:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1715
    iget-object v1, p0, Ljon;->j:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1716
    iget-object v0, p0, Ljon;->j:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1717
    iget-object v0, p0, Ljon;->j:Landroid/animation/AnimatorSet;

    new-instance v1, Ljon$8;

    invoke-direct {v1, p0}, Ljon$8;-><init>(Ljon;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_0

    .line 1677
    :cond_8
    iget v0, p0, Ljon;->n:I

    goto/16 :goto_1

    .line 380
    :cond_9
    iput-boolean v5, p0, Ljon;->b:Z

    .line 381
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    .line 382
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Ljon;->t:Ljol;

    iget v1, v1, Ljol;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 385
    :cond_a
    iget-object v0, p0, Ljon;->a:Ljon$b;

    if-eqz v0, :cond_b

    iget-object v0, p0, Ljon;->a:Ljon$b;

    invoke-interface {v0}, Ljon$b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2570
    :cond_b
    iput-boolean v6, p0, Ljon;->e:Z

    .line 2571
    iget-object v0, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljon;->v:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljon;->h:Z

    if-nez v0, :cond_0

    .line 2573
    iget-object v0, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getConfig()Ljos;

    move-result-object v0

    .line 2574
    if-eqz v0, :cond_0

    iget v0, v0, Ljos;->c:I

    if-eq v0, v5, :cond_0

    .line 2576
    iput-boolean v5, p0, Ljon;->h:Z

    .line 2577
    iget-object v0, p0, Ljon;->d:Landroid/view/ViewGroup;

    if-nez v0, :cond_c

    .line 2578
    iget-object v0, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Ljon;->d:Landroid/view/ViewGroup;

    .line 2580
    :cond_c
    iget-object v0, p0, Ljon;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Ljon;->q:I

    .line 2581
    iget-object v0, p0, Ljon;->l:Landroid/view/ViewGroup$LayoutParams;

    if-nez v0, :cond_d

    .line 2582
    iget-object v0, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Ljon;->l:Landroid/view/ViewGroup$LayoutParams;

    .line 2584
    :cond_d
    new-array v0, v7, [I

    iput-object v0, p0, Ljon;->r:[I

    .line 2585
    iget-object v0, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v1, p0, Ljon;->r:[I

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getLocationInWindow([I)V

    .line 2586
    iget-object v0, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getTranslationX()F

    move-result v0

    iput v0, p0, Ljon;->f:F

    .line 2587
    iget-object v0, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getTranslationY()F

    move-result v0

    iput v0, p0, Ljon;->g:F

    .line 2589
    iget-object v0, p0, Ljon;->k:Landroid/widget/FrameLayout;

    if-nez v0, :cond_e

    .line 2590
    iget-object v0, p0, Ljon;->v:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Ljon;->k:Landroid/widget/FrameLayout;

    .line 2592
    :cond_e
    iget-object v0, p0, Ljon;->k:Landroid/widget/FrameLayout;

    invoke-static {v0, v6}, Ljon;->a(Landroid/view/View;Z)V

    .line 2593
    iget v0, p0, Ljon;->n:I

    if-nez v0, :cond_11

    iget-object v0, p0, Ljon;->v:Landroid/content/Context;

    invoke-static {v0}, Ljon;->a(Landroid/content/Context;)I

    move-result v0

    :goto_2
    iput v0, p0, Ljon;->n:I

    .line 2594
    iget-object v0, p0, Ljon;->v:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Ljon;->a(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Ljon;->m:I

    .line 2595
    iget-object v0, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getWidth()I

    move-result v0

    iput v0, p0, Ljon;->o:I

    .line 2596
    iget-object v0, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getHeight()I

    move-result v0

    iput v0, p0, Ljon;->p:I

    .line 2597
    iget-object v0, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Ljon;->k:Landroid/widget/FrameLayout;

    if-eq v0, v1, :cond_f

    .line 2598
    iget-object v0, p0, Ljon;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2599
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Ljon;->o:I

    iget v2, p0, Ljon;->p:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2600
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2601
    iget-object v1, p0, Ljon;->r:[I

    aget v1, v1, v5

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2602
    iget-object v1, p0, Ljon;->r:[I

    aget v1, v1, v6

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2603
    iget-object v1, p0, Ljon;->k:Landroid/widget/FrameLayout;

    iget-object v2, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2606
    :cond_f
    iget v0, p0, Ljon;->n:I

    iget v1, p0, Ljon;->m:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Ljon;->r:[I

    aget v1, v1, v6

    sub-int v1, v0, v1

    .line 2607
    iget v0, p0, Ljon;->m:I

    iget v2, p0, Ljon;->n:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Ljon;->r:[I

    aget v2, v2, v5

    sub-int/2addr v0, v2

    .line 2609
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_10

    .line 2610
    iget-object v2, p0, Ljon;->v:Landroid/content/Context;

    invoke-static {v2}, Ljon;->b(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2613
    :cond_10
    iget-object v2, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    const-string/jumbo v3, "translationX"

    new-array v4, v5, [F

    int-to-float v1, v1

    aput v1, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 2614
    iget-object v2, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    const-string/jumbo v3, "translationY"

    new-array v4, v5, [F

    int-to-float v0, v0

    aput v0, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2615
    iget-object v2, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    const-string/jumbo v3, "rotation"

    new-array v4, v7, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2616
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Ljon;->i:Landroid/animation/AnimatorSet;

    .line 2617
    iget-object v3, p0, Ljon;->i:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2618
    iget-object v3, p0, Ljon;->i:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2619
    iget-object v3, p0, Ljon;->i:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2620
    iget-object v1, p0, Ljon;->i:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2621
    iget-object v0, p0, Ljon;->i:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2624
    new-instance v0, Ljon$5;

    invoke-direct {v0, p0}, Ljon$5;-><init>(Ljon;)V

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2640
    iget-object v0, p0, Ljon;->i:Landroid/animation/AnimatorSet;

    new-instance v1, Ljon$6;

    invoke-direct {v1, p0}, Ljon$6;-><init>(Ljon;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_0

    .line 2593
    :cond_11
    iget v0, p0, Ljon;->n:I

    goto/16 :goto_2

    .line 2615
    :array_0
    .array-data 4
        0x0
        0x42b40000    # 90.0f
    .end array-data
.end method

.method public final a()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 66
    iget-boolean v1, p0, Ljon;->b:Z

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {p0, v0}, Ljon;->a(Z)V

    .line 68
    const/4 v0, 0x1

    .line 70
    :cond_0
    return v0
.end method

.method public final a_(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 446
    iget-object v0, p0, Ljon;->t:Ljol;

    if-nez v0, :cond_0

    .line 458
    :goto_0
    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljon;->v:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 450
    iget-object v0, p0, Ljon;->v:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Ljon$3;

    invoke-direct {v1, p0}, Ljon$3;-><init>(Ljon;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 457
    :cond_1
    invoke-direct {p0}, Ljon;->i()V

    goto :goto_0
.end method

.method public final b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, -0x1

    .line 166
    iget-boolean v0, p0, Ljon;->y:Z

    if-nez v0, :cond_5

    .line 167
    iget-object v0, p0, Ljon;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ljng$c;->avsdk_video_bottom_controller:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ljon;->w:Landroid/view/View;

    .line 169
    new-instance v0, Ljol;

    invoke-direct {v0}, Ljol;-><init>()V

    iput-object v0, p0, Ljon;->t:Ljol;

    .line 170
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v1, p0, Ljon;->w:Landroid/view/View;

    sget v2, Ljng$b;->video_controller_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Ljol;->a:Landroid/view/View;

    .line 171
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v1, p0, Ljon;->w:Landroid/view/View;

    sget v2, Ljng$b;->video_controller_play_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Ljol;->b:Landroid/view/View;

    .line 172
    iget-object v1, p0, Ljon;->t:Ljol;

    iget-object v0, p0, Ljon;->w:Landroid/view/View;

    sget v2, Ljng$b;->video_controller_play_btn:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Ljol;->c:Landroid/widget/ImageView;

    .line 173
    iget-object v1, p0, Ljon;->t:Ljol;

    iget-object v0, p0, Ljon;->w:Landroid/view/View;

    sget v2, Ljng$b;->video_controller_current_time:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Ljol;->e:Landroid/widget/TextView;

    .line 174
    iget-object v1, p0, Ljon;->t:Ljol;

    iget-object v0, p0, Ljon;->w:Landroid/view/View;

    sget v2, Ljng$b;->video_controller_total_time:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Ljol;->d:Landroid/widget/TextView;

    .line 175
    iget-object v1, p0, Ljon;->t:Ljol;

    iget-object v0, p0, Ljon;->w:Landroid/view/View;

    sget v2, Ljng$b;->video_controller_seekBar:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, v1, Ljol;->f:Landroid/widget/SeekBar;

    .line 176
    iget-object v1, p0, Ljon;->t:Ljol;

    iget-object v0, p0, Ljon;->w:Landroid/view/View;

    sget v2, Ljng$b;->video_controller_fullscreen:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Ljol;->g:Landroid/widget/ImageView;

    .line 177
    iget-object v0, p0, Ljon;->t:Ljol;

    sget v1, Ljng$a;->avsdk_video_btn_pause:I

    iput v1, v0, Ljol;->i:I

    .line 178
    iget-object v0, p0, Ljon;->t:Ljol;

    sget v1, Ljng$a;->avsdk_video_btn_start:I

    iput v1, v0, Ljol;->h:I

    .line 179
    iget-object v0, p0, Ljon;->t:Ljol;

    sget v1, Ljng$a;->avsdk_video_fullscreen:I

    iput v1, v0, Ljol;->j:I

    .line 180
    iget-object v0, p0, Ljon;->t:Ljol;

    sget v1, Ljng$a;->avsdk_video_unfullscreen:I

    iput v1, v0, Ljol;->k:I

    .line 181
    iget-object v0, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v1, p0, Ljon;->w:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljon;->y:Z

    .line 1109
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1110
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->c:Landroid/widget/ImageView;

    new-instance v1, Ljon$1;

    invoke-direct {v1, p0}, Ljon$1;-><init>(Ljon;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1123
    iget-object v0, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1124
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Ljon;->t:Ljol;

    iget v1, v1, Ljol;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1131
    :cond_0
    :goto_0
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1132
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->g:Landroid/widget/ImageView;

    new-instance v1, Ljon$2;

    invoke-direct {v1, p0}, Ljon$2;-><init>(Ljon;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1140
    :cond_1
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->f:Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    .line 1141
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->f:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1142
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->f:Landroid/widget/SeekBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1145
    :cond_2
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1146
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->e:Landroid/widget/TextView;

    iget-object v1, p0, Ljon;->v:Landroid/content/Context;

    sget v2, Ljng$d;->avsdk_defaulttime:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1149
    :cond_3
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 1150
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->d:Landroid/widget/TextView;

    iget-object v1, p0, Ljon;->v:Landroid/content/Context;

    sget v2, Ljng$d;->avsdk_defaulttime:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1153
    :cond_4
    invoke-direct {p0}, Ljon;->i()V

    .line 1154
    invoke-virtual {p0}, Ljon;->d()V

    .line 200
    :cond_5
    return-void

    .line 1127
    :cond_6
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Ljon;->t:Ljol;

    iget v1, v1, Ljol;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 231
    iget-object v0, p0, Ljon;->t:Ljol;

    if-nez v0, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Ljon;->t:Ljol;

    iget v1, v1, Ljol;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 246
    :cond_2
    :goto_1
    iget-boolean v0, p0, Ljon;->b:Z

    if-eqz v0, :cond_4

    .line 247
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Ljon;->t:Ljol;

    iget v1, v1, Ljol;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 241
    :cond_3
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Ljon;->t:Ljol;

    iget v1, v1, Ljol;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 252
    :cond_4
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Ljon;->t:Ljol;

    iget v1, v1, Ljol;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 259
    iget-object v0, p0, Ljon;->t:Ljol;

    if-nez v0, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 324
    iget-object v0, p0, Ljon;->t:Ljol;

    if-nez v0, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Ljon;->t:Ljol;

    iget-object v0, v0, Ljol;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 505
    invoke-direct {p0}, Ljon;->h()V

    .line 506
    iget-object v0, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 507
    iget-object v0, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 508
    iget-object v0, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 509
    iget-object v0, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$b;)V

    .line 510
    iget-object v0, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;)V

    .line 511
    iget-object v0, p0, Ljon;->A:Ljom;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Ljon;->A:Ljom;

    invoke-virtual {v0, p0}, Ljom;->a(Ljom$a;)V

    .line 513
    const/4 v0, 0x0

    iput-object v0, p0, Ljon;->A:Ljom;

    .line 515
    :cond_0
    iget-object v0, p0, Ljon;->t:Ljol;

    if-nez v0, :cond_1

    .line 524
    :goto_0
    return-void

    .line 518
    :cond_1
    iget-boolean v0, p0, Ljon;->y:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljon;->w:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 519
    iget-object v0, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v1, p0, Ljon;->w:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 522
    :cond_2
    invoke-virtual {p0}, Ljon;->e()V

    goto :goto_0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 496
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 501
    :cond_0
    :goto_0
    return v1

    .line 3333
    :pswitch_0
    iget-object v0, p0, Ljon;->t:Ljol;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljon;->u:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3336
    iget-object v0, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getCurrentPosition()I

    move-result v3

    .line 3337
    iget-boolean v0, p0, Ljon;->x:Z

    if-nez v0, :cond_4

    iget v0, p0, Ljon;->B:I

    if-eq v3, v0, :cond_4

    .line 3338
    iput v3, p0, Ljon;->B:I

    .line 3339
    iget-object v0, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getDuration()I

    move-result v4

    .line 3342
    if-lez v4, :cond_5

    .line 3343
    const/high16 v0, 0x447a0000    # 1000.0f

    const/high16 v2, 0x3f800000    # 1.0f

    int-to-float v5, v3

    mul-float/2addr v2, v5

    int-to-float v5, v4

    div-float/2addr v2, v5

    mul-float/2addr v0, v2

    .line 3344
    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    .line 3345
    iget-object v0, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getBufferPercentage()I

    move-result v0

    .line 3347
    :goto_1
    iget-object v5, p0, Ljon;->t:Ljol;

    iget-object v5, v5, Ljol;->d:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 3348
    iget-object v5, p0, Ljon;->t:Ljol;

    iget-object v5, v5, Ljol;->d:Landroid/widget/TextView;

    invoke-static {v4}, Ljon;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3350
    :cond_1
    iget-object v4, p0, Ljon;->t:Ljol;

    iget-object v4, v4, Ljol;->e:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 3351
    iget-object v4, p0, Ljon;->t:Ljol;

    iget-object v4, v4, Ljol;->e:Landroid/widget/TextView;

    invoke-static {v3}, Ljon;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3353
    :cond_2
    iget-object v4, p0, Ljon;->t:Ljol;

    iget-object v4, v4, Ljol;->f:Landroid/widget/SeekBar;

    if-eqz v4, :cond_3

    .line 3354
    iget-object v4, p0, Ljon;->t:Ljol;

    iget-object v4, v4, Ljol;->f:Landroid/widget/SeekBar;

    invoke-virtual {v4, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 3355
    iget-object v2, p0, Ljon;->t:Ljol;

    iget-object v2, v2, Ljol;->f:Landroid/widget/SeekBar;

    mul-int/lit8 v0, v0, 0xa

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 3357
    :cond_3
    iget-object v0, p0, Ljon;->c:Ljon$a;

    if-eqz v0, :cond_4

    .line 3358
    iget-object v0, p0, Ljon;->c:Ljon$a;

    invoke-interface {v0, v3}, Ljon$a;->a(I)V

    .line 3361
    :cond_4
    iget-object v0, p0, Ljon;->u:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v4, 0x2bc

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_5
    move v0, v1

    move v2, v1

    goto :goto_1

    .line 496
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 0
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .prologue
    .line 423
    invoke-direct {p0}, Ljon;->g()V

    .line 424
    return-void
.end method

.method public final onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 428
    invoke-direct {p0}, Ljon;->g()V

    .line 429
    const/4 v0, 0x0

    return v0
.end method

.method public final onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 434
    iget-object v1, p0, Ljon;->t:Ljol;

    if-nez v1, :cond_1

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    invoke-direct {p0}, Ljon;->g()V

    .line 438
    iget-object v1, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getDuration()I

    move-result v0

    .line 439
    .local v0, "duration":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Ljon;->t:Ljol;

    iget-object v1, v1, Ljol;->d:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 440
    iget-object v1, p0, Ljon;->t:Ljol;

    iget-object v1, v1, Ljol;->d:Landroid/widget/TextView;

    invoke-static {v0}, Ljon;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "bar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 399
    if-eqz p3, :cond_0

    .line 400
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljon;->x:Z

    .line 401
    iget-object v1, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getDuration()I

    move-result v0

    .line 402
    .local v0, "duration":I
    int-to-float v1, v0

    int-to-float v2, p2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Ljon;->B:I

    .line 403
    iget-object v1, p0, Ljon;->t:Ljol;

    iget-object v1, v1, Ljol;->e:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 404
    iget-object v1, p0, Ljon;->t:Ljol;

    iget-object v1, v1, Ljol;->e:Landroid/widget/TextView;

    iget v2, p0, Ljon;->B:I

    invoke-static {v2}, Ljon;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    .end local v0    # "duration":I
    :cond_0
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "bar"    # Landroid/widget/SeekBar;

    .prologue
    .line 396
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "bar"    # Landroid/widget/SeekBar;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 410
    iget-object v1, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getDuration()I

    move-result v0

    .line 411
    .local v0, "duration":I
    if-lez v0, :cond_0

    iget v1, p0, Ljon;->B:I

    if-ge v1, v0, :cond_1

    .line 412
    :cond_0
    iget-object v1, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget v2, p0, Ljon;->B:I

    invoke-virtual {v1, v2}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(I)V

    .line 418
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljon;->x:Z

    .line 419
    return-void

    .line 415
    :cond_1
    iget-object v1, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->e()V

    .line 416
    iget-object v1, p0, Ljon;->s:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c()V

    goto :goto_0
.end method
