.class final Libi$a;
.super Ljava/lang/Object;
.source "GroupNickFetchTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Libi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Libi;


# direct methods
.method private constructor <init>(Libi;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Libi$a;->a:Libi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Libi;B)V
    .locals 0
    .param p1, "x0"    # Libi;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Libi$a;-><init>(Libi;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 83
    iget-object v5, p0, Libi$a;->a:Libi;

    invoke-static {v5}, Libi;->c(Libi;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    .line 84
    .local v4, "waitingsCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Long;>;>;"
    iget-object v5, p0, Libi$a;->a:Libi;

    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v5, v6}, Libi;->a(Libi;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 85
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 86
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Long;>;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 87
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 88
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Long;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 89
    .local v0, "cid":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 90
    .local v3, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v5

    invoke-virtual {v5}, Liaq;->k()Ljava/util/concurrent/Executor;

    move-result-object v5

    new-instance v6, Libi$a$1;

    invoke-direct {v6, p0, v0, v3}, Libi$a$1;-><init>(Libi$a;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 112
    .end local v0    # "cid":Ljava/lang/String;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Long;>;>;"
    .end local v3    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_0
    return-void
.end method
