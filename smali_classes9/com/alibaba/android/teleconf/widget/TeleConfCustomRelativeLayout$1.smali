.class public final Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout$1;
.super Ljava/lang/Object;
.source "TeleConfCustomRelativeLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;->a(Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;->b(Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;)Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 87
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 92
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 80
    return-void
.end method
