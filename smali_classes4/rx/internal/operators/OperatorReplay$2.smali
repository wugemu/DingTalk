.class final Lrx/internal/operators/OperatorReplay$2;
.super Ljava/lang/Object;
.source "OperatorReplay.java"

# interfaces
.implements Llhj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorReplay;->a(Llgs;I)Llkc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Llhj",
        "<",
        "Lrx/internal/operators/OperatorReplay$a",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 148
    iput p1, p0, Lrx/internal/operators/OperatorReplay$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 148
    .line 1151
    new-instance v0, Lrx/internal/operators/OperatorReplay$SizeBoundReplayBuffer;

    iget v1, p0, Lrx/internal/operators/OperatorReplay$2;->a:I

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorReplay$SizeBoundReplayBuffer;-><init>(I)V

    .line 148
    return-object v0
.end method
