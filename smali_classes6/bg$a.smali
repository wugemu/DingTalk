.class public final Lbg$a;
.super Ljava/lang/Object;
.source "TransitionUtils.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Landroid/graphics/Matrix;",
        ">;"
    }
.end annotation


# instance fields
.field final a:[F

.field final b:[F

.field final c:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-array v0, v1, [F

    iput-object v0, p0, Lbg$a;->a:[F

    .line 115
    new-array v0, v1, [F

    iput-object v0, p0, Lbg$a;->b:[F

    .line 117
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lbg$a;->c:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public final synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 111
    check-cast p2, Landroid/graphics/Matrix;

    check-cast p3, Landroid/graphics/Matrix;

    .line 1121
    iget-object v0, p0, Lbg$a;->a:[F

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1122
    iget-object v0, p0, Lbg$a;->b:[F

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1123
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 1124
    iget-object v1, p0, Lbg$a;->b:[F

    aget v1, v1, v0

    iget-object v2, p0, Lbg$a;->a:[F

    aget v2, v2, v0

    sub-float/2addr v1, v2

    .line 1125
    iget-object v2, p0, Lbg$a;->b:[F

    iget-object v3, p0, Lbg$a;->a:[F

    aget v3, v3, v0

    mul-float/2addr v1, p1

    add-float/2addr v1, v3

    aput v1, v2, v0

    .line 1123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1127
    :cond_0
    iget-object v0, p0, Lbg$a;->c:Landroid/graphics/Matrix;

    iget-object v1, p0, Lbg$a;->b:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 1128
    iget-object v0, p0, Lbg$a;->c:Landroid/graphics/Matrix;

    .line 111
    return-object v0
.end method
