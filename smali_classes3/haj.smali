.class public Lhaj;
.super Ljava/lang/Object;
.source "ConvertEventDispatcher.java"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field public static volatile a:Lhaj;


# instance fields
.field public final b:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lhak;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lhaj;->b:Ljava/util/Vector;

    return-void
.end method

.method public static a()Lhaj;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lhaj;->a:Lhaj;

    if-nez v0, :cond_1

    .line 20
    const-class v1, Lhaj;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Lhaj;->a:Lhaj;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lhaj;

    invoke-direct {v0}, Lhaj;-><init>()V

    sput-object v0, Lhaj;->a:Lhaj;

    .line 24
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_1
    sget-object v0, Lhaj;->a:Lhaj;

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Lhak;)V
    .locals 2
    .param p1, "listener"    # Lhak;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 68
    if-nez p1, :cond_0

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v1, p0, Lhaj;->b:Ljava/util/Vector;

    monitor-enter v1

    .line 73
    :try_start_0
    iget-object v0, p0, Lhaj;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 74
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 8
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 32
    instance-of v4, p1, Lhai;

    if-nez v4, :cond_1

    .line 55
    :cond_0
    return-void

    :cond_1
    move-object v0, p1

    .line 36
    check-cast v0, Lhai;

    .line 40
    .local v0, "event":Lhai;
    iget-object v5, p0, Lhaj;->b:Ljava/util/Vector;

    monitor-enter v5

    .line 41
    :try_start_0
    new-instance v2, Ljava/util/Vector;

    iget-object v4, p0, Lhaj;->b:Ljava/util/Vector;

    invoke-direct {v2, v4}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    .line 42
    .local v2, "listeners":Ljava/util/Vector;, "Ljava/util/Vector<Lhak;>;"
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhak;

    .line 45
    .local v1, "listener":Lhak;
    if-eqz v1, :cond_2

    .line 1023
    iget-object v5, v1, Lhak;->d:Ljava/util/Vector;

    .line 49
    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;

    .line 50
    .local v3, "t":Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;
    invoke-virtual {v3}, Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;->getValue()I

    move-result v6

    .line 1034
    iget-object v7, v0, Lhai;->b:Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;

    .line 50
    invoke-virtual {v7}, Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;->getValue()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 51
    invoke-virtual {v1, v0}, Lhak;->a(Lhai;)V

    goto :goto_0

    .line 42
    .end local v1    # "listener":Lhak;
    .end local v2    # "listeners":Ljava/util/Vector;, "Ljava/util/Vector<Lhak;>;"
    .end local v3    # "t":Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method
