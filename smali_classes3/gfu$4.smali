.class final Lgfu$4;
.super Ljava/lang/Object;
.source "FilePreviewWebViewWrapper.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgfu;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgfu;


# direct methods
.method constructor <init>(Lgfu;)V
    .locals 0
    .param p1, "this$0"    # Lgfu;

    .prologue
    .line 360
    iput-object p1, p0, Lgfu$4;->a:Lgfu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 369
    iget-object v0, p0, Lgfu$4;->a:Lgfu;

    invoke-virtual {v0}, Lgfu;->l()V

    .line 370
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 375
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 363
    iget-object v0, p0, Lgfu$4;->a:Lgfu;

    iget-object v0, v0, Lgfu;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 364
    iget-object v0, p0, Lgfu$4;->a:Lgfu;

    invoke-virtual {v0}, Lgfu;->k()V

    .line 365
    return-void
.end method
