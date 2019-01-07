.class final Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;
.super Ljava/lang/Object;
.source "NameCardExchangeActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 179
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 183
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    iget-boolean v8, v8, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->i:Z

    if-eqz v8, :cond_0

    .line 184
    const/4 v8, 0x0

    .line 345
    :goto_0
    return v8

    .line 187
    :cond_0
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->getCardAdapter()Lfum;

    move-result-object v8

    if-nez v8, :cond_1

    .line 188
    const/4 v8, 0x0

    goto :goto_0

    .line 191
    :cond_1
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->getCardAdapter()Lfum;

    move-result-object v8

    .line 1128
    iget-object v5, v8, Lfum;->b:Landroid/view/View;

    .line 192
    .local v5, "currentPage":Landroid/view/View;
    if-nez v5, :cond_2

    .line 193
    const/4 v8, 0x0

    goto :goto_0

    .line 195
    :cond_2
    invoke-static {v5}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->b(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 197
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 345
    :cond_3
    :goto_1
    const/4 v8, 0x0

    goto :goto_0

    .line 200
    :pswitch_0
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    invoke-static {v8, v9}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;F)F

    goto :goto_1

    .line 204
    :pswitch_1
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    invoke-static {v8, v9}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->b(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;F)F

    .line 206
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->b(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)F

    move-result v8

    iget-object v9, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v9}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->c(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)F

    move-result v9

    sub-float v6, v8, v9

    .line 209
    .local v6, "distanceY":F
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, v6, v8

    if-lez v8, :cond_3

    .line 210
    invoke-static {}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->g()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v8, v6, v8

    if-gtz v8, :cond_3

    .line 212
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v9}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->d(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)F

    move-result v9

    neg-float v9, v9

    mul-float/2addr v9, v6

    invoke-virtual {v8, v9}, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->setTranslationY(F)V

    .line 213
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v9}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->e(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)F

    move-result v9

    mul-float/2addr v9, v6

    invoke-virtual {v8, v9}, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->setRotation(F)V

    .line 214
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    iget-object v10, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v10}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->f(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)F

    move-result v10

    mul-float/2addr v10, v6

    sub-float/2addr v9, v10

    invoke-virtual {v8, v9}, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->setScaleX(F)V

    .line 215
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    iget-object v10, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v10}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->f(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)F

    move-result v10

    mul-float/2addr v10, v6

    sub-float/2addr v9, v10

    invoke-virtual {v8, v9}, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->setScaleY(F)V

    .line 217
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->g(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/WaveView;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/alibaba/android/user/namecard/widget/WaveView;->setVisibility(I)V

    .line 218
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->h(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 219
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->i(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->clearAnimation()V

    .line 220
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->i(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    .line 221
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->i(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 227
    .end local v6    # "distanceY":F
    :pswitch_2
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    invoke-static {v8, v9}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->c(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;F)F

    .line 228
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->b(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)F

    move-result v8

    iget-object v9, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v9}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->j(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)F

    move-result v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x43480000    # 200.0f

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_6

    .line 230
    monitor-enter p0

    .line 231
    :try_start_0
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->i:Z

    .line 232
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->g(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/WaveView;

    move-result-object v8

    .line 1187
    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/alibaba/android/user/namecard/widget/WaveView;->a:Z

    .line 234
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->g(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/WaveView;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/alibaba/android/user/namecard/widget/WaveView;->setVisibility(I)V

    .line 235
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->h(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 237
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->k(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Landroid/view/animation/TranslateAnimation;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/animation/TranslateAnimation;->cancel()V

    .line 238
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->i(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->clearAnimation()V

    .line 239
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->i(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    .line 240
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->i(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 242
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->l(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->l(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_5

    .line 244
    :cond_4
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 245
    .local v7, "set":Landroid/animation/AnimatorSet;
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    move-result-object v8

    const-string/jumbo v9, "translationY"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v12}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    move-result-object v12

    invoke-virtual {v12}, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->getTranslationY()F

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 246
    .local v0, "animator1":Landroid/animation/Animator;
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    move-result-object v8

    const-string/jumbo v9, "scaleX"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v12}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    move-result-object v12

    invoke-virtual {v12}, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->getScaleX()F

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 247
    .local v1, "animator2":Landroid/animation/Animator;
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    move-result-object v8

    const-string/jumbo v9, "scaleY"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v12}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    move-result-object v12

    invoke-virtual {v12}, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->getScaleY()F

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 248
    .local v2, "animator3":Landroid/animation/Animator;
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    move-result-object v8

    const-string/jumbo v9, "rotation"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v12}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    move-result-object v12

    invoke-virtual {v12}, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->getRotation()F

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 249
    .local v3, "animator4":Landroid/animation/Animator;
    const-wide/16 v8, 0xc8

    invoke-virtual {v7, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 250
    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 251
    new-instance v8, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1$1;

    invoke-direct {v8, p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1$1;-><init>(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;)V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 290
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_1

    .line 232
    .end local v0    # "animator1":Landroid/animation/Animator;
    .end local v1    # "animator2":Landroid/animation/Animator;
    .end local v2    # "animator3":Landroid/animation/Animator;
    .end local v3    # "animator4":Landroid/animation/Animator;
    .end local v7    # "set":Landroid/animation/AnimatorSet;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 293
    :cond_5
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    move-result-object v8

    const-string/jumbo v9, "translationY"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v12}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    move-result-object v12

    invoke-virtual {v12}, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->getTranslationY()F

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    const/high16 v12, -0x3c060000    # -500.0f

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 294
    .restart local v0    # "animator1":Landroid/animation/Animator;
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    move-result-object v8

    const-string/jumbo v9, "scaleY"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v12}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    move-result-object v12

    invoke-virtual {v12}, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->getScaleY()F

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    const v12, 0x3e4ccccd    # 0.2f

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 295
    .restart local v1    # "animator2":Landroid/animation/Animator;
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    move-result-object v8

    const-string/jumbo v9, "scaleX"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v12}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    move-result-object v12

    invoke-virtual {v12}, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->getScaleX()F

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    const v12, 0x3e4ccccd    # 0.2f

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 296
    .restart local v2    # "animator3":Landroid/animation/Animator;
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    move-result-object v8

    const-string/jumbo v9, "rotation"

    const/4 v10, 0x3

    new-array v10, v10, [F

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v12}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    move-result-object v12

    invoke-virtual {v12}, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->getRotation()F

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    const/high16 v12, 0x41400000    # 12.0f

    aput v12, v10, v11

    const/4 v11, 0x2

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 297
    .restart local v3    # "animator4":Landroid/animation/Animator;
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 298
    .restart local v7    # "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 299
    const-wide/16 v8, 0xc8

    invoke-virtual {v7, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 300
    new-instance v8, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1$2;

    invoke-direct {v8, p0, v4}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1$2;-><init>(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 323
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_1

    .line 327
    .end local v0    # "animator1":Landroid/animation/Animator;
    .end local v1    # "animator2":Landroid/animation/Animator;
    .end local v2    # "animator3":Landroid/animation/Animator;
    .end local v3    # "animator4":Landroid/animation/Animator;
    .end local v7    # "set":Landroid/animation/AnimatorSet;
    :cond_6
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->setTranslationY(F)V

    .line 328
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->setRotation(F)V

    .line 329
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->setScaleX(F)V

    .line 330
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->setScaleY(F)V

    .line 332
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->g(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/WaveView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/alibaba/android/user/namecard/widget/WaveView;->setVisibility(I)V

    .line 333
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->h(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 334
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->setVisibility(I)V

    .line 337
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->i(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->clearAnimation()V

    .line 338
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->i(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    .line 339
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->i(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v9}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->k(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Landroid/view/animation/TranslateAnimation;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 340
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->i(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
