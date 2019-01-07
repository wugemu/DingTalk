.class public final Llch;
.super Ljava/lang/Object;
.source "NodeRendererMap.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lldd;",
            ">;",
            "Lldy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Llch;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lldd;)V
    .locals 3
    .param p1, "node"    # Lldd;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 21
    iget-object v1, p0, Llch;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lldy;

    .line 22
    .local v0, "nodeRenderer":Lldy;
    if-eqz v0, :cond_0

    .line 23
    invoke-interface {v0, p1}, Lldy;->a(Lldd;)V

    .line 25
    :cond_0
    return-void
.end method

.method public final a(Lldy;)V
    .locals 3
    .param p1, "nodeRenderer"    # Lldy;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 14
    invoke-interface {p1}, Lldy;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 16
    .local v0, "nodeType":Ljava/lang/Class;, "Ljava/lang/Class<+Lldd;>;"
    iget-object v2, p0, Llch;->a:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    .end local v0    # "nodeType":Ljava/lang/Class;, "Ljava/lang/Class<+Lldd;>;"
    :cond_0
    return-void
.end method
