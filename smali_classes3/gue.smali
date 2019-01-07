.class public final Lgue;
.super Landroid/view/animation/Animation;
.source "ProgressObservableAnim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgue$a;
    }
.end annotation


# instance fields
.field public a:Lgue$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 21
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 22
    iget-object v0, p0, Lgue;->a:Lgue$a;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lgue;->a:Lgue$a;

    invoke-interface {v0, p1}, Lgue$a;->a(F)V

    .line 25
    :cond_0
    return-void
.end method
