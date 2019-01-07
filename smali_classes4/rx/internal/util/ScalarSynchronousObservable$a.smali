.class final Lrx/internal/util/ScalarSynchronousObservable$a;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Llgs$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/ScalarSynchronousObservable;
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
        "Ljava/lang/Object;",
        "Llgs$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final b:Llhk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llhk",
            "<",
            "Llhf;",
            "Llgz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Llhk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Llhk",
            "<",
            "Llhf;",
            "Llgz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$a;, "Lrx/internal/util/ScalarSynchronousObservable$a<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    .local p2, "onSchedule":Llhk;, "Llhk<Llhf;Llgz;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable$a;->a:Ljava/lang/Object;

    .line 154
    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousObservable$a;->b:Llhk;

    .line 155
    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 148
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$a;, "Lrx/internal/util/ScalarSynchronousObservable$a<TT;>;"
    check-cast p1, Llgy;

    .line 1159
    new-instance v0, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;

    iget-object v1, p0, Lrx/internal/util/ScalarSynchronousObservable$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Lrx/internal/util/ScalarSynchronousObservable$a;->b:Llhk;

    invoke-direct {v0, p1, v1, v2}, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;-><init>(Llgy;Ljava/lang/Object;Llhk;)V

    invoke-virtual {p1, v0}, Llgy;->a(Llgu;)V

    .line 148
    return-void
.end method
