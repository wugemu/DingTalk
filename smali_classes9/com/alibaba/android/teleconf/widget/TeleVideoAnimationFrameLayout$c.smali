.class final Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$c;
.super Ljava/lang/Object;
.source "TeleVideoAnimationFrameLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;Z)V
    .locals 1
    .param p2, "show"    # Z

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$c;->a:Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$c;->b:Z

    .line 93
    iput-boolean p2, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$c;->b:Z

    .line 94
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$c;->a:Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;

    new-instance v1, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$d;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$c;->a:Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;

    iget-boolean v3, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$c;->b:Z

    invoke-direct {v1, v2, v3}, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$d;-><init>(Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;Z)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 99
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 111
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$c;->a:Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;->a(Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;)Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$c;->a:Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;->a(Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;)Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$a;->a()V

    .line 106
    :cond_0
    return-void
.end method
