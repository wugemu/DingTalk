.class Lcom/taobao/weex/dom/transition/WXTransition$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WXTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/dom/transition/WXTransition;->doPendingTransformAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field hasCancel:Z

.field final synthetic this$0:Lcom/taobao/weex/dom/transition/WXTransition;


# direct methods
.method constructor <init>(Lcom/taobao/weex/dom/transition/WXTransition;)V
    .locals 1
    .param p1, "this$0"    # Lcom/taobao/weex/dom/transition/WXTransition;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition$4;->this$0:Lcom/taobao/weex/dom/transition/WXTransition;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/weex/dom/transition/WXTransition$4;->hasCancel:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 396
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 397
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/weex/dom/transition/WXTransition$4;->hasCancel:Z

    .line 398
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/taobao/weex/dom/transition/WXTransition$4;->hasCancel:Z

    if-eqz v0, :cond_0

    .line 407
    :goto_0
    return-void

    .line 405
    :cond_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 406
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition$4;->this$0:Lcom/taobao/weex/dom/transition/WXTransition;

    invoke-static {v0}, Lcom/taobao/weex/dom/transition/WXTransition;->access$700(Lcom/taobao/weex/dom/transition/WXTransition;)V

    goto :goto_0
.end method
