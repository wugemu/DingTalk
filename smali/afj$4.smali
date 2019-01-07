.class final Lafj$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lafj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lafj;


# direct methods
.method constructor <init>(Lafj;)V
    .locals 0
    .param p1, "this$0"    # Lafj;

    .prologue
    .line 385
    iput-object p1, p0, Lafj$4;->a:Lafj;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v7, 0x2

    .line 388
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 389
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 390
    .local v1, "animators":Landroid/animation/AnimatorSet;
    iget-object v4, p0, Lafj$4;->a:Lafj;

    invoke-static {v4}, Lafj;->a(Lafj;)Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    move-result-object v4

    const-string/jumbo v5, "scaleX"

    new-array v6, v7, [F

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 391
    .local v2, "scaleX":Landroid/animation/ObjectAnimator;
    iget-object v4, p0, Lafj$4;->a:Lafj;

    invoke-static {v4}, Lafj;->a(Lafj;)Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    move-result-object v4

    const-string/jumbo v5, "scaleY"

    new-array v6, v7, [F

    fill-array-data v6, :array_1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 392
    .local v3, "scaleY":Landroid/animation/ObjectAnimator;
    iget-object v4, p0, Lafj$4;->a:Lafj;

    invoke-static {v4}, Lafj;->a(Lafj;)Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    move-result-object v4

    const-string/jumbo v5, "alpha"

    new-array v6, v7, [F

    fill-array-data v6, :array_2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 393
    .local v0, "alpha":Landroid/animation/ObjectAnimator;
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    aput-object v0, v4, v7

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 394
    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 395
    new-instance v4, Lafj$4$1;

    invoke-direct {v4, p0}, Lafj$4$1;-><init>(Lafj$4;)V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 402
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 403
    return-void

    .line 390
    .line 391
    .line 392
    nop

    :array_0
    .array-data 4
        0x3f99999a    # 1.2f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f99999a    # 1.2f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
