.class final Lkfc$5;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkfc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkfc$c;

.field final synthetic b:Lkfc;


# direct methods
.method constructor <init>(Lkfc;Lkfc$c;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lkfc$5;->b:Lkfc;

    iput-object p2, p0, Lkfc$5;->a:Lkfc$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 403
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 407
    iget-object v0, p0, Lkfc$5;->a:Lkfc$c;

    invoke-virtual {v0}, Lkfc$c;->b()V

    .line 408
    iget-object v0, p0, Lkfc$5;->a:Lkfc$c;

    invoke-virtual {v0}, Lkfc$c;->a()V

    .line 409
    iget-object v0, p0, Lkfc$5;->a:Lkfc$c;

    iget-object v1, p0, Lkfc$5;->a:Lkfc$c;

    .line 1606
    iget v1, v1, Lkfc$c;->f:F

    .line 409
    invoke-virtual {v0, v1}, Lkfc$c;->a(F)V

    .line 410
    iget-object v0, p0, Lkfc$5;->b:Lkfc;

    iget-object v1, p0, Lkfc$5;->b:Lkfc;

    invoke-static {v1}, Lkfc;->c(Lkfc;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    rem-float/2addr v1, v2

    invoke-static {v0, v1}, Lkfc;->a(Lkfc;F)F

    .line 411
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 397
    iget-object v0, p0, Lkfc$5;->b:Lkfc;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkfc;->a(Lkfc;F)F

    .line 398
    return-void
.end method
