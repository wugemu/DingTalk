.class final Landroid/support/transition/Transition$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/Transition;->runAnimator(Landroid/animation/Animator;Lfk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfk;

.field final synthetic b:Landroid/support/transition/Transition;


# direct methods
.method constructor <init>(Landroid/support/transition/Transition;Lfk;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/transition/Transition;

    .prologue
    .line 894
    iput-object p1, p0, Landroid/support/transition/Transition$2;->b:Landroid/support/transition/Transition;

    iput-object p2, p0, Landroid/support/transition/Transition$2;->a:Lfk;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 902
    iget-object v0, p0, Landroid/support/transition/Transition$2;->a:Lfk;

    invoke-virtual {v0, p1}, Lfk;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    iget-object v0, p0, Landroid/support/transition/Transition$2;->b:Landroid/support/transition/Transition;

    invoke-static {v0}, Landroid/support/transition/Transition;->access$000(Landroid/support/transition/Transition;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 904
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 897
    iget-object v0, p0, Landroid/support/transition/Transition$2;->b:Landroid/support/transition/Transition;

    invoke-static {v0}, Landroid/support/transition/Transition;->access$000(Landroid/support/transition/Transition;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 898
    return-void
.end method
