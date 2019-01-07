.class final Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$3;
.super Ljava/lang/Object;
.source "DingFloatingActionMenu.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$3;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 297
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$3;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->a(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setAlpha(I)V

    .line 298
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$3;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->a(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$3;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-static {v1}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->e(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$3;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-static {v2}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->f(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$3;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-static {v3}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->g(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->a(III)V

    .line 299
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$3;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->a(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->a()V

    .line 300
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 290
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$3;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->a(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setAlpha(I)V

    .line 291
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$3;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->a(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$3;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-static {v1}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->e(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$3;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-static {v2}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->f(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$3;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-static {v3}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->g(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->a(III)V

    .line 292
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$3;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->a(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->a()V

    .line 293
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 304
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 286
    return-void
.end method
