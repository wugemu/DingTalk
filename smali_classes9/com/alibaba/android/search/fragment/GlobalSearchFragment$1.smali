.class final Lcom/alibaba/android/search/fragment/GlobalSearchFragment$1;
.super Landroid/os/Handler;
.source "GlobalSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v6, 0x1f4

    const/4 v5, 0x0

    .line 246
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 287
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 288
    :cond_0
    return-void

    .line 248
    :pswitch_0
    iget-object v4, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v4}, Lcms;->a(Landroid/support/v4/app/Fragment;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 252
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 253
    .local v1, "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 254
    .local v0, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 255
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    iget-object v4, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .line 256
    invoke-static {v4}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-direct {v3, v5, v5, v5, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 257
    .local v3, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v3, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 258
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 259
    new-instance v4, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$1$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$1$1;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment$1;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 274
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 275
    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 276
    iget-object v4, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v4}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 280
    .end local v0    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    .end local v1    # "animationSet":Landroid/view/animation/AnimationSet;
    .end local v3    # "translateAnimation":Landroid/view/animation/TranslateAnimation;
    :pswitch_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 281
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "code"

    const-string/jumbo v5, "-405"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string/jumbo v4, "message"

    const-string/jumbo v5, "Search RT timeout"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    invoke-static {v2}, Letb;->a(Ljava/util/Map;)V

    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
