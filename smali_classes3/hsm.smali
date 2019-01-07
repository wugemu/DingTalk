.class public final Lhsm;
.super Ljava/lang/Object;
.source "RotateAction.java"

# interfaces
.implements Lhsi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhsm$a;
    }
.end annotation


# instance fields
.field public a:F

.field private b:Lhsm$a;


# direct methods
.method public constructor <init>(FLhsm$a;)V
    .locals 0
    .param p1, "angle"    # F
    .param p2, "cropActionBackListener"    # Lhsm$a;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lhsm;->a:F

    .line 15
    iput-object p2, p0, Lhsm;->b:Lhsm$a;

    .line 16
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 20
    return-void
.end method

.method public final varargs a([Ljava/lang/Object;)V
    .locals 0
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 25
    return-void
.end method

.method public final varargs b([Ljava/lang/Object;)V
    .locals 0
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 30
    return-void
.end method

.method public final varargs c([Ljava/lang/Object;)V
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 34
    iget-object v0, p0, Lhsm;->b:Lhsm$a;

    if-eqz v0, :cond_0

    .line 35
    iget-object v1, p0, Lhsm;->b:Lhsm$a;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-interface {v1, v0}, Lhsm$a;->a(Landroid/graphics/RectF;)V

    .line 37
    :cond_0
    return-void
.end method
