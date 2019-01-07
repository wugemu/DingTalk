.class final Lcom/alibaba/android/dingtalk/circle/anim/GoodView$1;
.super Ljava/lang/Object;
.source "GoodView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->a()Landroid/view/animation/AnimationSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/anim/GoodView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/anim/GoodView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/anim/GoodView;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView$1;->a:Lcom/alibaba/android/dingtalk/circle/anim/GoodView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView$1;->a:Lcom/alibaba/android/dingtalk/circle/anim/GoodView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalk/circle/anim/GoodView$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/circle/anim/GoodView$1$1;-><init>(Lcom/alibaba/android/dingtalk/circle/anim/GoodView$1;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 156
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 161
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 144
    return-void
.end method
