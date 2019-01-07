.class public Lbzj;
.super Ljava/lang/Object;
.source "RequestFlowControl.java"


# static fields
.field private static volatile a:Lbzj;


# instance fields
.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/List",
            "<",
            "Lbzi;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lbzj;->b:Landroid/util/SparseArray;

    .line 27
    return-void
.end method

.method private static a(Ljava/util/List;[Ljava/lang/String;)Lbzi;
    .locals 4
    .param p1, "permissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbzi;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Lbzi;"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lbzi;>;"
    const/4 v1, 0x0

    .line 41
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 50
    :goto_0
    return-object v0

    .line 44
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbzi;

    .line 45
    .local v0, "requestFlow":Lbzi;
    iget-object v3, v0, Lbzi;->b:[Ljava/lang/String;

    invoke-static {v3, p1}, Lbzz;->b([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .end local v0    # "requestFlow":Lbzi;
    :cond_3
    move-object v0, v1

    .line 50
    goto :goto_0
.end method

.method public static a()Lbzj;
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lbzj;->a:Lbzj;

    if-nez v0, :cond_1

    .line 31
    const-class v1, Lbzj;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v0, Lbzj;->a:Lbzj;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lbzj;

    invoke-direct {v0}, Lbzj;-><init>()V

    sput-object v0, Lbzj;->a:Lbzj;

    .line 35
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_1
    sget-object v0, Lbzj;->a:Lbzj;

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Lbzi;)Z
    .locals 12
    .param p0, "requestFlow"    # Lbzi;

    .prologue
    .line 83
    if-nez p0, :cond_0

    .line 84
    const/4 v8, 0x0

    .line 108
    :goto_0
    return v8

    .line 86
    :cond_0
    iget-object v8, p0, Lbzi;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-gt v8, v9, :cond_1

    .line 87
    const/4 v8, 0x0

    goto :goto_0

    .line 89
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 90
    .local v2, "elapsedRealtime":J
    iget-object v8, p0, Lbzi;->c:Ljava/util/List;

    iget-object v9, p0, Lbzi;->c:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 91
    .local v4, "lastRequestTime":J
    sub-long v8, v2, v4

    const-wide/16 v10, 0x1388

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    .line 93
    const/4 v8, 0x1

    goto :goto_0

    .line 96
    :cond_2
    const/4 v0, 0x0

    .line 97
    .local v0, "countWithinMin":I
    iget-object v8, p0, Lbzi;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 98
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 99
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 100
    .local v6, "time":J
    sub-long v8, v2, v6

    const-wide/32 v10, 0xea60

    cmp-long v8, v8, v10

    if-gez v8, :cond_3

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 103
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 108
    .end local v6    # "time":J
    :cond_4
    const/4 v8, 0x3

    if-le v0, v8, :cond_5

    const/4 v8, 0x1

    goto :goto_0

    :cond_5
    const/4 v8, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "hashCode"    # I
    .param p3, "permissions"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    monitor-enter p0

    :try_start_0
    const-string/jumbo v5, "permission_flow_control_enabled"

    .line 1014
    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcaf;->a(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 54
    if-nez v5, :cond_0

    .line 79
    :goto_0
    monitor-exit p0

    return v3

    .line 60
    :cond_0
    :try_start_1
    iget-object v5, p0, Lbzj;->b:Landroid/util/SparseArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 61
    .local v2, "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/List<Lbzi;>;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    .line 62
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lbzi;>;"
    iget-object v5, p0, Lbzj;->b:Landroid/util/SparseArray;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, p2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    :goto_1
    invoke-static {v0, p3}, Lbzj;->a(Ljava/util/List;[Ljava/lang/String;)Lbzi;

    move-result-object v1

    .line 68
    .local v1, "requestFlow":Lbzi;
    if-nez v1, :cond_2

    .line 69
    new-instance v1, Lbzi;

    .end local v1    # "requestFlow":Lbzi;
    invoke-direct {v1, p2, p3}, Lbzi;-><init>(I[Ljava/lang/String;)V

    .line 70
    .restart local v1    # "requestFlow":Lbzi;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_2
    invoke-static {v1}, Lbzj;->a(Lbzi;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "It\'s too frequent to shouldIntercept permissions, name="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", permissions="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 75
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2012
    const-string/jumbo v5, "permission"

    const/4 v6, 0x0

    invoke-static {v5, v6, v3}, Lcai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 76
    goto :goto_0

    .line 65
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lbzi;>;"
    .end local v1    # "requestFlow":Lbzi;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lbzi;>;"
    goto :goto_1

    .line 2024
    .restart local v1    # "requestFlow":Lbzi;
    :cond_4
    iget-object v4, v1, Lbzi;->c:Ljava/util/List;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 54
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lbzi;>;"
    .end local v1    # "requestFlow":Lbzi;
    .end local v2    # "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/List<Lbzi;>;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
