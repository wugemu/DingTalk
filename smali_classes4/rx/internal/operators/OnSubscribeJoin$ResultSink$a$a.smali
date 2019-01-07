.class final Lrx/internal/operators/OnSubscribeJoin$ResultSink$a$a;
.super Llgy;
.source "OnSubscribeJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llgy",
        "<TT",
        "LeftDuration;",
        ">;"
    }
.end annotation


# instance fields
.field final a:I

.field b:Z

.field final synthetic c:Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;I)V
    .locals 1
    .param p1, "this$2"    # Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;
    .param p2, "id"    # I

    .prologue
    .line 190
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$a$a;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.a.a;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$a$a;->c:Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;

    invoke-direct {p0}, Llgy;-><init>()V

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$a$a;->b:Z

    .line 191
    iput p2, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$a$a;->a:I

    .line 192
    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$a$a;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.a.a;"
    const/4 v0, 0x0

    .line 206
    iget-boolean v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$a$a;->b:Z

    if-eqz v1, :cond_1

    .line 207
    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$a$a;->b:Z

    .line 208
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$a$a;->c:Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;

    iget v2, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$a$a;->a:I

    .line 1112
    iget-object v3, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    monitor-enter v3

    .line 1113
    :try_start_0
    iget-object v4, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    invoke-virtual {v4}, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->leftMap()Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    invoke-virtual {v2}, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->leftMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-boolean v2, v2, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->leftDone:Z

    if-eqz v2, :cond_0

    .line 1114
    const/4 v0, 0x1

    .line 1116
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1117
    if-eqz v0, :cond_2

    .line 1118
    iget-object v0, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Llgy;

    invoke-virtual {v0}, Llgy;->onCompleted()V

    .line 1119
    iget-object v0, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Llgy;

    invoke-virtual {v0}, Llgy;->unsubscribe()V

    :cond_1
    :goto_0
    return-void

    .line 1116
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1121
    :cond_2
    iget-object v0, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->group:Llkx;

    invoke-virtual {v0, p0}, Llkx;->b(Llgz;)V

    goto :goto_0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 201
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$a$a;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.a.a;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$a$a;->c:Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;->onError(Ljava/lang/Throwable;)V

    .line 202
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "LeftDuration;",
            ")V"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$a$a;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.a.a;"
    .local p1, "args":Ljava/lang/Object;, "TTLeftDuration;"
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeJoin$ResultSink$a$a;->onCompleted()V

    .line 197
    return-void
.end method
