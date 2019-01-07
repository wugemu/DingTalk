.class final Lcom/alibaba/android/search/fragment/GlobalSearchFragment$1$1;
.super Ljava/lang/Object;
.source "GlobalSearchFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/fragment/GlobalSearchFragment$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment$1;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$1$1;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 266
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$1$1;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$1;

    iget-object v0, v0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 267
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$1$1;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$1;

    iget-object v0, v0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 268
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 272
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 262
    return-void
.end method
