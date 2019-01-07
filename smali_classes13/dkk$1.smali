.class final Ldkk$1;
.super Ljava/lang/Object;
.source "RedPacketsAnimatorUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldkk;->a(Lcom/alibaba/android/dingtalkim/views/IMBanner;Lnl/dionsegijn/konfetti/KonfettiView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/views/IMBanner;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/alibaba/android/dingtalkim/views/IMBanner;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Ldkk$1;->a:Landroid/content/Context;

    iput-object p2, p0, Ldkk$1;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    iget-object v0, p0, Ldkk$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcms;->p(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Ldkk$1;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    iget-object v1, p0, Ldkk$1;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->setTranslationY(F)V

    .line 79
    iget-object v0, p0, Ldkk$1;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method
