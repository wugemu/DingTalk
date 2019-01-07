.class final Lgyc;
.super Lgyi;
.source "ResolveFieldDeserializer.java"


# instance fields
.field private final a:I

.field private final f:Ljava/util/List;

.field private final g:Lgxr;

.field private final h:Ljava/lang/Object;

.field private final i:Ljava/util/Map;

.field private final j:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Lgxr;Ljava/util/List;I)V
    .locals 1
    .param p1, "parser"    # Lgxr;
    .param p2, "list"    # Ljava/util/List;
    .param p3, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0, v0}, Lgyi;-><init>(Ljava/lang/Class;Lgza;)V

    .line 27
    iput-object p1, p0, Lgyc;->g:Lgxr;

    .line 28
    iput p3, p0, Lgyc;->a:I

    .line 29
    iput-object p2, p0, Lgyc;->f:Ljava/util/List;

    .line 31
    iput-object v0, p0, Lgyc;->h:Ljava/lang/Object;

    .line 32
    iput-object v0, p0, Lgyc;->i:Ljava/util/Map;

    .line 34
    iput-object v0, p0, Lgyc;->j:Ljava/util/Collection;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .param p1, "collection"    # Ljava/util/Collection;

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, v1, v1}, Lgyi;-><init>(Ljava/lang/Class;Lgza;)V

    .line 53
    iput-object v1, p0, Lgyc;->g:Lgxr;

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lgyc;->a:I

    .line 55
    iput-object v1, p0, Lgyc;->f:Ljava/util/List;

    .line 57
    iput-object v1, p0, Lgyc;->h:Ljava/lang/Object;

    .line 58
    iput-object v1, p0, Lgyc;->i:Ljava/util/Map;

    .line 60
    iput-object p1, p0, Lgyc;->j:Ljava/util/Collection;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 2
    .param p1, "map"    # Ljava/util/Map;
    .param p2, "index"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, v1, v1}, Lgyi;-><init>(Ljava/lang/Class;Lgza;)V

    .line 40
    iput-object v1, p0, Lgyc;->g:Lgxr;

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lgyc;->a:I

    .line 42
    iput-object v1, p0, Lgyc;->f:Ljava/util/List;

    .line 44
    iput-object p2, p0, Lgyc;->h:Ljava/lang/Object;

    .line 45
    iput-object p1, p0, Lgyc;->i:Ljava/util/Map;

    .line 47
    iput-object v1, p0, Lgyc;->j:Ljava/util/Collection;

    .line 48
    return-void
.end method


# virtual methods
.method public final a(Lgxr;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 0
    .param p1, "parser"    # Lgxr;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "objectType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgxr;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p4, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 65
    iget-object v4, p0, Lgyc;->i:Ljava/util/Map;

    if-eqz v4, :cond_1

    .line 66
    iget-object v4, p0, Lgyc;->i:Ljava/util/Map;

    iget-object v5, p0, Lgyc;->h:Ljava/lang/Object;

    invoke-interface {v4, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v4, p0, Lgyc;->j:Ljava/util/Collection;

    if-eqz v4, :cond_2

    .line 71
    iget-object v4, p0, Lgyc;->j:Ljava/util/Collection;

    invoke-interface {v4, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    :cond_2
    iget-object v4, p0, Lgyc;->f:Ljava/util/List;

    iget v5, p0, Lgyc;->a:I

    invoke-interface {v4, v5, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v4, p0, Lgyc;->f:Ljava/util/List;

    instance-of v4, v4, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v4, :cond_0

    .line 78
    iget-object v3, p0, Lgyc;->f:Ljava/util/List;

    check-cast v3, Lcom/alibaba/fastjson/JSONArray;

    .line 79
    .local v3, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->getRelatedArray()Ljava/lang/Object;

    move-result-object v0

    .line 81
    .local v0, "array":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 82
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 84
    .local v1, "arrayLength":I
    iget v4, p0, Lgyc;->a:I

    if-le v1, v4, :cond_0

    .line 86
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->getComponentType()Ljava/lang/reflect/Type;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 87
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->getComponentType()Ljava/lang/reflect/Type;

    move-result-object v4

    iget-object v5, p0, Lgyc;->g:Lgxr;

    iget-object v5, v5, Lgxr;->b:Lgyb;

    invoke-static {p2, v4, v5}, Lgzd;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lgyb;)Ljava/lang/Object;

    move-result-object v2

    .line 91
    .local v2, "item":Ljava/lang/Object;
    :goto_1
    iget v4, p0, Lgyc;->a:I

    invoke-static {v0, v4, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_0

    .line 89
    .end local v2    # "item":Ljava/lang/Object;
    :cond_3
    move-object v2, p2

    .restart local v2    # "item":Ljava/lang/Object;
    goto :goto_1
.end method
