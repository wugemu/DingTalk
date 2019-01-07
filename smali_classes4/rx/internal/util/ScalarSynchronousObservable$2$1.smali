.class final Lrx/internal/util/ScalarSynchronousObservable$2$1;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Llhf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/ScalarSynchronousObservable$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Llhf;

.field final synthetic b:Llgv$a;

.field final synthetic c:Lrx/internal/util/ScalarSynchronousObservable$2;


# direct methods
.method constructor <init>(Lrx/internal/util/ScalarSynchronousObservable$2;Llhf;Llgv$a;)V
    .locals 0
    .param p1, "this$1"    # Lrx/internal/util/ScalarSynchronousObservable$2;

    .prologue
    .line 110
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$2$1;, "Lrx/internal/util/ScalarSynchronousObservable$2$1;"
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable$2$1;->c:Lrx/internal/util/ScalarSynchronousObservable$2;

    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousObservable$2$1;->a:Llhf;

    iput-object p3, p0, Lrx/internal/util/ScalarSynchronousObservable$2$1;->b:Llgv$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 114
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$2$1;, "Lrx/internal/util/ScalarSynchronousObservable$2$1;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable$2$1;->a:Llhf;

    invoke-interface {v0}, Llhf;->call()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable$2$1;->b:Llgv$a;

    invoke-virtual {v0}, Llgv$a;->unsubscribe()V

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/util/ScalarSynchronousObservable$2$1;->b:Llgv$a;

    invoke-virtual {v1}, Llgv$a;->unsubscribe()V

    throw v0
.end method
