.class final Ldkj$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuickPraiseController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldkj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ldkj;


# direct methods
.method constructor <init>(Ldkj;I)V
    .locals 0
    .param p1, "this$0"    # Ldkj;

    .prologue
    .line 539
    iput-object p1, p0, Ldkj$6;->b:Ldkj;

    iput p2, p0, Ldkj$6;->a:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 542
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 543
    iget-object v0, p0, Ldkj$6;->b:Ldkj;

    .line 1055
    iget-boolean v0, v0, Ldkj;->h:Z

    .line 543
    if-nez v0, :cond_0

    .line 544
    iget-object v0, p0, Ldkj$6;->b:Ldkj;

    iget v1, p0, Ldkj$6;->a:I

    invoke-static {v0, v1}, Ldkj;->a(Ldkj;I)V

    .line 546
    :cond_0
    return-void
.end method
