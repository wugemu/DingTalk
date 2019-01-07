.class public final Lrx/internal/operators/OperatorZip;
.super Ljava/lang/Object;
.source "OperatorZip.java"

# interfaces
.implements Llgs$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorZip$Zip;,
        Lrx/internal/operators/OperatorZip$ZipProducer;,
        Lrx/internal/operators/OperatorZip$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Llgs$b",
        "<TR;[",
        "Llgs",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final a:Llhm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llhm",
            "<+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method private a(Llgy;)Llgy;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-TR;>;)",
            "Llgy",
            "<-[",
            "Llgs;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 99
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    .local p1, "child":Llgy;, "Llgy<-TR;>;"
    new-instance v2, Lrx/internal/operators/OperatorZip$Zip;

    iget-object v3, p0, Lrx/internal/operators/OperatorZip;->a:Llhm;

    invoke-direct {v2, p1, v3}, Lrx/internal/operators/OperatorZip$Zip;-><init>(Llgy;Llhm;)V

    .line 100
    .local v2, "zipper":Lrx/internal/operators/OperatorZip$Zip;, "Lrx/internal/operators/OperatorZip$Zip<TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorZip$ZipProducer;

    invoke-direct {v0, v2}, Lrx/internal/operators/OperatorZip$ZipProducer;-><init>(Lrx/internal/operators/OperatorZip$Zip;)V

    .line 101
    .local v0, "producer":Lrx/internal/operators/OperatorZip$ZipProducer;, "Lrx/internal/operators/OperatorZip$ZipProducer<TR;>;"
    new-instance v1, Lrx/internal/operators/OperatorZip$a;

    invoke-direct {v1, p0, p1, v2, v0}, Lrx/internal/operators/OperatorZip$a;-><init>(Lrx/internal/operators/OperatorZip;Llgy;Lrx/internal/operators/OperatorZip$Zip;Lrx/internal/operators/OperatorZip$ZipProducer;)V

    .line 103
    .local v1, "subscriber":Lrx/internal/operators/OperatorZip$a;, "Lrx/internal/operators/OperatorZip<TR;>.a;"
    invoke-virtual {p1, v1}, Llgy;->a(Llgz;)V

    .line 104
    invoke-virtual {p1, v0}, Llgy;->a(Llgu;)V

    .line 106
    return-object v1
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    check-cast p1, Llgy;

    invoke-direct {p0, p1}, Lrx/internal/operators/OperatorZip;->a(Llgy;)Llgy;

    move-result-object v0

    return-object v0
.end method
