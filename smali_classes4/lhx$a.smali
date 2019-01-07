.class final Llhx$a;
.super Llgx;
.source "SingleLiftObservableOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llhx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Llgx",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Llgy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgy",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Llgy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Llhx$a;, "Llhx$a<TT;>;"
    .local p1, "actual":Llgy;, "Llgy<-TT;>;"
    invoke-direct {p0}, Llgx;-><init>()V

    .line 71
    iput-object p1, p0, Llhx$a;->a:Llgy;

    .line 72
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 76
    .local p0, "this":Llhx$a;, "Llhx$a<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Llhx$a;->a:Llgy;

    new-instance v1, Lrx/internal/producers/SingleProducer;

    iget-object v2, p0, Llhx$a;->a:Llgy;

    invoke-direct {v1, v2, p1}, Lrx/internal/producers/SingleProducer;-><init>(Llgy;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Llgy;->a(Llgu;)V

    .line 77
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 81
    .local p0, "this":Llhx$a;, "Llhx$a<TT;>;"
    iget-object v0, p0, Llhx$a;->a:Llgy;

    invoke-virtual {v0, p1}, Llgy;->onError(Ljava/lang/Throwable;)V

    .line 82
    return-void
.end method
