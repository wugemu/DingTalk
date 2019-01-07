.class final Lrx/internal/operators/OnSubscribeJoin$ResultSink$b$a;
.super Llgy;
.source "OnSubscribeJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llgy",
        "<TTRightDuration;>;"
    }
.end annotation


# instance fields
.field final a:I

.field b:Z

.field final synthetic c:Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;I)V
    .locals 1
    .param p1, "this$2"    # Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;
    .param p2, "id"    # I

    .prologue
    .line 302
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$b$a;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.b.a;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b$a;->c:Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;

    invoke-direct {p0}, Llgy;-><init>()V

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b$a;->b:Z

    .line 303
    iput p2, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b$a;->a:I

    .line 304
    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$b$a;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.b.a;"
    const/4 v0, 0x0

    .line 318
    iget-boolean v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b$a;->b:Z

    if-eqz v1, :cond_1

    .line 319
    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b$a;->b:Z

    .line 320
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b$a;->c:Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;

    iget v2, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b$a;->a:I

    .line 1220
    iget-object v3, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    monitor-enter v3

    .line 1221
    :try_start_0
    iget-object v4, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v4, v4, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->rightMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v2, v2, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->rightMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-boolean v2, v2, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->rightDone:Z

    if-eqz v2, :cond_0

    .line 1222
    const/4 v0, 0x1

    .line 1224
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1225
    if-eqz v0, :cond_2

    .line 1226
    iget-object v0, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Llgy;

    invoke-virtual {v0}, Llgy;->onCompleted()V

    .line 1227
    iget-object v0, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Llgy;

    invoke-virtual {v0}, Llgy;->unsubscribe()V

    :cond_1
    :goto_0
    return-void

    .line 1224
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1229
    :cond_2
    iget-object v0, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->group:Llkx;

    invoke-virtual {v0, p0}, Llkx;->b(Llgz;)V

    goto :goto_0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 313
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$b$a;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.b.a;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b$a;->c:Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;->onError(Ljava/lang/Throwable;)V

    .line 314
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRightDuration;)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$b$a;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.b.a;"
    .local p1, "args":Ljava/lang/Object;, "TTRightDuration;"
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b$a;->onCompleted()V

    .line 309
    return-void
.end method
