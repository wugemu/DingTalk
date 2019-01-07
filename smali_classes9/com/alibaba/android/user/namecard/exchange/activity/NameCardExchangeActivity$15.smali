.class final Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$15;
.super Ljava/lang/Object;
.source "NameCardExchangeActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;

.field final synthetic b:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    .prologue
    .line 592
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$15;->b:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$15;->a:Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 606
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 600
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$15;->a:Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;->setVisibility(I)V

    .line 601
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 611
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 596
    return-void
.end method
