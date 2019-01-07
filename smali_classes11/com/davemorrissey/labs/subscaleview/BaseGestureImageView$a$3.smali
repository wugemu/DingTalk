.class final Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$3;
.super Ljava/lang/Object;
.source "BaseGestureImageView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;


# direct methods
.method constructor <init>(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;)V
    .locals 0
    .param p1, "this$1"    # Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;

    .prologue
    .line 692
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$3;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 705
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$3;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;Z)Z

    .line 706
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 700
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$3;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;Z)Z

    .line 701
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 711
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 696
    return-void
.end method
