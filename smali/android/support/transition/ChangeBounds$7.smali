.class final Landroid/support/transition/ChangeBounds$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Lbh;Lbh;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/transition/ChangeBounds$a;

.field final synthetic b:Landroid/support/transition/ChangeBounds;

.field private c:Landroid/support/transition/ChangeBounds$a;


# direct methods
.method constructor <init>(Landroid/support/transition/ChangeBounds;Landroid/support/transition/ChangeBounds$a;)V
    .locals 1
    .param p1, "this$0"    # Landroid/support/transition/ChangeBounds;

    .prologue
    .line 322
    iput-object p1, p0, Landroid/support/transition/ChangeBounds$7;->b:Landroid/support/transition/ChangeBounds;

    iput-object p2, p0, Landroid/support/transition/ChangeBounds$7;->a:Landroid/support/transition/ChangeBounds$a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 325
    iget-object v0, p0, Landroid/support/transition/ChangeBounds$7;->a:Landroid/support/transition/ChangeBounds$a;

    iput-object v0, p0, Landroid/support/transition/ChangeBounds$7;->c:Landroid/support/transition/ChangeBounds$a;

    return-void
.end method
