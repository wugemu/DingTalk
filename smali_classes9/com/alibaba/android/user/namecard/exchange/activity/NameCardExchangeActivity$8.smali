.class final Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NameCardExchangeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Landroid/view/View;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    .prologue
    .line 1540
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8;->d:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8;->c:Ljava/util/List;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 9
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1543
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1544
    iget-object v7, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8;->a:Ljava/util/List;

    if-nez v7, :cond_1

    .line 1607
    :cond_0
    return-void

    .line 1547
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 1548
    iget-object v7, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8;->a:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1549
    .local v0, "clientView":Landroid/view/View;
    iget-object v7, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8;->b:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/user/namecard/widget/ParabolaView;

    .line 1552
    .local v5, "parabolaView":Lcom/alibaba/android/user/namecard/widget/ParabolaView;
    iget-object v7, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8;->d:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    sget v8, Lezg$b;->anim_out:I

    invoke-static {v7, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimatorSet;

    .line 1553
    .local v4, "mRightOutSet":Landroid/animation/AnimatorSet;
    iget-object v7, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8;->d:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    sget v8, Lezg$b;->anim_in:I

    invoke-static {v7, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet;

    .line 1556
    .local v3, "mLeftInSet":Landroid/animation/AnimatorSet;
    iget-object v7, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8;->d:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v7}, Lcms;->c(Landroid/content/Context;)I

    move-result v7

    mul-int/lit16 v7, v7, 0x3e80

    int-to-float v6, v7

    .line 1557
    .local v6, "scale":F
    invoke-virtual {v0, v6}, Landroid/view/View;->setCameraDistance(F)V

    .line 1558
    invoke-virtual {v5, v6}, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->setCameraDistance(F)V

    .line 1560
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setPivotX(F)V

    .line 1561
    invoke-virtual {v5}, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->setPivotX(F)V

    .line 1563
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 1564
    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 1567
    move v1, v2

    .line 1568
    .local v1, "finalI":I
    new-instance v7, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8$1;

    invoke-direct {v7, p0, v0, v5, v1}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8$1;-><init>(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8;Landroid/view/View;Lcom/alibaba/android/user/namecard/widget/ParabolaView;I)V

    invoke-virtual {v3, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1604
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 1605
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 1547
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
