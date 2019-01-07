.class final Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1$1;
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
.field final synthetic a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 283
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 258
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    iput-boolean v4, v0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->i:Z

    .line 260
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->setTranslationY(F)V

    .line 261
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->setScaleX(F)V

    .line 262
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->setScaleY(F)V

    .line 263
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->setRotation(F)V

    .line 265
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->g(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/WaveView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/user/namecard/widget/WaveView;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->g(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/WaveView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/namecard/widget/WaveView;->a()V

    .line 267
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->h(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->i(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 272
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->i(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 273
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->i(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->k(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 274
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->i(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    sget v1, Lezg$l;->dt_contact_bizcard_exchange_nobody_tip_at:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;

    iget-object v3, v3, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->m(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 288
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 254
    return-void
.end method
