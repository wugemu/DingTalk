.class public final Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;
.super Landroid/widget/RelativeLayout;
.source "DdFullMediaPlayerController.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Lemh;
.implements Lemk;


# instance fields
.field private A:Landroid/media/AudioManager;

.field private final B:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private C:Landroid/animation/ObjectAnimator;

.field private D:Landroid/content/BroadcastReceiver;

.field private E:Landroid/animation/Animator$AnimatorListener;

.field private final a:Landroid/view/View$OnClickListener;

.field private b:Lemi;

.field private c:Lemj;

.field private d:Z

.field private e:Z

.field private final f:Landroid/os/Handler;

.field private g:Z

.field private h:Ljava/lang/StringBuilder;

.field private i:Ljava/util/Formatter;

.field private j:Landroid/widget/SeekBar;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/ImageButton;

.field private n:Landroid/widget/ImageButton;

.field private o:Landroid/widget/ImageButton;

.field private p:Landroid/widget/ImageButton;

.field private q:Landroid/view/View;

.field private r:I

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/ProgressBar;

.field private v:Landroid/view/View;

.field private w:Z

.field private x:Landroid/widget/RelativeLayout;

.field private y:Landroid/widget/ProgressBar;

.field private z:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    new-instance v0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController$1;-><init>(Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->a:Landroid/view/View$OnClickListener;

    .line 76
    new-instance v0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController$2;-><init>(Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->f:Landroid/os/Handler;

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->g:Z

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->r:I

    .line 279
    new-instance v0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController$7;-><init>(Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->B:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 680
    new-instance v0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController$8;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController$8;-><init>(Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->D:Landroid/content/BroadcastReceiver;

    .line 694
    new-instance v0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController$9;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController$9;-><init>(Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->E:Landroid/animation/Animator$AnimatorListener;

    .line 144
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    .prologue
    .line 51
    .line 8510
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->c:Lemj;

    invoke-interface {v0}, Lemj;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8511
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->c:Lemj;

    invoke-interface {v0}, Lemj;->pause()V

    .line 8515
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->i()V

    .line 51
    return-void

    .line 8513
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->c:Lemj;

    invoke-interface {v0}, Lemj;->start()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->h()I

    move-result v0

    return v0
.end method

.method private b(I)Ljava/lang/String;
    .locals 11
    .param p1, "timeMs"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 446
    div-int/lit16 v3, p1, 0x3e8

    .line 448
    .local v3, "totalSeconds":I
    rem-int/lit8 v2, v3, 0x3c

    .line 449
    .local v2, "seconds":I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 450
    .local v1, "minutes":I
    div-int/lit16 v0, v3, 0xe10

    .line 452
    .local v0, "hours":I
    iget-object v4, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 453
    if-lez v0, :cond_0

    .line 454
    iget-object v4, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->i:Ljava/util/Formatter;

    const-string/jumbo v5, "%d:%02d:%02d"

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

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 456
    :goto_0
    return-object v4

    :cond_0
    iget-object v4, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->i:Ljava/util/Formatter;

    const-string/jumbo v5, "%02d:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->e:Z

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->d:Z

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;)Lemj;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->c:Lemj;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->z:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->C:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->C:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 345
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->C:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 347
    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->w:Z

    return v0
.end method

.method private h()I
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 461
    iget-object v6, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->c:Lemj;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->e:Z

    if-eqz v6, :cond_2

    .line 462
    :cond_0
    const/4 v3, 0x0

    .line 486
    :cond_1
    :goto_0
    return v3

    .line 464
    :cond_2
    iget-object v6, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->c:Lemj;

    invoke-interface {v6}, Lemj;->getCurrentPosition()I

    move-result v3

    .line 465
    .local v3, "position":I
    iget-object v6, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->c:Lemj;

    invoke-interface {v6}, Lemj;->getDuration()I

    move-result v0

    .line 466
    .local v0, "duration":I
    iget-object v6, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->j:Landroid/widget/SeekBar;

    if-eqz v6, :cond_4

    .line 467
    if-lez v0, :cond_3

    .line 469
    const-wide/16 v6, 0x3e8

    int-to-long v8, v3

    mul-long/2addr v6, v8

    int-to-long v8, v0

    div-long v4, v6, v8

    .line 470
    .local v4, "pos":J
    iget-object v6, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->j:Landroid/widget/SeekBar;

    long-to-int v7, v4

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 472
    .end local v4    # "pos":J
    :cond_3
    iget-object v6, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->c:Lemj;

    invoke-interface {v6}, Lemj;->getBufferPercentage()I

    move-result v1

    .line 473
    .local v1, "percent":I
    iget-object v6, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->j:Landroid/widget/SeekBar;

    mul-int/lit8 v7, v1, 0xa

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 476
    .end local v1    # "percent":I
    :cond_4
    iget-object v6, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->k:Landroid/widget/TextView;

    if-eqz v6, :cond_6

    if-gez v0, :cond_5

    iget-object v6, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->k:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 477
    :cond_5
    iget-object v6, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->k:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->b(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    :cond_6
    iget-object v6, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->l:Landroid/widget/TextView;

    if-eqz v6, :cond_7

    .line 480
    iget-object v6, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->l:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->b(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    :cond_7
    div-int/lit16 v2, v3, 0x3e8

    .line 483
    .local v2, "playedSeconds":I
    iget v6, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->r:I

    if-eq v6, v2, :cond_1

    .line 484
    iput v2, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->r:I

    goto :goto_0
.end method

.method static synthetic h(Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    .prologue
    .line 51
    .line 9267
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->e()V

    .line 9268
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->c:Lemj;

    invoke-interface {v0}, Lemj;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9269
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->c:Lemj;

    invoke-interface {v0}, Lemj;->b()V

    .line 9271
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->j:Landroid/widget/SeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 9272
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->c:Lemj;

    iget-object v1, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->c:Lemj;

    invoke-interface {v1}, Lemj;->getCurrentPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lemj;->seekTo(I)V

    .line 9273
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->c:Lemj;

    invoke-interface {v0}, Lemj;->start()V

    .line 9320
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->a(I)V

    .line 51
    return-void
.end method

.method static synthetic i(Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->f:Landroid/os/Handler;

    return-object v0
.end method

.method private i()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 496
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->m:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->c:Lemj;

    if-nez v0, :cond_1

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->c:Lemj;

    invoke-interface {v0}, Lemj;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 501
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->m:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 502
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->n:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 504
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->m:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 505
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->n:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private j()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 569
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->u:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 570
    return-void
.end method

.method static synthetic j(Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic k(Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method private k()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 582
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->u:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 583
    return-void
.end method

.method private l()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 607
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->j:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 608
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->j:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 609
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->j()V

    .line 610
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->p()V

    .line 6627
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 612
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->m()V

    .line 613
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->c:Lemj;

    invoke-interface {v0}, Lemj;->a()V

    .line 614
    invoke-virtual {p0, v1}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->a(I)V

    .line 616
    return-void
.end method

.method static synthetic l(Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->i()V

    return-void
.end method

.method private m()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 619
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->q:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 620
    return-void
.end method

.method static synthetic m(Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->k()V

    return-void
.end method

.method private n()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 623
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->q:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 624
    return-void
.end method

.method static synthetic n(Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x3

    .line 51
    .line 9688
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->f:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 9689
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->y:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->A:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 9690
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->f:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 9691
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->f:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 51
    return-void
.end method

.method static synthetic o(Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->x:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private o()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 631
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->s:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 632
    return-void
.end method

.method private p()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 639
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->t:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 640
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 320
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->a(I)V

    .line 321
    return-void
.end method

.method public final a(I)V
    .locals 7
    .param p1, "timeInMilliSeconds"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 329
    .line 2366
    iget-boolean v2, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->d:Z

    if-nez v2, :cond_1

    .line 2368
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->h()I

    .line 2369
    iget-object v2, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->m:Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    .line 2370
    iget-object v2, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->m:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 2372
    :cond_0
    iput-boolean v1, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->d:Z

    .line 2373
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->g()V

    .line 2374
    iget-object v2, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3352
    iget-object v2, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->x:Landroid/widget/RelativeLayout;

    const-string/jumbo v3, "alpha"

    new-array v4, v6, [F

    iget-object v5, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getAlpha()F

    move-result v5

    aput v5, v4, v0

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, v4, v1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    .line 3353
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2375
    iput-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->C:Landroid/animation/ObjectAnimator;

    .line 2376
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->C:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    move v0, v1

    .line 2381
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->i()V

    .line 2383
    iget-object v2, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->f:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2385
    if-eqz v0, :cond_3

    .line 2389
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2390
    iget-object v2, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->f:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2391
    if-eqz p1, :cond_2

    .line 2392
    iget-object v2, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->f:Landroid/os/Handler;

    int-to-long v4, p1

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2395
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->b:Lemi;

    if-eqz v0, :cond_3

    .line 2396
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->b:Lemi;

    invoke-interface {v0, v1}, Lemi;->a(Z)V

    .line 330
    :cond_3
    return-void
.end method

.method public final b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 436
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->f:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 3401
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->e:Z

    if-nez v0, :cond_1

    .line 3402
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->d:Z

    if-eqz v0, :cond_0

    .line 3404
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->f:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3408
    :goto_0
    iput-boolean v4, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->d:Z

    .line 3409
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->g()V

    .line 4357
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->x:Landroid/widget/RelativeLayout;

    const-string/jumbo v1, "alpha"

    new-array v2, v2, [F

    iget-object v3, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getAlpha()F

    move-result v3

    aput v3, v2, v4

    const/4 v3, 0x0

    aput v3, v2, v5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    .line 4358
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3410
    iput-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->C:Landroid/animation/ObjectAnimator;

    .line 3411
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->C:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->E:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3412
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->C:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 3414
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->b:Lemi;

    if-eqz v0, :cond_1

    .line 3415
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->b:Lemi;

    invoke-interface {v0, v4}, Lemi;->a(Z)V

    .line 438
    :cond_1
    return-void

    .line 3406
    :catch_0
    move-exception v0

    const-string/jumbo v0, "MediaController"

    const-string/jumbo v1, "already removed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 551
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->g:Z

    .line 552
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 560
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->j()V

    .line 561
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->o()V

    .line 562
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->p()V

    .line 563
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->n()V

    .line 5320
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->a(I)V

    .line 566
    return-void
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 574
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->k()V

    .line 575
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->o()V

    .line 576
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->p()V

    .line 577
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->n()V

    .line 579
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 593
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->j()V

    .line 594
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->o()V

    .line 595
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->p()V

    .line 596
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->n()V

    .line 6320
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->a(I)V

    .line 598
    return-void
.end method

.method protected final onAttachedToWindow()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 247
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 1673
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->D:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 249
    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 602
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->l()V

    .line 603
    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 253
    .line 1677
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->D:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 254
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 255
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 256
    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onError,what:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",extra:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 655
    if-ne p2, v3, :cond_1

    .line 656
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 657
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f091c96

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 659
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->i()V

    .line 7635
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6645
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->j()V

    .line 6646
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->o()V

    .line 6647
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->m()V

    .line 6648
    invoke-virtual {p0, v2}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->a(I)V

    .line 669
    :goto_0
    return v3

    .line 665
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->c:Lemj;

    invoke-interface {v0}, Lemj;->a()V

    .line 666
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->l()V

    .line 668
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f091c9a

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected final onFinishInflate()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const v4, 0x7f1115e3

    const/16 v2, 0x3e8

    const/4 v3, 0x3

    .line 148
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 149
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0404f1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1162
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->A:Landroid/media/AudioManager;

    .line 1163
    const v0, 0x7f1115d9

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1165
    new-instance v1, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController$3;-><init>(Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1190
    const v0, 0x7f1115da

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->x:Landroid/widget/RelativeLayout;

    .line 1191
    const v0, 0x7f1115dc

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->q:Landroid/view/View;

    .line 1192
    const v0, 0x7f1115de

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->m:Landroid/widget/ImageButton;

    .line 1193
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->m:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 1194
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->m:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1195
    const v0, 0x7f1115df

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->n:Landroid/widget/ImageButton;

    .line 1196
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->n:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1199
    const v0, 0x7f1115e0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->o:Landroid/widget/ImageButton;

    .line 1200
    const v0, 0x7f1115dd

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->p:Landroid/widget/ImageButton;

    .line 1202
    invoke-virtual {p0, v4}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->j:Landroid/widget/SeekBar;

    .line 1203
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->j:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1204
    invoke-virtual {p0, v4}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->j:Landroid/widget/SeekBar;

    .line 1205
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->j:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->B:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1206
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->j:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1207
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->j:Landroid/widget/SeekBar;

    new-instance v1, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController$4;-><init>(Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1214
    const v0, 0x7f1115e4

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->k:Landroid/widget/TextView;

    .line 1215
    const v0, 0x7f1115e2

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->l:Landroid/widget/TextView;

    .line 1216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->h:Ljava/lang/StringBuilder;

    .line 1217
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->h:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->i:Ljava/util/Formatter;

    .line 1218
    const v0, 0x7f1115db

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->s:Landroid/widget/TextView;

    .line 1219
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->s:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController$5;-><init>(Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1227
    const v0, 0x7f110605

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->t:Landroid/widget/TextView;

    .line 1228
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->t:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController$6;-><init>(Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1234
    const v0, 0x7f1115e5

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->u:Landroid/widget/ProgressBar;

    .line 1235
    const v0, 0x7f1115e1

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->v:Landroid/view/View;

    .line 1236
    const v0, 0x7f1115e6

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->z:Landroid/widget/RelativeLayout;

    .line 1237
    const v0, 0x7f1115e7

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->y:Landroid/widget/ProgressBar;

    .line 1238
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->y:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->A:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1239
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->y:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->A:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1241
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->m()V

    .line 1242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->w:Z

    .line 151
    return-void
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 538
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 539
    const-class v0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 540
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 544
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 545
    const-class v0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 546
    return-void
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 719
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->j()V

    .line 720
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->o()V

    .line 721
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->p()V

    .line 722
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->n()V

    .line 723
    return-void
.end method

.method public final onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 491
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->a(I)V

    .line 492
    const/4 v0, 0x0

    return v0
.end method

.method public final setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 521
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->m:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->m:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->o:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->o:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 527
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->p:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 528
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->p:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 530
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->j:Landroid/widget/SeekBar;

    if-eqz v0, :cond_3

    .line 531
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->j:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 533
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 534
    return-void
.end method

.method public final setMediaPlayer(Lemj;)V
    .locals 0
    .param p1, "ddVideoPlayer"    # Lemj;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->c:Lemj;

    .line 156
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->i()V

    .line 157
    return-void
.end method

.method public final setSeekbarDraggable(Z)V
    .locals 0
    .param p1, "seekbarDraggable"    # Z

    .prologue
    .line 555
    iput-boolean p1, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->w:Z

    .line 556
    return-void
.end method

.method public final setVisibilityListener(Lemi;)V
    .locals 0
    .param p1, "visibilityListener"    # Lemi;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->b:Lemi;

    .line 443
    return-void
.end method
