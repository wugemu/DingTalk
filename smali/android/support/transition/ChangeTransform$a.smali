.class final Landroid/support/transition/ChangeTransform$a;
.super Lbd;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Lai;


# direct methods
.method constructor <init>(Landroid/view/View;Lai;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "ghostView"    # Lai;

    .prologue
    .line 514
    invoke-direct {p0}, Lbd;-><init>()V

    .line 515
    iput-object p1, p0, Landroid/support/transition/ChangeTransform$a;->a:Landroid/view/View;

    .line 516
    iput-object p2, p0, Landroid/support/transition/ChangeTransform$a;->b:Lai;

    .line 517
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/transition/Transition;)V
    .locals 3
    .param p1, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 521
    invoke-virtual {p1, p0}, Landroid/support/transition/Transition;->removeListener(Landroid/support/transition/Transition$d;)Landroid/support/transition/Transition;

    .line 522
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$a;->a:Landroid/view/View;

    invoke-static {v0}, Laj;->a(Landroid/view/View;)V

    .line 523
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$a;->a:Landroid/view/View;

    sget v1, Lay$a;->transition_transform:I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 524
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$a;->a:Landroid/view/View;

    sget v1, Lay$a;->parent_matrix:I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 525
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$a;->b:Lai;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lai;->setVisibility(I)V

    .line 530
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$a;->b:Lai;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lai;->setVisibility(I)V

    .line 535
    return-void
.end method
