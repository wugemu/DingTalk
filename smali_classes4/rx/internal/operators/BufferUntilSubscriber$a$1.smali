.class final Lrx/internal/operators/BufferUntilSubscriber$a$1;
.super Ljava/lang/Object;
.source "BufferUntilSubscriber.java"

# interfaces
.implements Llhf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/BufferUntilSubscriber$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/BufferUntilSubscriber$a;


# direct methods
.method constructor <init>(Lrx/internal/operators/BufferUntilSubscriber$a;)V
    .locals 0
    .param p1, "this$0"    # Lrx/internal/operators/BufferUntilSubscriber$a;

    .prologue
    .line 90
    .local p0, "this":Lrx/internal/operators/BufferUntilSubscriber$a$1;, "Lrx/internal/operators/BufferUntilSubscriber$a$1;"
    iput-object p1, p0, Lrx/internal/operators/BufferUntilSubscriber$a$1;->a:Lrx/internal/operators/BufferUntilSubscriber$a;

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
    .line 94
    .local p0, "this":Lrx/internal/operators/BufferUntilSubscriber$a$1;, "Lrx/internal/operators/BufferUntilSubscriber$a$1;"
    iget-object v0, p0, Lrx/internal/operators/BufferUntilSubscriber$a$1;->a:Lrx/internal/operators/BufferUntilSubscriber$a;

    iget-object v0, v0, Lrx/internal/operators/BufferUntilSubscriber$a;->a:Lrx/internal/operators/BufferUntilSubscriber$State;

    sget-object v1, Lrx/internal/operators/BufferUntilSubscriber;->c:Llgt;

    invoke-virtual {v0, v1}, Lrx/internal/operators/BufferUntilSubscriber$State;->set(Ljava/lang/Object;)V

    .line 95
    return-void
.end method
