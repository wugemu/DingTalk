.class final Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NameCardExchangeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/alibaba/android/user/namecard/widget/ParabolaView;

.field final synthetic c:I

.field final synthetic d:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8;Landroid/view/View;Lcom/alibaba/android/user/namecard/widget/ParabolaView;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8;

    .prologue
    .line 1568
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8$1;->d:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8;

    iput-object p2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8$1;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8$1;->b:Lcom/alibaba/android/user/namecard/widget/ParabolaView;

    iput p4, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8$1;->c:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 1581
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1582
    iget-object v4, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8$1;->b:Lcom/alibaba/android/user/namecard/widget/ParabolaView;

    iget-object v3, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8$1;->d:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8;

    iget-object v3, v3, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8;->c:Ljava/util/List;

    iget v5, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8$1;->c:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    invoke-virtual {v4, v3}, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->setStartPosition(Landroid/graphics/Point;)V

    .line 1583
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1584
    .local v2, "backEndPoint":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8$1;->d:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8;

    iget-object v3, v3, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8;->d:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcms;->a(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    iget-object v4, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8$1;->b:Lcom/alibaba/android/user/namecard/widget/ParabolaView;

    invoke-virtual {v4}, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 1585
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8$1;->d:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8;

    iget-object v3, v3, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8;->d:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcms;->b(Landroid/content/Context;)I

    move-result v3

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 1586
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8$1;->b:Lcom/alibaba/android/user/namecard/widget/ParabolaView;

    invoke-virtual {v3, v2}, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->setEndPosition(Landroid/graphics/Point;)V

    .line 1587
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8$1;->b:Lcom/alibaba/android/user/namecard/widget/ParabolaView;

    invoke-virtual {v3}, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->getBackBeizerAnimation$5ce750a4()Landroid/animation/Animator;

    move-result-object v1

    .line 1588
    .local v1, "backBeizerAnim":Landroid/animation/Animator;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1589
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1590
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1592
    iget v3, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8$1;->c:I

    iget-object v4, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8$1;->d:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8;

    iget-object v4, v4, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_0

    .line 1593
    new-instance v3, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8$1$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8$1$1;-><init>(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8$1;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1601
    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1572
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1573
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8$1;->a:Landroid/view/View;

    instance-of v1, v1, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;

    if-eqz v1, :cond_0

    .line 1574
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8$1;->a:Landroid/view/View;

    check-cast v0, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;

    .line 2084
    .local v0, "nameCardView":Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;
    iget-object v1, v0, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;->a:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 2085
    iget-object v1, v0, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;->a:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1577
    .end local v0    # "nameCardView":Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;
    :cond_0
    return-void
.end method
