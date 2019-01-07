.class final Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber$a;
.super Llgx;
.source "OnSubscribeFlatMapSingle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llgx",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;)V
    .locals 0
    .param p1, "this$0"    # Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;

    .prologue
    .line 321
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber$a;, "Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber<TT;TR;>.a;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber$a;->a:Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;

    invoke-direct {p0}, Llgx;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 325
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber$a;, "Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber<TT;TR;>.a;"
    .local p1, "t":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber$a;->a:Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;

    invoke-virtual {v0, p0, p1}, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->a(Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber$a;Ljava/lang/Object;)V

    .line 326
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 330
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber$a;, "Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber<TT;TR;>.a;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber$a;->a:Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;

    invoke-virtual {v0, p0, p1}, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->a(Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber$a;Ljava/lang/Throwable;)V

    .line 331
    return-void
.end method
