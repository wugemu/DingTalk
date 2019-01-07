.class final Lgxx;
.super Ljava/lang/Object;
.source "JavaObjectDeserializer.java"

# interfaces
.implements Lgyk;


# static fields
.field public static final a:Lgxx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lgxx;

    invoke-direct {v0}, Lgxx;-><init>()V

    sput-object v0, Lgxx;->a:Lgxx;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final deserialze(Lgxr;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "parser"    # Lgxr;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lgxr;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 18
    instance-of v5, p2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v5, :cond_2

    .line 19
    check-cast p2, Ljava/lang/reflect/GenericArrayType;

    .end local p2    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 20
    .local v2, "componentType":Ljava/lang/reflect/Type;
    instance-of v5, v2, Ljava/lang/reflect/TypeVariable;

    if-eqz v5, :cond_0

    move-object v3, v2

    .line 21
    check-cast v3, Ljava/lang/reflect/TypeVariable;

    .line 22
    .local v3, "componentVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v2, v5, v6

    .line 25
    .end local v3    # "componentVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p1, v2, v4}, Lgxr;->a(Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    .line 28
    instance-of v5, v2, Ljava/lang/Class;

    if-eqz v5, :cond_1

    move-object v1, v2

    .line 29
    check-cast v1, Ljava/lang/Class;

    .line 31
    .local v1, "componentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    .line 32
    .local v0, "array":[Ljava/lang/Object;
    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 40
    .end local v0    # "array":[Ljava/lang/Object;
    .end local v1    # "componentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "componentType":Ljava/lang/reflect/Type;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_0
    return-object v0

    .line 35
    .restart local v2    # "componentType":Ljava/lang/reflect/Type;
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 40
    .end local v2    # "componentType":Ljava/lang/reflect/Type;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    :cond_2
    invoke-virtual {p1, p3}, Lgxr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
