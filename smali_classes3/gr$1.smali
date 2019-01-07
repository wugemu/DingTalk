.class final Lgr$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewPropertyAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgr;->a(Landroid/view/View;Lgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgs;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lgr;


# direct methods
.method constructor <init>(Lgr;Lgs;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lgr;

    .prologue
    .line 740
    iput-object p1, p0, Lgr$1;->c:Lgr;

    iput-object p2, p0, Lgr$1;->a:Lgs;

    iput-object p3, p0, Lgr$1;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 743
    iget-object v0, p0, Lgr$1;->a:Lgs;

    iget-object v1, p0, Lgr$1;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Lgs;->onAnimationCancel(Landroid/view/View;)V

    .line 744
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 748
    iget-object v0, p0, Lgr$1;->a:Lgs;

    iget-object v1, p0, Lgr$1;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Lgs;->onAnimationEnd(Landroid/view/View;)V

    .line 749
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 753
    iget-object v0, p0, Lgr$1;->a:Lgs;

    iget-object v1, p0, Lgr$1;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Lgs;->onAnimationStart(Landroid/view/View;)V

    .line 754
    return-void
.end method
