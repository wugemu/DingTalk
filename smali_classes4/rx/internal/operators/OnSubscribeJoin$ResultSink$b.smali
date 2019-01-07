.class final Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;
.super Llgy;
.source "OnSubscribeJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeJoin$ResultSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeJoin$ResultSink$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llgy",
        "<TTRight;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeJoin$ResultSink;)V
    .locals 0
    .param p1, "this$1"    # Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    .prologue
    .line 216
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.b;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    invoke-direct {p0}, Llgy;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 282
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.b;"
    const/4 v0, 0x0

    .line 283
    .local v0, "complete":Z
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    monitor-enter v2

    .line 284
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->rightDone:Z

    .line 285
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-boolean v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->leftDone:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->rightMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    :cond_0
    const/4 v0, 0x1

    .line 288
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    if-eqz v0, :cond_2

    .line 290
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Llgy;

    invoke-virtual {v1}, Llgy;->onCompleted()V

    .line 291
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Llgy;

    invoke-virtual {v1}, Llgy;->unsubscribe()V

    .line 295
    :goto_0
    return-void

    .line 288
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 293
    :cond_2
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->group:Llkx;

    invoke-virtual {v1, p0}, Llkx;->b(Llgz;)V

    goto :goto_0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 276
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.b;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Llgy;

    invoke-virtual {v0, p1}, Llgy;->onError(Ljava/lang/Throwable;)V

    .line 277
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Llgy;

    invoke-virtual {v0}, Llgy;->unsubscribe()V

    .line 278
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRight;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 237
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.b;"
    .local p1, "args":Ljava/lang/Object;, "TTRight;"
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    monitor-enter v11

    .line 238
    :try_start_0
    iget-object v10, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget v4, v10, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->rightId:I

    add-int/lit8 v12, v4, 0x1

    iput v12, v10, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->rightId:I

    .line 239
    .local v4, "id":I
    iget-object v10, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v10, v10, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->rightMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v10, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget v3, v10, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->leftId:I

    .line 241
    .local v3, "highLeftId":I
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 242
    new-instance v7, Llky;

    invoke-direct {v7}, Llky;-><init>()V

    .line 243
    .local v7, "md":Llky;
    iget-object v10, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v10, v10, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->group:Llkx;

    invoke-virtual {v10, v7}, Llkx;->a(Llgz;)V

    .line 247
    :try_start_1
    iget-object v10, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v10, v10, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->this$0:Lrx/internal/operators/OnSubscribeJoin;

    iget-object v10, v10, Lrx/internal/operators/OnSubscribeJoin;->d:Llhk;

    invoke-interface {v10, p1}, Llhk;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llgs;

    .line 249
    .local v1, "duration":Llgs;, "Llgs<TTRightDuration;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b$a;

    invoke-direct {v0, p0, v4}, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b$a;-><init>(Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;I)V

    .line 250
    .local v0, "d2":Llgy;, "Llgy<TTRightDuration;>;"
    iget-object v10, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v10, v10, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->group:Llkx;

    invoke-virtual {v10, v0}, Llkx;->a(Llgz;)V

    .line 252
    invoke-virtual {v1, v0}, Llgs;->a(Llgy;)Llgz;

    .line 255
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v5, "leftValues":Ljava/util/List;, "Ljava/util/List<TTLeft;>;"
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    monitor-enter v11
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 257
    :try_start_2
    iget-object v10, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    invoke-virtual {v10}, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->leftMap()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 258
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;TTLeft;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ge v10, v3, :cond_0

    .line 259
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 262
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;TTLeft;>;"
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v10
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 269
    .end local v0    # "d2":Llgy;, "Llgy<TTRightDuration;>;"
    .end local v1    # "duration":Llgs;, "Llgs<TTRightDuration;>;"
    .end local v5    # "leftValues":Ljava/util/List;, "Ljava/util/List<TTLeft;>;"
    :catch_0
    move-exception v9

    .line 270
    .local v9, "t":Ljava/lang/Throwable;
    invoke-static {v9, p0}, Llhe;->a(Ljava/lang/Throwable;Llgt;)V

    .line 272
    .end local v9    # "t":Ljava/lang/Throwable;
    :cond_1
    return-void

    .line 241
    .end local v3    # "highLeftId":I
    .end local v4    # "id":I
    .end local v7    # "md":Llky;
    :catchall_1
    move-exception v10

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v10

    .line 262
    .restart local v0    # "d2":Llgy;, "Llgy<TTRightDuration;>;"
    .restart local v1    # "duration":Llgs;, "Llgs<TTRightDuration;>;"
    .restart local v3    # "highLeftId":I
    .restart local v4    # "id":I
    .restart local v5    # "leftValues":Ljava/util/List;, "Ljava/util/List<TTLeft;>;"
    .restart local v7    # "md":Llky;
    :cond_2
    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 264
    :try_start_6
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 265
    .local v6, "lv":Ljava/lang/Object;, "TTLeft;"
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v11, v11, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->this$0:Lrx/internal/operators/OnSubscribeJoin;

    iget-object v11, v11, Lrx/internal/operators/OnSubscribeJoin;->e:Llhl;

    invoke-interface {v11, v6, p1}, Llhl;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 266
    .local v8, "result":Ljava/lang/Object;, "TR;"
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$b;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v11, v11, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Llgy;

    invoke-virtual {v11, v8}, Llgy;->onNext(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1
.end method
