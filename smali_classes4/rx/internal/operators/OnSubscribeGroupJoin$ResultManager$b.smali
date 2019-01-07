.class final Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$b;
.super Llgy;
.source "OnSubscribeGroupJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llgy",
        "<TT1;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;)V
    .locals 0
    .param p1, "this$1"    # Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    .prologue
    .line 160
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$b;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.b;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$b;->a:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    invoke-direct {p0}, Llgy;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 201
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$b;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.b;"
    const/4 v0, 0x0

    .line 202
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Llgt<TT2;>;>;"
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$b;->a:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    monitor-enter v3

    .line 203
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$b;->a:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftDone:Z

    .line 204
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$b;->a:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-boolean v2, v2, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->rightDone:Z

    if-eqz v2, :cond_0

    .line 205
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$b;->a:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    invoke-virtual {v2}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Llgt<TT2;>;>;"
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Llgt<TT2;>;>;"
    :try_start_1
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$b;->a:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    invoke-virtual {v2}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 207
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$b;->a:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v2, v2, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->rightMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 209
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Llgt<TT2;>;>;"
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Llgt<TT2;>;>;"
    :cond_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$b;->a:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    invoke-virtual {v2, v0}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->complete(Ljava/util/List;)V

    .line 211
    return-void

    .line 209
    :catchall_0
    move-exception v2

    :goto_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Llgt<TT2;>;>;"
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Llgt<TT2;>;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Llgt<TT2;>;>;"
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Llgt<TT2;>;>;"
    goto :goto_0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 215
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$b;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.b;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$b;->a:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->errorAll(Ljava/lang/Throwable;)V

    .line 216
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 165
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$b;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.b;"
    .local p1, "args":Ljava/lang/Object;, "TT1;"
    :try_start_0
    invoke-static {}, Lrx/subjects/PublishSubject;->a()Lrx/subjects/PublishSubject;

    move-result-object v5

    .line 166
    .local v5, "subj":Llkv;, "Llkv<TT2;TT2;>;"
    new-instance v6, Llkh;

    invoke-direct {v6, v5}, Llkh;-><init>(Llgt;)V

    .line 168
    .local v6, "subjSerial":Llgt;, "Llgt<TT2;>;"
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$b;->a:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :try_start_1
    iget-object v10, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$b;->a:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget v2, v10, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftIds:I

    add-int/lit8 v12, v2, 0x1

    iput v12, v10, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftIds:I

    .line 170
    .local v2, "id":I
    iget-object v10, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$b;->a:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    invoke-virtual {v10}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftMap()Ljava/util/Map;

    move-result-object v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :try_start_2
    new-instance v10, Lrx/internal/operators/OnSubscribeGroupJoin$a;

    iget-object v11, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$b;->a:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v11, v11, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->cancel:Lrx/subscriptions/RefCountSubscription;

    invoke-direct {v10, v5, v11}, Lrx/internal/operators/OnSubscribeGroupJoin$a;-><init>(Llgs;Lrx/subscriptions/RefCountSubscription;)V

    invoke-static {v10}, Llgs;->b(Llgs$a;)Llgs;

    move-result-object v9

    .line 175
    .local v9, "window":Llgs;, "Llgs<TT2;>;"
    iget-object v10, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$b;->a:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v10, v10, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->this$0:Lrx/internal/operators/OnSubscribeGroupJoin;

    iget-object v10, v10, Lrx/internal/operators/OnSubscribeGroupJoin;->c:Llhk;

    invoke-interface {v10, p1}, Llhk;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llgs;

    .line 177
    .local v1, "duration":Llgs;, "Llgs<TD1;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$a;

    iget-object v10, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$b;->a:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    invoke-direct {v0, v10, v2}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$a;-><init>(Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;I)V

    .line 178
    .local v0, "d1":Llgy;, "Llgy<TD1;>;"
    iget-object v10, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$b;->a:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v10, v10, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->group:Llkx;

    invoke-virtual {v10, v0}, Llkx;->a(Llgz;)V

    .line 179
    invoke-virtual {v1, v0}, Llgs;->a(Llgy;)Llgz;

    .line 181
    iget-object v10, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$b;->a:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v10, v10, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->this$0:Lrx/internal/operators/OnSubscribeGroupJoin;

    iget-object v10, v10, Lrx/internal/operators/OnSubscribeGroupJoin;->e:Llhl;

    invoke-interface {v10, p1, v9}, Llhl;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 184
    .local v3, "result":Ljava/lang/Object;, "TR;"
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$b;->a:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    monitor-enter v11
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 185
    :try_start_3
    new-instance v4, Ljava/util/ArrayList;

    iget-object v10, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$b;->a:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v10, v10, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->rightMap:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 186
    .local v4, "rightMapValues":Ljava/util/List;, "Ljava/util/List<TT2;>;"
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 188
    :try_start_4
    iget-object v10, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$b;->a:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v10, v10, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->subscriber:Llgy;

    invoke-virtual {v10, v3}, Llgy;->onNext(Ljava/lang/Object;)V

    .line 189
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 190
    .local v8, "t2":Ljava/lang/Object;, "TT2;"
    invoke-interface {v6, v8}, Llgt;->onNext(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 194
    .end local v0    # "d1":Llgy;, "Llgy<TD1;>;"
    .end local v1    # "duration":Llgs;, "Llgs<TD1;>;"
    .end local v2    # "id":I
    .end local v3    # "result":Ljava/lang/Object;, "TR;"
    .end local v4    # "rightMapValues":Ljava/util/List;, "Ljava/util/List<TT2;>;"
    .end local v5    # "subj":Llkv;, "Llkv<TT2;TT2;>;"
    .end local v6    # "subjSerial":Llgt;, "Llgt<TT2;>;"
    .end local v8    # "t2":Ljava/lang/Object;, "TT2;"
    .end local v9    # "window":Llgs;, "Llgs<TT2;>;"
    :catch_0
    move-exception v7

    .line 195
    .local v7, "t":Ljava/lang/Throwable;
    invoke-static {v7, p0}, Llhe;->a(Ljava/lang/Throwable;Llgt;)V

    .line 197
    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_0
    return-void

    .line 171
    .restart local v5    # "subj":Llkv;, "Llkv<TT2;TT2;>;"
    .restart local v6    # "subjSerial":Llgt;, "Llgt<TT2;>;"
    :catchall_0
    move-exception v10

    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v10
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 186
    .restart local v0    # "d1":Llgy;, "Llgy<TD1;>;"
    .restart local v1    # "duration":Llgs;, "Llgs<TD1;>;"
    .restart local v2    # "id":I
    .restart local v3    # "result":Ljava/lang/Object;, "TR;"
    .restart local v9    # "window":Llgs;, "Llgs<TT2;>;"
    :catchall_1
    move-exception v10

    :try_start_7
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v10
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
.end method
