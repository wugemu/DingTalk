.class final Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$d;
.super Ljava/lang/Object;
.source "TeleVideoAnimationFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;Z)V
    .locals 1
    .param p2, "show"    # Z

    .prologue
    .line 142
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$d;->a:Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$d;->b:Z

    .line 143
    iput-boolean p2, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$d;->b:Z

    .line 144
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 147
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$d;->a:Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;->a(Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;)Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$a;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 148
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$d;->a:Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;->a(Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;)Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$a;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$a;->b()V

    .line 151
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$d;->a:Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v3, v4

    .line 152
    .local v0, "centerX":F
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$d;->a:Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v3, v4

    .line 153
    .local v1, "centerY":F
    new-instance v2, Lezc;

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v0, v1}, Lezc;-><init>(FFFF)V

    .line 154
    .local v2, "rotation":Lezc;
    const/4 v3, 0x0

    .line 1045
    iput-boolean v3, v2, Lezc;->b:Z

    .line 155
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$d;->a:Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;->b(Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;)F

    move-result v3

    .line 1049
    iput v3, v2, Lezc;->a:F

    .line 156
    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v4, v5}, Lezc;->setDuration(J)V

    .line 157
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lezc;->setFillAfter(Z)V

    .line 158
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Lezc;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 159
    new-instance v3, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$b;

    iget-object v4, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$d;->a:Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;

    iget-boolean v5, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$d;->b:Z

    invoke-direct {v3, v4, v5}, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$b;-><init>(Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;Z)V

    invoke-virtual {v2, v3}, Lezc;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 160
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$d;->a:Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;

    invoke-virtual {v3, v2}, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 161
    return-void
.end method
