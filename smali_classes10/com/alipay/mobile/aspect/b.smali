.class public Lcom/alipay/mobile/aspect/b;
.super Ljava/lang/Object;
.source "FrameworkPointCutManager.java"


# static fields
.field private static a:Lcom/alipay/mobile/aspect/b;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/aspect/a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/aspect/b;->b:Ljava/util/Map;

    .line 19
    return-void
.end method

.method public static a()Lcom/alipay/mobile/aspect/b;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcom/alipay/mobile/aspect/b;->a:Lcom/alipay/mobile/aspect/b;

    if-nez v0, :cond_1

    .line 23
    const-class v1, Lcom/alipay/mobile/aspect/b;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/aspect/b;->a:Lcom/alipay/mobile/aspect/b;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/alipay/mobile/aspect/b;

    invoke-direct {v0}, Lcom/alipay/mobile/aspect/b;-><init>()V

    sput-object v0, Lcom/alipay/mobile/aspect/b;->a:Lcom/alipay/mobile/aspect/b;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Lcom/alipay/mobile/aspect/b;->a:Lcom/alipay/mobile/aspect/b;

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "pointCut"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/aspect/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/aspect/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final declared-synchronized a(Lcom/alipay/mobile/aspect/a;)V
    .locals 6
    .param p1, "advice"    # Lcom/alipay/mobile/aspect/a;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/alipay/mobile/aspect/b;->b:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 77
    .local v3, "pointCut":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/aspect/b;->b:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 78
    .local v0, "advices":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/aspect/a;>;"
    if-eqz p1, :cond_0

    .line 82
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 83
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/aspect/a;

    .line 84
    .local v1, "curAdvice":Lcom/alipay/mobile/aspect/a;
    if-ne v1, p1, :cond_1

    .line 85
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 89
    .end local v0    # "advices":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/aspect/a;>;"
    .end local v1    # "curAdvice":Lcom/alipay/mobile/aspect/a;
    .end local v2    # "i":I
    .end local v3    # "pointCut":Ljava/lang/String;
    :cond_2
    monitor-exit p0

    return-void

    .line 76
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/alipay/mobile/aspect/a;Z)V
    .locals 3
    .param p1, "pointCut"    # Ljava/lang/String;
    .param p2, "advice"    # Lcom/alipay/mobile/aspect/a;
    .param p3, "log"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    .line 58
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 42
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/aspect/b;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 43
    .local v0, "advices":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/aspect/a;>;"
    if-nez v0, :cond_2

    .line 44
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .end local v0    # "advices":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/aspect/a;>;"
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 45
    .restart local v0    # "advices":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/aspect/a;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v1, p0, Lcom/alipay/mobile/aspect/b;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    if-eqz p3, :cond_0

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerPointCutAdvice put: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 49
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 39
    .end local v0    # "advices":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/aspect/a;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 52
    .restart local v0    # "advices":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/aspect/a;>;"
    :cond_2
    :try_start_2
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    if-eqz p3, :cond_0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerPointCutAdvice add: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 55
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final a([Ljava/lang/String;Lcom/alipay/mobile/aspect/a;)V
    .locals 4
    .param p1, "pointCuts"    # [Ljava/lang/String;
    .param p2, "advice"    # Lcom/alipay/mobile/aspect/a;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 99
    move v1, v2

    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    aget-object v0, p1, v1

    .line 100
    .local v0, "string":Ljava/lang/String;
    invoke-virtual {p0, v0, p2, v2}, Lcom/alipay/mobile/aspect/b;->a(Ljava/lang/String;Lcom/alipay/mobile/aspect/a;Z)V

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    .end local v0    # "string":Ljava/lang/String;
    :cond_0
    return-void
.end method
