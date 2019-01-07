.class Lcom/laiwang/protocol/attribute/DefaultAttributeMap$DefaultAttribute;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "DefaultAttributeMap.java"

# interfaces
.implements Lcom/laiwang/protocol/attribute/Attribute;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/attribute/DefaultAttributeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultAttribute"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<TT;>;",
        "Lcom/laiwang/protocol/attribute/Attribute",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final key:Lcom/laiwang/protocol/attribute/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/laiwang/protocol/attribute/AttributeKey",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final map:Ljava/util/Map;
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

.field final synthetic this$0:Lcom/laiwang/protocol/attribute/DefaultAttributeMap;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/attribute/DefaultAttributeMap;Ljava/util/Map;Lcom/laiwang/protocol/attribute/AttributeKey;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/attribute/DefaultAttributeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/laiwang/protocol/attribute/AttributeKey",
            "<*>;",
            "Lcom/laiwang/protocol/attribute/Attribute",
            "<*>;>;",
            "Lcom/laiwang/protocol/attribute/AttributeKey",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lcom/laiwang/protocol/attribute/DefaultAttributeMap$DefaultAttribute;, "Lcom/laiwang/protocol/attribute/DefaultAttributeMap$DefaultAttribute<TT;>;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/laiwang/protocol/attribute/AttributeKey<*>;Lcom/laiwang/protocol/attribute/Attribute<*>;>;"
    .local p3, "key":Lcom/laiwang/protocol/attribute/AttributeKey;, "Lcom/laiwang/protocol/attribute/AttributeKey<TT;>;"
    iput-object p1, p0, Lcom/laiwang/protocol/attribute/DefaultAttributeMap$DefaultAttribute;->this$0:Lcom/laiwang/protocol/attribute/DefaultAttributeMap;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 70
    iput-object p3, p0, Lcom/laiwang/protocol/attribute/DefaultAttributeMap$DefaultAttribute;->key:Lcom/laiwang/protocol/attribute/AttributeKey;

    .line 71
    iput-object p2, p0, Lcom/laiwang/protocol/attribute/DefaultAttributeMap$DefaultAttribute;->map:Ljava/util/Map;

    .line 72
    return-void
.end method

.method private remove0()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 93
    .local p0, "this":Lcom/laiwang/protocol/attribute/DefaultAttributeMap$DefaultAttribute;, "Lcom/laiwang/protocol/attribute/DefaultAttributeMap$DefaultAttribute<TT;>;"
    iget-object v1, p0, Lcom/laiwang/protocol/attribute/DefaultAttributeMap$DefaultAttribute;->map:Ljava/util/Map;

    monitor-enter v1

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/laiwang/protocol/attribute/DefaultAttributeMap$DefaultAttribute;->map:Ljava/util/Map;

    iget-object v2, p0, Lcom/laiwang/protocol/attribute/DefaultAttributeMap$DefaultAttribute;->key:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public exists()Z
    .locals 1

    .prologue
    .line 100
    .local p0, "this":Lcom/laiwang/protocol/attribute/DefaultAttributeMap$DefaultAttribute;, "Lcom/laiwang/protocol/attribute/DefaultAttributeMap$DefaultAttribute<TT;>;"
    invoke-virtual {p0}, Lcom/laiwang/protocol/attribute/DefaultAttributeMap$DefaultAttribute;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAndRemove()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 81
    .local p0, "this":Lcom/laiwang/protocol/attribute/DefaultAttributeMap$DefaultAttribute;, "Lcom/laiwang/protocol/attribute/DefaultAttributeMap$DefaultAttribute<TT;>;"
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/laiwang/protocol/attribute/DefaultAttributeMap$DefaultAttribute;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 82
    .local v0, "oldValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lcom/laiwang/protocol/attribute/DefaultAttributeMap$DefaultAttribute;->remove0()V

    .line 83
    return-object v0
.end method

.method public key()Lcom/laiwang/protocol/attribute/AttributeKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/laiwang/protocol/attribute/AttributeKey",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/laiwang/protocol/attribute/DefaultAttributeMap$DefaultAttribute;, "Lcom/laiwang/protocol/attribute/DefaultAttributeMap$DefaultAttribute<TT;>;"
    iget-object v0, p0, Lcom/laiwang/protocol/attribute/DefaultAttributeMap$DefaultAttribute;->key:Lcom/laiwang/protocol/attribute/AttributeKey;

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 88
    .local p0, "this":Lcom/laiwang/protocol/attribute/DefaultAttributeMap$DefaultAttribute;, "Lcom/laiwang/protocol/attribute/DefaultAttributeMap$DefaultAttribute<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/laiwang/protocol/attribute/DefaultAttributeMap$DefaultAttribute;->set(Ljava/lang/Object;)V

    .line 89
    invoke-direct {p0}, Lcom/laiwang/protocol/attribute/DefaultAttributeMap$DefaultAttribute;->remove0()V

    .line 90
    return-void
.end method
