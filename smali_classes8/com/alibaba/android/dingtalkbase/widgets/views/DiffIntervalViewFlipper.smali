.class public abstract Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;
.super Landroid/widget/ViewAnimator;
.source "DiffIntervalViewFlipper.java"


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private final f:Landroid/content/BroadcastReceiver;

.field private final g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    .line 27
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;->a:I

    .line 29
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;->b:Z

    .line 30
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;->c:Z

    .line 31
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;->d:Z

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;->e:Z

    .line 42
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;->f:Landroid/content/BroadcastReceiver;

    .line 186
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;->g:Ljava/lang/Runnable;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;->a:I

    .line 29
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;->b:Z

    .line 30
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;->c:Z

    .line 31
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;->d:Z

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;->e:Z

    .line 42
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;->f:Landroid/content/BroadcastReceiver;

    .line 186
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;->g:Ljava/lang/Runnable;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;

    .prologue
    .line 21
    .line 2134
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;->a(Z)V

    .line 21
    return-void
.end method

.method private a(Z)V
    .locals 1
    .param p1, "flipNow"    # Z

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;->b:Z

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;->g:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;->b:Z

    .line 160
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;->a(Z)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;->b:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;->g:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 126
    const-class v0, Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getNextInterval()J
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 58
    invoke-super {p0}, Landroid/widget/ViewAnimator;->onAttachedToWindow()V

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 62
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/widget/ViewAnimator;->onDetachedFromWindow()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;->d:Z

    .line 1134
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;->a(Z)V

    .line 89
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-super {p0, p1}, Landroid/widget/ViewAnimator;->onWindowVisibilityChanged(I)V

    .line 94
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;->d:Z

    .line 95
    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;->a(Z)V

    .line 96
    return-void

    :cond_0
    move v0, v1

    .line 94
    goto :goto_0
.end method

.method public setFlipInterval(I)V
    .locals 0
    .param p1, "milliseconds"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/DiffIntervalViewFlipper;->a:I

    .line 106
    return-void
.end method
