.class final Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$b;
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
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;Z)V
    .locals 1
    .param p2, "show"    # Z

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$b;->a:Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$b;->b:Z

    .line 118
    iput-boolean p2, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$b;->b:Z

    .line 119
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$b;->a:Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;->a(Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;)Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$b;->a:Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;->a(Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;)Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$a;->c()V

    .line 126
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 136
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 131
    return-void
.end method
