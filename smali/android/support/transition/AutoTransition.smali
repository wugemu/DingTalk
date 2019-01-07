.class public Landroid/support/transition/AutoTransition;
.super Landroid/support/transition/TransitionSet;
.source "AutoTransition.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/transition/TransitionSet;-><init>()V

    .line 38
    invoke-direct {p0}, Landroid/support/transition/AutoTransition;->a()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/support/transition/TransitionSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0}, Landroid/support/transition/AutoTransition;->a()V

    .line 44
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 47
    invoke-virtual {p0, v2}, Landroid/support/transition/AutoTransition;->a(I)Landroid/support/transition/TransitionSet;

    .line 48
    new-instance v0, Landroid/support/transition/Fade;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/support/transition/Fade;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/support/transition/AutoTransition;->a(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    move-result-object v0

    new-instance v1, Landroid/support/transition/ChangeBounds;

    invoke-direct {v1}, Landroid/support/transition/ChangeBounds;-><init>()V

    .line 49
    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionSet;->a(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    move-result-object v0

    new-instance v1, Landroid/support/transition/Fade;

    invoke-direct {v1, v2}, Landroid/support/transition/Fade;-><init>(I)V

    .line 50
    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionSet;->a(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    .line 51
    return-void
.end method
