.class final Lcom/alibaba/android/teleconf/widget/TeleConfImageView$b;
.super Ljava/lang/Object;
.source "TeleConfImageView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/TeleConfImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/widget/TeleConfImageView;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/teleconf/widget/TeleConfImageView;Landroid/view/View;)V
    .locals 0
    .param p2, "nextView"    # Landroid/view/View;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView$b;->a:Lcom/alibaba/android/teleconf/widget/TeleConfImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView$b;->b:Landroid/view/View;

    .line 113
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView$b;->a:Lcom/alibaba/android/teleconf/widget/TeleConfImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/TeleConfImageView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView$b;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView$b;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView$b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 130
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 135
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 118
    return-void
.end method
