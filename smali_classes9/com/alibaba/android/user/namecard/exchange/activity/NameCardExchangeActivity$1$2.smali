.class final Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1$2;
.super Ljava/lang/Object;
.source "NameCardExchangeActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1$2;->b:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;

    iput-object p2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1$2;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 316
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 307
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1$2;->b:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->clearAnimation()V

    .line 308
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1$2;->b:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->invalidate()V

    .line 309
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1$2;->b:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1$2;->b:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1$2;->b:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1$2;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 311
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 321
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 303
    return-void
.end method
