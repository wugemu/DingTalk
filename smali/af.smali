.class public final Laf;
.super Ljava/lang/Object;
.source "FloatArrayEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<[F>;"
    }
.end annotation


# instance fields
.field private a:[F


# direct methods
.method public constructor <init>([F)V
    .locals 0
    .param p1, "reuseArray"    # [F

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Laf;->a:[F

    .line 41
    return-void
.end method


# virtual methods
.method public final bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 27
    check-cast p2, [F

    check-cast p3, [F

    .line 1057
    iget-object v0, p0, Laf;->a:[F

    .line 1058
    if-nez v0, :cond_0

    .line 1059
    array-length v0, p2

    new-array v0, v0, [F

    .line 1062
    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1063
    aget v2, p2, v1

    .line 1064
    aget v3, p3, v1

    .line 1065
    sub-float/2addr v3, v2

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 1062
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27
    :cond_1
    return-object v0
.end method
