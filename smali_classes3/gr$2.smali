.class final Lgr$2;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgr;->a(Lgu;)Lgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgu;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lgr;


# direct methods
.method constructor <init>(Lgr;Lgu;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lgr;

    .prologue
    .line 778
    iput-object p1, p0, Lgr$2;->c:Lgr;

    iput-object p2, p0, Lgr$2;->a:Lgu;

    iput-object p3, p0, Lgr$2;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 781
    iget-object v0, p0, Lgr$2;->a:Lgu;

    iget-object v1, p0, Lgr$2;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Lgu;->onAnimationUpdate(Landroid/view/View;)V

    .line 782
    return-void
.end method
