.class final Lgfu$5;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FilePreviewWebViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgfu;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgfu;


# direct methods
.method constructor <init>(Lgfu;)V
    .locals 0
    .param p1, "this$0"    # Lgfu;

    .prologue
    .line 426
    iput-object p1, p0, Lgfu$5;->a:Lgfu;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 480
    iget-object v0, p0, Lgfu$5;->a:Lgfu;

    invoke-virtual {v0}, Lgfu;->h()V

    .line 481
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lgfu$5;->a:Lgfu;

    iget-object v1, v1, Lgfu;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 482
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lgfu$5;->a:Lgfu;

    iget-object v1, v1, Lgfu;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 483
    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 429
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 431
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    .line 446
    :goto_0
    return v0

    .line 434
    :cond_1
    iget-object v0, p0, Lgfu$5;->a:Lgfu;

    iget-object v0, v0, Lgfu;->e:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lgfu$5;->a:Lgfu;

    iget-object v0, v0, Lgfu;->e:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 435
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0

    .line 438
    :cond_3
    iget-object v4, p0, Lgfu$5;->a:Lgfu;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v0, v5

    .line 1391
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, v4, Lgfu;->g:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_5

    move v2, v3

    .line 438
    :goto_1
    if-eqz v2, :cond_4

    .line 439
    iget-object v0, p0, Lgfu$5;->a:Lgfu;

    .line 2044
    iget v0, v0, Lgfu;->i:I

    .line 439
    if-ne v0, v1, :cond_8

    .line 440
    invoke-direct {p0}, Lgfu$5;->a()V

    .line 446
    :cond_4
    :goto_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0

    .line 1395
    :cond_5
    const/4 v5, 0x0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_6

    move v0, v1

    .line 1397
    :goto_3
    iget v5, v4, Lgfu;->i:I

    if-ne v0, v5, :cond_7

    move v2, v3

    .line 1398
    goto :goto_1

    :cond_6
    move v0, v2

    .line 1395
    goto :goto_3

    .line 1400
    :cond_7
    iput v0, v4, Lgfu;->i:I

    goto :goto_1

    .line 442
    :cond_8
    iget-object v0, p0, Lgfu$5;->a:Lgfu;

    invoke-virtual {v0}, Lgfu;->g()V

    goto :goto_2
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 451
    iget-object v1, p0, Lgfu$5;->a:Lgfu;

    iget-object v1, v1, Lgfu;->e:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgfu$5;->a:Lgfu;

    iget-object v1, v1, Lgfu;->e:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 452
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 476
    :goto_0
    return v1

    .line 455
    :cond_1
    if-nez p1, :cond_2

    .line 456
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 458
    :cond_2
    iget-object v1, p0, Lgfu$5;->a:Lgfu;

    iget-object v1, v1, Lgfu;->d:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lgfu$5;->a:Lgfu;

    iget-object v1, v1, Lgfu;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 459
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lgfu$5;->a:Lgfu;

    iget-object v2, v2, Lgfu;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    iget-object v3, p0, Lgfu$5;->a:Lgfu;

    iget-object v3, v3, Lgfu;->d:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    .line 460
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 463
    :cond_3
    iget-object v1, p0, Lgfu$5;->a:Lgfu;

    iget-object v1, v1, Lgfu;->c:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lgfu$5;->a:Lgfu;

    iget-object v1, v1, Lgfu;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 464
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lgfu$5;->a:Lgfu;

    iget-object v2, v2, Lgfu;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_4

    .line 465
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 469
    :cond_4
    iget-object v1, p0, Lgfu$5;->a:Lgfu;

    iget-object v1, v1, Lgfu;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 470
    .local v0, "state":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 471
    invoke-direct {p0}, Lgfu$5;->a()V

    .line 476
    :cond_5
    :goto_1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 472
    :cond_6
    if-nez v0, :cond_5

    .line 473
    iget-object v1, p0, Lgfu$5;->a:Lgfu;

    invoke-virtual {v1}, Lgfu;->g()V

    goto :goto_1
.end method
