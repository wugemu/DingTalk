.class final Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$5;
.super Ljava/lang/Object;
.source "TeleConfCallControlLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->a(Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$5;->a:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 516
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 521
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 510
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$5;->a:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->h(Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 511
    return-void
.end method
