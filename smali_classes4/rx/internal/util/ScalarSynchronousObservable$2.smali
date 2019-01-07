.class final Lrx/internal/util/ScalarSynchronousObservable$2;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Llhk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/ScalarSynchronousObservable;->b(Llgv;)Llgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Llhk",
        "<",
        "Llhf;",
        "Llgz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Llgv;

.field final synthetic b:Lrx/internal/util/ScalarSynchronousObservable;


# direct methods
.method constructor <init>(Lrx/internal/util/ScalarSynchronousObservable;Llgv;)V
    .locals 0
    .param p1, "this$0"    # Lrx/internal/util/ScalarSynchronousObservable;

    .prologue
    .line 106
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$2;, "Lrx/internal/util/ScalarSynchronousObservable$2;"
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable$2;->b:Lrx/internal/util/ScalarSynchronousObservable;

    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousObservable$2;->a:Llgv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 106
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$2;, "Lrx/internal/util/ScalarSynchronousObservable$2;"
    check-cast p1, Llhf;

    .line 1109
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable$2;->a:Llgv;

    invoke-virtual {v0}, Llgv;->a()Llgv$a;

    move-result-object v0

    .line 1110
    new-instance v1, Lrx/internal/util/ScalarSynchronousObservable$2$1;

    invoke-direct {v1, p0, p1, v0}, Lrx/internal/util/ScalarSynchronousObservable$2$1;-><init>(Lrx/internal/util/ScalarSynchronousObservable$2;Llhf;Llgv$a;)V

    invoke-virtual {v0, v1}, Llgv$a;->a(Llhf;)Llgz;

    .line 106
    return-object v0
.end method
