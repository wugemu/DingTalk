.class final Lrx/internal/operators/OnSubscribeAmb$1;
.super Ljava/lang/Object;
.source "OnSubscribeAmb.java"

# interfaces
.implements Llhf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeAmb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/OnSubscribeAmb$Selection;

.field final synthetic b:Lrx/internal/operators/OnSubscribeAmb;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeAmb;Lrx/internal/operators/OnSubscribeAmb$Selection;)V
    .locals 0
    .param p1, "this$0"    # Lrx/internal/operators/OnSubscribeAmb;

    .prologue
    .line 369
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$1;, "Lrx/internal/operators/OnSubscribeAmb$1;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeAmb$1;->b:Lrx/internal/operators/OnSubscribeAmb;

    iput-object p2, p0, Lrx/internal/operators/OnSubscribeAmb$1;->a:Lrx/internal/operators/OnSubscribeAmb$Selection;

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
    .line 374
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$1;, "Lrx/internal/operators/OnSubscribeAmb$1;"
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeAmb$1;->a:Lrx/internal/operators/OnSubscribeAmb$Selection;

    invoke-virtual {v1}, Lrx/internal/operators/OnSubscribeAmb$Selection;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OnSubscribeAmb$a;

    .local v0, "c":Lrx/internal/operators/OnSubscribeAmb$a;, "Lrx/internal/operators/OnSubscribeAmb$a<TT;>;"
    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {v0}, Lrx/internal/operators/OnSubscribeAmb$a;->unsubscribe()V

    .line 382
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeAmb$1;->a:Lrx/internal/operators/OnSubscribeAmb$Selection;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeAmb$Selection;->ambSubscribers:Ljava/util/Collection;

    invoke-static {v1}, Lrx/internal/operators/OnSubscribeAmb;->a(Ljava/util/Collection;)V

    .line 383
    return-void
.end method
