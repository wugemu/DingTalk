.class final Lcom/alipay/mobile/h5container/api/H5WebContentImpl$1;
.super Ljava/lang/Object;
.source "H5WebContentImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/view/H5Progress$ProgressNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/h5container/api/H5WebContentImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/h5container/api/H5WebContentImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/h5container/api/H5WebContentImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/h5container/api/H5WebContentImpl;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl$1;->a:Lcom/alipay/mobile/h5container/api/H5WebContentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressBegin()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 68
    invoke-static {}, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isShowProgress:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl$1;->a:Lcom/alipay/mobile/h5container/api/H5WebContentImpl;

    invoke-static {v2}, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->a(Lcom/alipay/mobile/h5container/api/H5WebContentImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " visible:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl$1;->a:Lcom/alipay/mobile/h5container/api/H5WebContentImpl;

    iget-object v2, v2, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->d:Lcom/alipay/mobile/nebula/view/H5Progress;

    .line 69
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/view/H5Progress;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl$1;->a:Lcom/alipay/mobile/h5container/api/H5WebContentImpl;

    invoke-static {v0}, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->a(Lcom/alipay/mobile/h5container/api/H5WebContentImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 71
    return-void
.end method

.method public final onProgressEnd()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 75
    invoke-static {}, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isShowProgress:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl$1;->a:Lcom/alipay/mobile/h5container/api/H5WebContentImpl;

    invoke-static {v5}, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->a(Lcom/alipay/mobile/h5container/api/H5WebContentImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " visible:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl$1;->a:Lcom/alipay/mobile/h5container/api/H5WebContentImpl;

    iget-object v5, v5, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->d:Lcom/alipay/mobile/nebula/view/H5Progress;

    .line 76
    invoke-virtual {v5}, Lcom/alipay/mobile/nebula/view/H5Progress;->getVisibility()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 75
    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl$1;->a:Lcom/alipay/mobile/h5container/api/H5WebContentImpl;

    invoke-static {v3}, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->a(Lcom/alipay/mobile/h5container/api/H5WebContentImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl$1;->a:Lcom/alipay/mobile/h5container/api/H5WebContentImpl;

    iget-object v3, v3, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->d:Lcom/alipay/mobile/nebula/view/H5Progress;

    .line 78
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/view/H5Progress;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 80
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, -0x40800000    # -1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 86
    .local v0, "mHiddenAction":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 87
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl$1;->a:Lcom/alipay/mobile/h5container/api/H5WebContentImpl;

    iget-object v1, v1, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->d:Lcom/alipay/mobile/nebula/view/H5Progress;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebula/view/H5Progress;->startAnimation(Landroid/view/animation/Animation;)V

    .line 88
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5WebContentImpl$1;->a:Lcom/alipay/mobile/h5container/api/H5WebContentImpl;

    iget-object v1, v1, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;->d:Lcom/alipay/mobile/nebula/view/H5Progress;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/view/H5Progress;->setVisibility(I)V

    .line 90
    .end local v0    # "mHiddenAction":Landroid/view/animation/TranslateAnimation;
    :cond_0
    return-void
.end method
