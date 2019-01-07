.class final Lrx/internal/operators/OperatorPublish$a$1;
.super Ljava/lang/Object;
.source "OperatorPublish.java"

# interfaces
.implements Llhf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorPublish$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/OperatorPublish$a;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorPublish$a;)V
    .locals 0
    .param p1, "this$0"    # Lrx/internal/operators/OperatorPublish$a;

    .prologue
    .line 257
    .local p0, "this":Lrx/internal/operators/OperatorPublish$a$1;, "Lrx/internal/operators/OperatorPublish$a$1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorPublish$a$1;->a:Lrx/internal/operators/OperatorPublish$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 260
    .local p0, "this":Lrx/internal/operators/OperatorPublish$a$1;, "Lrx/internal/operators/OperatorPublish$a$1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorPublish$a$1;->a:Lrx/internal/operators/OperatorPublish$a;

    iget-object v0, v0, Lrx/internal/operators/OperatorPublish$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/internal/operators/OperatorPublish$a;->e:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v0, p0, Lrx/internal/operators/OperatorPublish$a$1;->a:Lrx/internal/operators/OperatorPublish$a;

    iget-object v0, v0, Lrx/internal/operators/OperatorPublish$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lrx/internal/operators/OperatorPublish$a$1;->a:Lrx/internal/operators/OperatorPublish$a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 264
    return-void
.end method
