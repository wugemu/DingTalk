.class public final Lrx/internal/operators/OnSubscribeRange;
.super Ljava/lang/Object;
.source "OnSubscribeRange.java"

# interfaces
.implements Llgs$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeRange$RangeProducer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Llgs$a",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 26
    check-cast p1, Llgy;

    .line 1038
    new-instance v0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;

    iget v1, p0, Lrx/internal/operators/OnSubscribeRange;->a:I

    iget v2, p0, Lrx/internal/operators/OnSubscribeRange;->b:I

    invoke-direct {v0, p1, v1, v2}, Lrx/internal/operators/OnSubscribeRange$RangeProducer;-><init>(Llgy;II)V

    invoke-virtual {p1, v0}, Llgy;->a(Llgu;)V

    .line 26
    return-void
.end method
