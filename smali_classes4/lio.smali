.class public final Llio;
.super Ljava/lang/Object;
.source "SubscriptionList.java"

# interfaces
.implements Llgz;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llgz;",
            ">;"
        }
    .end annotation
.end field

.field public volatile b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Llgz;)V
    .locals 1
    .param p1, "s"    # Llgz;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Llio;->a:Ljava/util/List;

    .line 54
    iget-object v0, p0, Llio;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public varargs constructor <init>([Llgz;)V
    .locals 2
    .param p1, "subscriptions"    # [Llgz;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Llio;->a:Ljava/util/List;

    .line 46
    return-void
.end method


# virtual methods
.method public final a(Llgz;)V
    .locals 2
    .param p1, "s"    # Llgz;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 71
    invoke-interface {p1}, Llgz;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-boolean v1, p0, Llio;->b:Z

    if-nez v1, :cond_3

    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    iget-boolean v1, p0, Llio;->b:Z

    if-nez v1, :cond_2

    .line 77
    iget-object v0, p0, Llio;->a:Ljava/util/List;

    .line 78
    .local v0, "subs":Ljava/util/List;, "Ljava/util/List<Llgz;>;"
    if-nez v0, :cond_1

    .line 79
    new-instance v0, Ljava/util/LinkedList;

    .end local v0    # "subs":Ljava/util/List;, "Ljava/util/List<Llgz;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 80
    .restart local v0    # "subs":Ljava/util/List;, "Ljava/util/List<Llgz;>;"
    iput-object v0, p0, Llio;->a:Ljava/util/List;

    .line 82
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    monitor-exit p0

    goto :goto_0

    .line 85
    .end local v0    # "subs":Ljava/util/List;, "Ljava/util/List<Llgz;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :cond_3
    invoke-interface {p1}, Llgz;->unsubscribe()V

    goto :goto_0
.end method

.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Llio;->b:Z

    return v0
.end method

.method public final unsubscribe()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 114
    iget-boolean v1, p0, Llio;->b:Z

    if-nez v1, :cond_0

    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    iget-boolean v1, p0, Llio;->b:Z

    if-eqz v1, :cond_1

    .line 118
    monitor-exit p0

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Llio;->b:Z

    .line 121
    iget-object v0, p0, Llio;->a:Ljava/util/List;

    .line 122
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Llgz;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Llio;->a:Ljava/util/List;

    .line 123
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1130
    if-eqz v0, :cond_0

    .line 1134
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llgz;

    .line 1136
    :try_start_1
    invoke-interface {v1}, Llgz;->unsubscribe()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1137
    :catch_0
    move-exception v4

    .line 1138
    if-nez v2, :cond_3

    .line 1139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1141
    :goto_2
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    .line 1143
    goto :goto_1

    .line 123
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Llgz;>;"
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1144
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Llgz;>;"
    :cond_2
    invoke-static {v2}, Llhe;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    move-object v1, v2

    goto :goto_2
.end method
