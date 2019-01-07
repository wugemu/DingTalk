.class final Lgfv$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "VideoFilePreviewWebViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgfv;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgfv;


# direct methods
.method constructor <init>(Lgfv;)V
    .locals 0
    .param p1, "this$0"    # Lgfv;

    .prologue
    .line 186
    iput-object p1, p0, Lgfv$3;->a:Lgfv;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 189
    iget-object v0, p0, Lgfv$3;->a:Lgfv;

    iget-object v0, v0, Lgfv;->e:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgfv$3;->a:Lgfv;

    iget-object v0, v0, Lgfv;->e:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 202
    :goto_0
    return v0

    .line 193
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lgfv$3;->a:Lgfv;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lgfv;->a(Lgfv;F)Z

    move-result v0

    if-nez v0, :cond_3

    .line 194
    :cond_2
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 198
    :cond_3
    iget-object v0, p0, Lgfv$3;->a:Lgfv;

    iget-object v0, v0, Lgfv;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_4

    .line 199
    iget-object v0, p0, Lgfv$3;->a:Lgfv;

    invoke-virtual {v0}, Lgfv;->g()V

    .line 202
    :cond_4
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
