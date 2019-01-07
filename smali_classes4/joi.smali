.class public final Ljoi;
.super Ljava/lang/Object;
.source "MediaPlayerManager.java"


# static fields
.field public static a:Ljoh;

.field public static b:Ljoj$a;

.field static c:Ljoj;

.field private static volatile d:Ljoi;

.field private static e:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 26
    const/4 v0, 0x2

    sput v0, Ljoi;->e:I

    .line 29
    :goto_0
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x4

    sput v0, Ljoi;->e:I

    goto :goto_0
.end method

.method public static declared-synchronized a()Ljoi;
    .locals 3

    .prologue
    .line 32
    const-class v1, Ljoi;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljoi;->d:Ljoi;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Ljoi;

    invoke-direct {v0}, Ljoi;-><init>()V

    sput-object v0, Ljoi;->d:Ljoi;

    .line 34
    new-instance v0, Ljoh;

    sget v2, Ljoi;->e:I

    invoke-direct {v0, v2}, Ljoh;-><init>(I)V

    sput-object v0, Ljoi;->a:Ljoh;

    .line 36
    :cond_0
    sget-object v0, Ljoi;->d:Ljoi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljoj$a;)Ljoj;
    .locals 5
    .param p0, "token"    # Ljava/lang/String;
    .param p1, "listener"    # Ljoj$a;

    .prologue
    .line 86
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p1, :cond_2

    .line 87
    :cond_0
    const/4 v2, 0x0

    .line 105
    :cond_1
    :goto_0
    return-object v2

    .line 89
    :cond_2
    sget-object v3, Ljoi;->a:Ljoh;

    if-nez v3, :cond_3

    .line 90
    new-instance v3, Ljoh;

    sget v4, Ljoi;->e:I

    invoke-direct {v3, v4}, Ljoh;-><init>(I)V

    sput-object v3, Ljoi;->a:Ljoh;

    .line 91
    :cond_3
    sget-object v3, Ljoi;->a:Ljoh;

    invoke-virtual {v3}, Ljoh;->snapshot()Ljava/util/Map;

    move-result-object v1

    .line 92
    .local v1, "lruSnapshot":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljoj;>;"
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 94
    sget-object v3, Ljoi;->a:Ljoh;

    invoke-virtual {v3, v0}, Ljoh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljoj;

    .line 95
    .local v2, "recycler":Ljoj;
    iget-object v3, v2, Ljoj;->g:Ljava/util/List;

    if-nez v3, :cond_5

    .line 96
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, v2, Ljoj;->g:Ljava/util/List;

    .line 98
    :cond_5
    iget-object v3, v2, Ljoj;->g:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 99
    iget-object v3, v2, Ljoj;->g:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 104
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "recycler":Ljoj;
    :cond_6
    sput-object p1, Ljoi;->b:Ljoj$a;

    .line 105
    sget-object v3, Ljoi;->a:Ljoh;

    invoke-virtual {v3, p0}, Ljoh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljoj;

    move-object v2, v3

    goto :goto_0
.end method

.method public static a(Ljoj;Ljoj$a;)Ljoj;
    .locals 5
    .param p0, "recycler"    # Ljoj;
    .param p1, "listener"    # Ljoj$a;

    .prologue
    .line 63
    if-eqz p0, :cond_0

    iget-object v3, p0, Ljoj;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move-object v2, p0

    .line 82
    :cond_1
    :goto_0
    return-object v2

    .line 65
    :cond_2
    sget-object v3, Ljoi;->a:Ljoh;

    if-nez v3, :cond_3

    .line 66
    new-instance v3, Ljoh;

    sget v4, Ljoi;->e:I

    invoke-direct {v3, v4}, Ljoh;-><init>(I)V

    sput-object v3, Ljoi;->a:Ljoh;

    .line 67
    :cond_3
    sget-object v3, Ljoi;->a:Ljoh;

    invoke-virtual {v3}, Ljoh;->snapshot()Ljava/util/Map;

    move-result-object v1

    .line 68
    .local v1, "lruSnapshot":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljoj;>;"
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    .local v0, "key":Ljava/lang/String;
    iget-object v4, p0, Ljoj;->a:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 70
    sget-object v3, Ljoi;->a:Ljoh;

    invoke-virtual {v3, v0}, Ljoh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljoj;

    .line 71
    .local v2, "recycler1":Ljoj;
    iget-object v3, v2, Ljoj;->g:Ljava/util/List;

    if-nez v3, :cond_5

    .line 72
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, v2, Ljoj;->g:Ljava/util/List;

    .line 74
    :cond_5
    iget-object v3, v2, Ljoj;->g:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 75
    iget-object v3, v2, Ljoj;->g:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 80
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "recycler1":Ljoj;
    :cond_6
    sput-object p0, Ljoi;->c:Ljoj;

    .line 81
    sput-object p1, Ljoi;->b:Ljoj$a;

    .line 82
    sget-object v3, Ljoi;->a:Ljoh;

    iget-object v4, p0, Ljoj;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljoh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljoj;

    move-object v2, v3

    goto :goto_0
.end method

.method public static b()V
    .locals 5

    .prologue
    .line 112
    sget-object v2, Ljoi;->a:Ljoh;

    if-nez v2, :cond_1

    .line 126
    .local v0, "lruSnapshot":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljoj;>;"
    :cond_0
    :goto_0
    return-void

    .line 114
    .end local v0    # "lruSnapshot":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljoj;>;"
    :cond_1
    sget-object v2, Ljoi;->a:Ljoh;

    invoke-virtual {v2}, Ljoh;->snapshot()Ljava/util/Map;

    move-result-object v0

    .line 115
    .restart local v0    # "lruSnapshot":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljoj;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljoj;

    .line 120
    .local v1, "recycler":Ljoj;
    iget-object v2, v1, Ljoj;->g:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, v1, Ljoj;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, v1, Ljoj;->g:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljoj$a;

    invoke-interface {v2}, Ljoj$a;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 121
    sget-object v2, Ljoi;->a:Ljoh;

    iget-object v4, v1, Ljoj;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljoh;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 126
    .end local v1    # "recycler":Ljoj;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
