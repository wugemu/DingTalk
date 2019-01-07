.class final Landroid/support/transition/ChangeTransform$b;
.super Ljava/lang/Object;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Landroid/graphics/Matrix;

.field final b:[F

.field c:F

.field d:F

.field private final e:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;[F)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "values"    # [F

    .prologue
    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/transition/ChangeTransform$b;->a:Landroid/graphics/Matrix;

    .line 553
    iput-object p1, p0, Landroid/support/transition/ChangeTransform$b;->e:Landroid/view/View;

    .line 554
    invoke-virtual {p2}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/support/transition/ChangeTransform$b;->b:[F

    .line 555
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$b;->b:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Landroid/support/transition/ChangeTransform$b;->c:F

    .line 556
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$b;->b:[F

    const/4 v1, 0x5

    aget v0, v0, v1

    iput v0, p0, Landroid/support/transition/ChangeTransform$b;->d:F

    .line 557
    invoke-virtual {p0}, Landroid/support/transition/ChangeTransform$b;->a()V

    .line 558
    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 572
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$b;->b:[F

    const/4 v1, 0x2

    iget v2, p0, Landroid/support/transition/ChangeTransform$b;->c:F

    aput v2, v0, v1

    .line 573
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$b;->b:[F

    const/4 v1, 0x5

    iget v2, p0, Landroid/support/transition/ChangeTransform$b;->d:F

    aput v2, v0, v1

    .line 574
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$b;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/support/transition/ChangeTransform$b;->b:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 575
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$b;->e:Landroid/view/View;

    iget-object v1, p0, Landroid/support/transition/ChangeTransform$b;->a:Landroid/graphics/Matrix;

    invoke-static {v0, v1}, Lbs;->c(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 576
    return-void
.end method
