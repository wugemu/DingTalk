.class final Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;
.super Ljava/util/HashMap;
.source "OnSubscribeGroupJoin.java"

# interfaces
.implements Llgz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeGroupJoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ResultManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$c;,
        Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$a;,
        Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$d;,
        Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/Integer;",
        "Llgt",
        "<TT2;>;>;",
        "Llgz;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2a1f0a50492e2277L


# instance fields
.field final cancel:Lrx/subscriptions/RefCountSubscription;

.field final group:Llkx;

.field leftDone:Z

.field leftIds:I

.field rightDone:Z

.field rightIds:I

.field final rightMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "TT2;>;"
        }
    .end annotation
.end field

.field final subscriber:Llgy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgy",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lrx/internal/operators/OnSubscribeGroupJoin;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OnSubscribeGroupJoin;Llgy;)V
    .locals 2
    .param p1, "this$0"    # Lrx/internal/operators/OnSubscribeGroupJoin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager;"
    .local p2, "subscriber":Llgy;, "Llgy<-TR;>;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->this$0:Lrx/internal/operators/OnSubscribeGroupJoin;

    .line 88
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->rightMap:Ljava/util/Map;

    .line 89
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->subscriber:Llgy;

    .line 90
    new-instance v0, Llkx;

    invoke-direct {v0}, Llkx;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->group:Llkx;

    .line 91
    new-instance v0, Lrx/subscriptions/RefCountSubscription;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->group:Llkx;

    invoke-direct {v0, v1}, Lrx/subscriptions/RefCountSubscription;-><init>(Llgz;)V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->cancel:Lrx/subscriptions/RefCountSubscription;

    .line 92
    return-void
.end method


# virtual methods
.method final complete(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Llgt",
            "<TT2;>;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 150
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Llgt<TT2;>;>;"
    if-eqz p1, :cond_1

    .line 151
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llgt;

    .line 152
    .local v0, "o":Llgt;, "Llgt<TT2;>;"
    invoke-interface {v0}, Llgt;->onCompleted()V

    goto :goto_0

    .line 154
    .end local v0    # "o":Llgt;, "Llgt<TT2;>;"
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->subscriber:Llgy;

    invoke-virtual {v1}, Llgy;->onCompleted()V

    .line 155
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->cancel:Lrx/subscriptions/RefCountSubscription;

    invoke-virtual {v1}, Lrx/subscriptions/RefCountSubscription;->unsubscribe()V

    .line 157
    :cond_1
    return-void
.end method

.method final errorAll(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 126
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager;"
    monitor-enter p0

    .line 127
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 128
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Llgt<TT2;>;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 129
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->rightMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 130
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llgt;

    .line 132
    .local v1, "o":Llgt;, "Llgt<TT2;>;"
    invoke-interface {v1, p1}, Llgt;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 130
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Llgt<TT2;>;>;"
    .end local v1    # "o":Llgt;, "Llgt<TT2;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 134
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Llgt<TT2;>;>;"
    :cond_0
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->subscriber:Llgy;

    invoke-virtual {v2, p1}, Llgy;->onError(Ljava/lang/Throwable;)V

    .line 135
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->cancel:Lrx/subscriptions/RefCountSubscription;

    invoke-virtual {v2}, Lrx/subscriptions/RefCountSubscription;->unsubscribe()V

    .line 136
    return-void
.end method

.method final errorMain(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 142
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager;"
    monitor-enter p0

    .line 143
    :try_start_0
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 144
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->rightMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 145
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->subscriber:Llgy;

    invoke-virtual {v0, p1}, Llgy;->onError(Ljava/lang/Throwable;)V

    .line 147
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->cancel:Lrx/subscriptions/RefCountSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/RefCountSubscription;->unsubscribe()V

    .line 148
    return-void

    .line 145
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final init()V
    .locals 3

    .prologue
    .line 96
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager;"
    new-instance v0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$b;

    invoke-direct {v0, p0}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$b;-><init>(Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;)V

    .line 97
    .local v0, "s1":Llgy;, "Llgy<TT1;>;"
    new-instance v1, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$d;

    invoke-direct {v1, p0}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$d;-><init>(Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;)V

    .line 99
    .local v1, "s2":Llgy;, "Llgy<TT2;>;"
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->group:Llkx;

    invoke-virtual {v2, v0}, Llkx;->a(Llgz;)V

    .line 100
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->group:Llkx;

    invoke-virtual {v2, v1}, Llkx;->a(Llgz;)V

    .line 102
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->this$0:Lrx/internal/operators/OnSubscribeGroupJoin;

    iget-object v2, v2, Lrx/internal/operators/OnSubscribeGroupJoin;->a:Llgs;

    invoke-virtual {v2, v0}, Llgs;->a(Llgy;)Llgz;

    .line 103
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->this$0:Lrx/internal/operators/OnSubscribeGroupJoin;

    iget-object v2, v2, Lrx/internal/operators/OnSubscribeGroupJoin;->b:Llgs;

    invoke-virtual {v2, v1}, Llgs;->a(Llgy;)Llgz;

    .line 104
    return-void
.end method

.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 113
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->cancel:Lrx/subscriptions/RefCountSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/RefCountSubscription;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method final leftMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Llgt",
            "<TT2;>;>;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager;"
    return-object p0
.end method

.method public final unsubscribe()V
    .locals 1

    .prologue
    .line 108
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->cancel:Lrx/subscriptions/RefCountSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/RefCountSubscription;->unsubscribe()V

    .line 109
    return-void
.end method
