.class final Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;
.super Llgy;
.source "OnSubscribeJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeJoin$ResultSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeJoin$ResultSink$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llgy",
        "<TT",
        "Left;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeJoin$ResultSink;)V
    .locals 0
    .param p1, "this$1"    # Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    .prologue
    .line 108
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.a;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

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
    .line 170
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.a;"
    const/4 v0, 0x0

    .line 171
    .local v0, "complete":Z
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    monitor-enter v2

    .line 172
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->leftDone:Z

    .line 173
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-boolean v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->rightDone:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    invoke-virtual {v1}, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->leftMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    :cond_0
    const/4 v0, 0x1

    .line 176
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    if-eqz v0, :cond_2

    .line 178
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Llgy;

    invoke-virtual {v1}, Llgy;->onCompleted()V

    .line 179
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Llgy;

    invoke-virtual {v1}, Llgy;->unsubscribe()V

    .line 183
    :goto_0
    return-void

    .line 176
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 181
    :cond_2
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->group:Llkx;

    invoke-virtual {v1, p0}, Llkx;->b(Llgz;)V

    goto :goto_0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 164
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.a;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Llgy;

    invoke-virtual {v0, p1}, Llgy;->onError(Ljava/lang/Throwable;)V

    .line 165
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Llgy;

    invoke-virtual {v0}, Llgy;->unsubscribe()V

    .line 166
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Left;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 130
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.a;"
    .local p1, "args":Ljava/lang/Object;, "TTLeft;"
    iget-object v10, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    monitor-enter v10

    .line 131
    :try_start_0
    iget-object v9, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget v4, v9, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->leftId:I

    add-int/lit8 v11, v4, 0x1

    iput v11, v9, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->leftId:I

    .line 132
    .local v4, "id":I
    iget-object v9, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    invoke-virtual {v9}, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->leftMap()Ljava/util/HashMap;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v9, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget v3, v9, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->rightId:I

    .line 134
    .local v3, "highRightId":I
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 138
    :try_start_1
    iget-object v9, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v9, v9, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->this$0:Lrx/internal/operators/OnSubscribeJoin;

    iget-object v9, v9, Lrx/internal/operators/OnSubscribeJoin;->c:Llhk;

    invoke-interface {v9, p1}, Llhk;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llgs;

    .line 140
    .local v1, "duration":Llgs;, "Llgs<TTLeftDuration;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$a$a;

    invoke-direct {v0, p0, v4}, Lrx/internal/operators/OnSubscribeJoin$ResultSink$a$a;-><init>(Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;I)V

    .line 141
    .local v0, "d1":Llgy;, "Llgy<TTLeftDuration;>;"
    iget-object v9, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v9, v9, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->group:Llkx;

    invoke-virtual {v9, v0}, Llkx;->a(Llgz;)V

    .line 143
    invoke-virtual {v1, v0}, Llgs;->a(Llgy;)Llgz;

    .line 145
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v7, "rightValues":Ljava/util/List;, "Ljava/util/List<TTRight;>;"
    iget-object v10, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    monitor-enter v10
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 147
    :try_start_2
    iget-object v9, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v9, v9, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->rightMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 148
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;TTRight;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ge v9, v3, :cond_0

    .line 149
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;TTRight;>;"
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v9
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 157
    .end local v0    # "d1":Llgy;, "Llgy<TTLeftDuration;>;"
    .end local v1    # "duration":Llgs;, "Llgs<TTLeftDuration;>;"
    .end local v7    # "rightValues":Ljava/util/List;, "Ljava/util/List<TTRight;>;"
    :catch_0
    move-exception v8

    .line 158
    .local v8, "t":Ljava/lang/Throwable;
    invoke-static {v8, p0}, Llhe;->a(Ljava/lang/Throwable;Llgt;)V

    .line 160
    .end local v8    # "t":Ljava/lang/Throwable;
    :cond_1
    return-void

    .line 134
    .end local v3    # "highRightId":I
    .end local v4    # "id":I
    :catchall_1
    move-exception v9

    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v9

    .line 152
    .restart local v0    # "d1":Llgy;, "Llgy<TTLeftDuration;>;"
    .restart local v1    # "duration":Llgs;, "Llgs<TTLeftDuration;>;"
    .restart local v3    # "highRightId":I
    .restart local v4    # "id":I
    .restart local v7    # "rightValues":Ljava/util/List;, "Ljava/util/List<TTRight;>;"
    :cond_2
    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 153
    :try_start_6
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 154
    .local v5, "r":Ljava/lang/Object;, "TTRight;"
    iget-object v10, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v10, v10, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->this$0:Lrx/internal/operators/OnSubscribeJoin;

    iget-object v10, v10, Lrx/internal/operators/OnSubscribeJoin;->e:Llhl;

    invoke-interface {v10, p1, v5}, Llhl;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 155
    .local v6, "result":Ljava/lang/Object;, "TR;"
    iget-object v10, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$a;->a:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v10, v10, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Llgy;

    invoke-virtual {v10, v6}, Llgy;->onNext(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1
.end method
