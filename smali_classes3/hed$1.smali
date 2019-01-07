.class final Lhed$1;
.super Ljava/lang/Object;
.source "TransitionDelegate.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhed;->a(Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;

.field final synthetic c:Landroid/view/ViewGroup;

.field final synthetic d:Lcom/alibaba/lightapp/runtime/view/TransitionSnapshot;

.field final synthetic e:Lhed;


# direct methods
.method constructor <init>(Lhed;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;Landroid/view/ViewGroup;Lcom/alibaba/lightapp/runtime/view/TransitionSnapshot;)V
    .locals 0
    .param p1, "this$0"    # Lhed;

    .prologue
    .line 167
    iput-object p1, p0, Lhed$1;->e:Lhed;

    iput-object p2, p0, Lhed$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lhed$1;->b:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;

    iput-object p4, p0, Lhed$1;->c:Landroid/view/ViewGroup;

    iput-object p5, p0, Lhed$1;->d:Lcom/alibaba/lightapp/runtime/view/TransitionSnapshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 189
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 174
    iget-object v0, p0, Lhed$1;->e:Lhed;

    .line 1031
    iget-object v0, v0, Lhed;->b:Lhed$a;

    .line 174
    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lhed$1;->e:Lhed;

    .line 2031
    iget-object v0, v0, Lhed;->b:Lhed$a;

    .line 175
    iget-object v1, p0, Lhed$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lhed$1;->b:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;

    invoke-interface {v0, v1, v2}, Lhed$a;->a(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lhed$1;->c:Landroid/view/ViewGroup;

    new-instance v1, Lhed$1$1;

    invoke-direct {v1, p0}, Lhed$1$1;-><init>(Lhed$1;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 183
    iget-object v0, p0, Lhed$1;->e:Lhed;

    .line 3031
    const/4 v1, 0x0

    iput-boolean v1, v0, Lhed;->c:Z

    .line 184
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 194
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 170
    return-void
.end method
