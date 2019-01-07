.class final Lrx/internal/operators/OnSubscribeAmb$2;
.super Ljava/lang/Object;
.source "OnSubscribeAmb.java"

# interfaces
.implements Llgu;


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
    .line 410
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$2;, "Lrx/internal/operators/OnSubscribeAmb$2;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeAmb$2;->b:Lrx/internal/operators/OnSubscribeAmb;

    iput-object p2, p0, Lrx/internal/operators/OnSubscribeAmb$2;->a:Lrx/internal/operators/OnSubscribeAmb$Selection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final request(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .line 415
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$2;, "Lrx/internal/operators/OnSubscribeAmb$2;"
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeAmb$2;->a:Lrx/internal/operators/OnSubscribeAmb$Selection;

    invoke-virtual {v2}, Lrx/internal/operators/OnSubscribeAmb$Selection;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OnSubscribeAmb$a;

    .local v1, "c":Lrx/internal/operators/OnSubscribeAmb$a;, "Lrx/internal/operators/OnSubscribeAmb$a<TT;>;"
    if-eqz v1, :cond_1

    .line 417
    invoke-static {v1, p1, p2}, Lrx/internal/operators/OnSubscribeAmb$a;->a(Lrx/internal/operators/OnSubscribeAmb$a;J)V

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeAmb$2;->a:Lrx/internal/operators/OnSubscribeAmb$Selection;

    iget-object v2, v2, Lrx/internal/operators/OnSubscribeAmb$Selection;->ambSubscribers:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OnSubscribeAmb$a;

    .line 421
    .local v0, "ambSubscriber":Lrx/internal/operators/OnSubscribeAmb$a;, "Lrx/internal/operators/OnSubscribeAmb$a<TT;>;"
    invoke-virtual {v0}, Lrx/internal/operators/OnSubscribeAmb$a;->isUnsubscribed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 424
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeAmb$2;->a:Lrx/internal/operators/OnSubscribeAmb$Selection;

    invoke-virtual {v3}, Lrx/internal/operators/OnSubscribeAmb$Selection;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    .line 425
    invoke-static {v0, p1, p2}, Lrx/internal/operators/OnSubscribeAmb$a;->a(Lrx/internal/operators/OnSubscribeAmb$a;J)V

    goto :goto_0

    .line 430
    :cond_3
    invoke-static {v0, p1, p2}, Lrx/internal/operators/OnSubscribeAmb$a;->a(Lrx/internal/operators/OnSubscribeAmb$a;J)V

    goto :goto_1
.end method
