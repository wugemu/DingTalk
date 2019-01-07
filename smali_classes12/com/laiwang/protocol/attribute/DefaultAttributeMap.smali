.class public Lcom/laiwang/protocol/attribute/DefaultAttributeMap;
.super Ljava/lang/Object;
.source "DefaultAttributeMap.java"

# interfaces
.implements Lcom/laiwang/protocol/attribute/AttributeMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/attribute/DefaultAttributeMap$DefaultAttribute;
    }
.end annotation


# static fields
.field private static final updater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Lcom/laiwang/protocol/attribute/DefaultAttributeMap;",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/laiwang/protocol/attribute/AttributeKey",
            "<*>;",
            "Lcom/laiwang/protocol/attribute/Attribute",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    const-class v0, Lcom/laiwang/protocol/attribute/DefaultAttributeMap;

    const-class v1, Ljava/util/Map;

    const-string/jumbo v2, "map"

    .line 14
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/laiwang/protocol/attribute/DefaultAttributeMap;->updater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method


# virtual methods
.method public attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/laiwang/protocol/attribute/AttributeKey",
            "<TT;>;)",
            "Lcom/laiwang/protocol/attribute/Attribute",
            "<TT;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 22
    .local p1, "key":Lcom/laiwang/protocol/attribute/AttributeKey;, "Lcom/laiwang/protocol/attribute/AttributeKey<TT;>;"
    iget-object v1, p0, Lcom/laiwang/protocol/attribute/DefaultAttributeMap;->map:Ljava/util/Map;

    .line 23
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/laiwang/protocol/attribute/AttributeKey<*>;Lcom/laiwang/protocol/attribute/Attribute<*>;>;"
    if-nez v1, :cond_0

    .line 25
    new-instance v1, Ljava/util/IdentityHashMap;

    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/laiwang/protocol/attribute/AttributeKey<*>;Lcom/laiwang/protocol/attribute/Attribute<*>;>;"
    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 26
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/laiwang/protocol/attribute/AttributeKey<*>;Lcom/laiwang/protocol/attribute/Attribute<*>;>;"
    sget-object v2, Lcom/laiwang/protocol/attribute/DefaultAttributeMap;->updater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 27
    iget-object v1, p0, Lcom/laiwang/protocol/attribute/DefaultAttributeMap;->map:Ljava/util/Map;

    .line 31
    :cond_0
    monitor-enter v1

    .line 33
    :try_start_0
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/attribute/Attribute;

    .line 34
    .local v0, "attr":Lcom/laiwang/protocol/attribute/Attribute;, "Lcom/laiwang/protocol/attribute/Attribute<TT;>;"
    if-nez v0, :cond_1

    .line 35
    new-instance v0, Lcom/laiwang/protocol/attribute/DefaultAttributeMap$DefaultAttribute;

    .end local v0    # "attr":Lcom/laiwang/protocol/attribute/Attribute;, "Lcom/laiwang/protocol/attribute/Attribute<TT;>;"
    invoke-direct {v0, p0, v1, p1}, Lcom/laiwang/protocol/attribute/DefaultAttributeMap$DefaultAttribute;-><init>(Lcom/laiwang/protocol/attribute/DefaultAttributeMap;Ljava/util/Map;Lcom/laiwang/protocol/attribute/AttributeKey;)V

    .line 36
    .restart local v0    # "attr":Lcom/laiwang/protocol/attribute/Attribute;, "Lcom/laiwang/protocol/attribute/Attribute<TT;>;"
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_1
    monitor-exit v1

    return-object v0

    .line 39
    .end local v0    # "attr":Lcom/laiwang/protocol/attribute/Attribute;, "Lcom/laiwang/protocol/attribute/Attribute<TT;>;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public booleanAttr(Lcom/laiwang/protocol/attribute/AttributeKey;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laiwang/protocol/attribute/AttributeKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "key":Lcom/laiwang/protocol/attribute/AttributeKey;, "Lcom/laiwang/protocol/attribute/AttributeKey<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/laiwang/protocol/attribute/DefaultAttributeMap;->booleanAttr(Lcom/laiwang/protocol/attribute/AttributeKey;Z)Z

    move-result v0

    return v0
.end method

.method public booleanAttr(Lcom/laiwang/protocol/attribute/AttributeKey;Z)Z
    .locals 2
    .param p2, "defaultValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laiwang/protocol/attribute/AttributeKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;Z)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    .local p1, "key":Lcom/laiwang/protocol/attribute/AttributeKey;, "Lcom/laiwang/protocol/attribute/AttributeKey<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1}, Lcom/laiwang/protocol/attribute/DefaultAttributeMap;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v0

    .line 62
    .local v0, "attr":Lcom/laiwang/protocol/attribute/Attribute;, "Lcom/laiwang/protocol/attribute/Attribute<Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Lcom/laiwang/protocol/attribute/Attribute;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_0
    invoke-interface {v0}, Lcom/laiwang/protocol/attribute/Attribute;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0
.end method

.method public getAndRemove(Lcom/laiwang/protocol/attribute/AttributeKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/laiwang/protocol/attribute/AttributeKey",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "key":Lcom/laiwang/protocol/attribute/AttributeKey;, "Lcom/laiwang/protocol/attribute/AttributeKey<TT;>;"
    invoke-virtual {p0, p1}, Lcom/laiwang/protocol/attribute/DefaultAttributeMap;->hasAttr(Lcom/laiwang/protocol/attribute/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/laiwang/protocol/attribute/DefaultAttributeMap;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/laiwang/protocol/attribute/Attribute;->getAndRemove()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAttr(Lcom/laiwang/protocol/attribute/AttributeKey;)Z
    .locals 1
    .param p1, "key"    # Lcom/laiwang/protocol/attribute/AttributeKey;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/laiwang/protocol/attribute/DefaultAttributeMap;->map:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/laiwang/protocol/attribute/DefaultAttributeMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public intAttr(Lcom/laiwang/protocol/attribute/AttributeKey;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laiwang/protocol/attribute/AttributeKey",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "key":Lcom/laiwang/protocol/attribute/AttributeKey;, "Lcom/laiwang/protocol/attribute/AttributeKey<Ljava/lang/Integer;>;"
    invoke-virtual {p0, p1}, Lcom/laiwang/protocol/attribute/DefaultAttributeMap;->hasAttr(Lcom/laiwang/protocol/attribute/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/laiwang/protocol/attribute/DefaultAttributeMap;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/laiwang/protocol/attribute/Attribute;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
