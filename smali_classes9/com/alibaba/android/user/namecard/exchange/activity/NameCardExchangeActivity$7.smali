.class final Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$7;
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
.field final synthetic a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    .prologue
    .line 1314
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$7;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1330
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$7;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->g(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/WaveView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/namecard/widget/WaveView;->setFill(Z)V

    .line 1323
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$7;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->g(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/WaveView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/namecard/widget/WaveView;->b()V

    .line 1324
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$7;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->g(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/WaveView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/namecard/widget/WaveView;->a()V

    .line 1325
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1335
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1318
    return-void
.end method
