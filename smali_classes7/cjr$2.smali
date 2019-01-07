.class final Lcjr$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatWindowShowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcjr;->a(Lcjr$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcjr$a;

.field final synthetic b:Lcjr;


# direct methods
.method constructor <init>(Lcjr;Lcjr$a;)V
    .locals 0
    .param p1, "this$0"    # Lcjr;

    .prologue
    .line 138
    iput-object p1, p0, Lcjr$2;->b:Lcjr;

    iput-object p2, p0, Lcjr$2;->a:Lcjr$a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 148
    iget-object v0, p0, Lcjr$2;->b:Lcjr;

    iget-object v1, p0, Lcjr$2;->a:Lcjr$a;

    invoke-static {v0, v1}, Lcjr;->a(Lcjr;Lcjr$a;)V

    .line 149
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "anim"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 142
    iget-object v0, p0, Lcjr$2;->b:Lcjr;

    iget-object v1, p0, Lcjr$2;->a:Lcjr$a;

    invoke-static {v0, v1}, Lcjr;->a(Lcjr;Lcjr$a;)V

    .line 143
    return-void
.end method
