.class public Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;
.super Landroid/widget/RelativeLayout;
.source "TeleConfProgressBar.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ProgressBar;

.field private c:Landroid/view/View;

.field private d:Landroid/animation/AnimatorSet;

.field private e:Landroid/animation/AnimatorSet;

.field private f:Landroid/content/Context;

.field private g:I

.field private h:I

.field private i:Ljava/lang/Runnable;

.field private j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v7, 0x2

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance v4, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar$1;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;)V

    iput-object v4, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->i:Ljava/lang/Runnable;

    .line 78
    new-instance v4, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar$2;

    invoke-direct {v4, p0}, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar$2;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;)V

    iput-object v4, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->j:Ljava/lang/Runnable;

    .line 100
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->f:Landroid/content/Context;

    .line 101
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Leuj$j;->teleconf_time_progress_bar_v2:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 102
    sget v4, Leuj$i;->conf_time:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->a:Landroid/widget/TextView;

    .line 103
    sget v4, Leuj$i;->conf_time_progress:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->b:Landroid/widget/ProgressBar;

    .line 104
    sget v4, Leuj$i;->conf_progress_fg:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->c:Landroid/view/View;

    .line 107
    iget-object v4, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->c:Landroid/view/View;

    const-string/jumbo v5, "alpha"

    new-array v6, v7, [F

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 108
    .local v2, "outAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual {v2, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 109
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 110
    iget-object v4, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->a:Landroid/widget/TextView;

    const-string/jumbo v5, "alpha"

    new-array v6, v7, [F

    fill-array-data v6, :array_1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 111
    .local v3, "outAnimator2":Landroid/animation/ValueAnimator;
    invoke-virtual {v3, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 112
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 114
    iget-object v4, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->c:Landroid/view/View;

    const-string/jumbo v5, "alpha"

    new-array v6, v7, [F

    fill-array-data v6, :array_2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 115
    .local v0, "inAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 116
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 117
    iget-object v4, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->a:Landroid/widget/TextView;

    const-string/jumbo v5, "alpha"

    new-array v6, v7, [F

    fill-array-data v6, :array_3

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 118
    .local v1, "inAnimator2":Landroid/animation/ValueAnimator;
    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 119
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 121
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->d:Landroid/animation/AnimatorSet;

    .line 122
    iget-object v4, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->d:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 124
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->e:Landroid/animation/AnimatorSet;

    .line 125
    iget-object v4, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->e:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 126
    return-void

    .line 107
    .line 110
    .line 114
    .line 117
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->h:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->b:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;

    .prologue
    .line 38
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->h:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;

    .prologue
    .line 38
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->g:I

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->e:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->d:Landroid/animation/AnimatorSet;

    return-object v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 130
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 131
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 132
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 136
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 137
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 138
    return-void
.end method

.method public setProgressMax(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 141
    if-gez p1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iput p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->g:I

    .line 145
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->b:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    goto :goto_0
.end method
