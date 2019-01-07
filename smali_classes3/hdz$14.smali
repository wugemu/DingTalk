.class final Lhdz$14;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingLayerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdz;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhdz;


# direct methods
.method constructor <init>(Lhdz;)V
    .locals 0
    .param p1, "this$0"    # Lhdz;

    .prologue
    .line 411
    iput-object p1, p0, Lhdz$14;->a:Lhdz;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 9
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 414
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 416
    iget-object v1, p0, Lhdz$14;->a:Lhdz;

    invoke-static {v1}, Lhdz;->j(Lhdz;)Landroid/widget/ImageView;

    move-result-object v1

    const-string/jumbo v2, "translationY"

    const/4 v3, 0x3

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v7, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lhdz$14;->a:Lhdz;

    .line 417
    invoke-static {v5}, Lhdz;->a(Lhdz;)Landroid/app/Activity;

    move-result-object v5

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v5, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v4

    aput v7, v3, v8

    .line 416
    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 418
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 419
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 420
    invoke-virtual {v0, v8}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 421
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 422
    return-void
.end method
