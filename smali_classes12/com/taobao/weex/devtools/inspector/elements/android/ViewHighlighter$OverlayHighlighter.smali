.class final Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter;
.super Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter;
.source "ViewHighlighter.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OverlayHighlighter"
.end annotation


# instance fields
.field private mContentColor:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mHandler:Landroid/os/Handler;

.field private final mHighlightOverlays:Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlightOverlays;

.field private final mHighlightViewOnUiThreadRunnable:Ljava/lang/Runnable;

.field private mHighlightedView:Landroid/view/View;

.field private mViewToHighlight:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter;-><init>()V

    .line 61
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlightOverlays;->newInstance()Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlightOverlays;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter;->mHighlightOverlays:Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlightOverlays;

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter;->mViewToHighlight:Ljava/util/concurrent/atomic/AtomicReference;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter;->mContentColor:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 69
    new-instance v0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter$1;-><init>(Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter;)V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter;->mHighlightViewOnUiThreadRunnable:Ljava/lang/Runnable;

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter;->mHandler:Landroid/os/Handler;

    .line 78
    return-void
.end method

.method static synthetic access$100(Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter;->highlightViewOnUiThread()V

    return-void
.end method

.method private highlightViewOnUiThread()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 98
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter;->mViewToHighlight:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 99
    .local v0, "viewToHighlight":Landroid/view/View;
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter;->mHighlightedView:Landroid/view/View;

    if-ne v0, v1, :cond_0

    .line 112
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter;->mHighlightedView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter;->mHighlightOverlays:Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlightOverlays;

    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter;->mHighlightedView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlightOverlays;->removeHighlight(Landroid/view/View;)V

    .line 107
    :cond_1
    if-eqz v0, :cond_2

    .line 108
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter;->mHighlightOverlays:Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlightOverlays;

    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter;->mContentColor:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlightOverlays;->highlightView(Landroid/view/View;I)V

    .line 111
    :cond_2
    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter;->mHighlightedView:Landroid/view/View;

    goto :goto_0
.end method

.method private setHighlightedViewImpl(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "color"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 91
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter;->mHighlightViewOnUiThreadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 92
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter;->mViewToHighlight:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter;->mContentColor:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 94
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter;->mHighlightViewOnUiThreadRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    return-void
.end method


# virtual methods
.method public final clearHighlight()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 82
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter;->setHighlightedViewImpl(Landroid/view/View;I)V

    .line 83
    return-void
.end method

.method public final setHighlightedView(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "color"    # I

    .prologue
    .line 87
    invoke-static {p1}, Lcom/taobao/weex/devtools/common/Util;->throwIfNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter$OverlayHighlighter;->setHighlightedViewImpl(Landroid/view/View;I)V

    .line 88
    return-void
.end method
