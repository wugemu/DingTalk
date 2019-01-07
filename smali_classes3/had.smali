.class public final Lhad;
.super Ljava/lang/Object;
.source "CompressEventDispatcher.java"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field private static final a:Lhad;


# instance fields
.field private b:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lhae;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lhad;

    invoke-direct {v0}, Lhad;-><init>()V

    sput-object v0, Lhad;->a:Lhad;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lhad;->b:Ljava/util/Vector;

    .line 22
    return-void
.end method

.method public static a()Lhad;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lhad;->a:Lhad;

    return-object v0
.end method


# virtual methods
.method public final a(Lhae;)V
    .locals 1
    .param p1, "listener"    # Lhae;

    .prologue
    .line 62
    if-eqz p1, :cond_0

    .line 63
    iget-object v0, p0, Lhad;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_0
    return-void
.end method

.method public final b(Lhae;)V
    .locals 1
    .param p1, "listener"    # Lhae;

    .prologue
    .line 72
    if-eqz p1, :cond_0

    .line 73
    iget-object v0, p0, Lhad;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 75
    :cond_0
    return-void
.end method

.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 8
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "arg"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 37
    move-object v0, p1

    check-cast v0, Lhac;

    .line 42
    .local v0, "event":Lhac;
    iget-object v6, p0, Lhad;->b:Ljava/util/Vector;

    monitor-enter v6

    .line 43
    :try_start_0
    new-instance v3, Ljava/util/Vector;

    iget-object v5, p0, Lhad;->b:Ljava/util/Vector;

    invoke-direct {v3, v5}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    .line 44
    .local v3, "listeners":Ljava/util/Vector;, "Ljava/util/Vector<Lhae;>;"
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 46
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lhae;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhae;

    .line 49
    .local v2, "listener":Lhae;
    invoke-virtual {v2}, Lhae;->getListenerType()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    .line 50
    .local v4, "t":Lcom/alibaba/laiwang/photokit/compress/CompressEventType;
    invoke-virtual {v4}, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;->getValue()I

    move-result v6

    .line 1043
    iget-object v7, v0, Lhac;->b:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    .line 50
    invoke-virtual {v7}, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;->getValue()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 51
    invoke-virtual {v2, v0}, Lhae;->exec(Lhac;)V

    goto :goto_0

    .line 44
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lhae;>;"
    .end local v2    # "listener":Lhae;
    .end local v3    # "listeners":Ljava/util/Vector;, "Ljava/util/Vector<Lhae;>;"
    .end local v4    # "t":Lcom/alibaba/laiwang/photokit/compress/CompressEventType;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 55
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lhae;>;"
    .restart local v3    # "listeners":Ljava/util/Vector;, "Ljava/util/Vector<Lhae;>;"
    :cond_2
    return-void
.end method
