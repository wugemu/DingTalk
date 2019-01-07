.class Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;
.super Ljava/lang/Object;
.source "H5PullContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/refresh/H5PullContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Flinger"
.end annotation


# instance fields
.field private finished:Z

.field private lastScrollY:I

.field private scroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebula/refresh/H5PullContainer;)V
    .locals 2

    .prologue
    .line 362
    iput-object p1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->this$0:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->scroller:Landroid/widget/Scroller;

    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->finished:Z

    .line 365
    return-void
.end method


# virtual methods
.method public isFinished()Z
    .locals 1

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->finished:Z

    return v0
.end method

.method public recover(I)V
    .locals 7
    .param p1, "offset"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->this$0:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 386
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->lastScrollY:I

    .line 387
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->this$0:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->access$302(Lcom/alipay/mobile/nebula/refresh/H5PullContainer;I)I

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->finished:Z

    .line 389
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->scroller:Landroid/widget/Scroller;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v5, 0x258

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 390
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->this$0:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v6

    .line 392
    .local v6, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v0, "H5PullContainer"

    invoke-static {v0, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 369
    iget-object v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    .line 370
    .local v0, "offset":Z
    if-eqz v0, :cond_1

    .line 371
    iget-object v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->this$0:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    iget v2, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->lastScrollY:I

    iget-object v3, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->access$100(Lcom/alipay/mobile/nebula/refresh/H5PullContainer;I)Z

    .line 372
    iget-object v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->lastScrollY:I

    .line 373
    iget-object v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->this$0:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    invoke-virtual {v1, p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->post(Ljava/lang/Runnable;)Z

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->finished:Z

    .line 376
    iget-object v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->this$0:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    invoke-virtual {v1, p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 377
    iget-object v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->this$0:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->access$200(Lcom/alipay/mobile/nebula/refresh/H5PullContainer;)Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->this$0:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->access$200(Lcom/alipay/mobile/nebula/refresh/H5PullContainer;)Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;->onFinish()V

    goto :goto_0
.end method
