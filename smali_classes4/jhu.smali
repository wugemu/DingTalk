.class public final Ljhu;
.super Ljhv;
.source "ParameterizedTypeName.java"


# instance fields
.field public final a:Ljhn;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljhv;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljhu;


# direct methods
.method private constructor <init>(Ljhu;Ljhn;Ljava/util/List;)V
    .locals 2
    .param p1, "enclosingType"    # Ljhu;
    .param p2, "rawType"    # Ljhn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljhu;",
            "Ljhn;",
            "Ljava/util/List",
            "<",
            "Ljhv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p3, "typeArguments":Ljava/util/List;, "Ljava/util/List<Ljhv;>;"
    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, p2, p3, v1}, Ljhu;-><init>(Ljhu;Ljhn;Ljava/util/List;Ljava/util/List;)V

    .line 39
    return-void
.end method

.method private constructor <init>(Ljhu;Ljhn;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .param p1, "enclosingType"    # Ljhu;
    .param p2, "rawType"    # Ljhn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljhu;",
            "Ljhn;",
            "Ljava/util/List",
            "<",
            "Ljhv;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljhl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "typeArguments":Ljava/util/List;, "Ljava/util/List<Ljhv;>;"
    .local p4, "annotations":Ljava/util/List;, "Ljava/util/List<Ljhl;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    invoke-direct {p0, p4}, Ljhv;-><init>(Ljava/util/List;)V

    .line 44
    const-string/jumbo v1, "rawType == null"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p2, v1, v4}, Ljhx;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljhn;

    iput-object v1, p0, Ljhu;->a:Ljhn;

    .line 45
    iput-object p1, p0, Ljhu;->c:Ljhu;

    .line 46
    invoke-static {p3}, Ljhx;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ljhu;->b:Ljava/util/List;

    .line 48
    iget-object v1, p0, Ljhu;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    move v1, v3

    :goto_0
    const-string/jumbo v4, "no type arguments: %s"

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p2, v5, v2

    invoke-static {v1, v4, v5}, Ljhx;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 50
    iget-object v1, p0, Ljhu;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljhv;

    .line 51
    .local v0, "typeArgument":Ljhv;
    invoke-virtual {v0}, Ljhv;->f()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Ljhu;->d:Ljhv;

    if-eq v0, v1, :cond_2

    move v1, v3

    :goto_2
    const-string/jumbo v5, "invalid type parameter: %s"

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-static {v1, v5, v6}, Ljhx;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .end local v0    # "typeArgument":Ljhv;
    :cond_1
    move v1, v2

    .line 48
    goto :goto_0

    .restart local v0    # "typeArgument":Ljhv;
    :cond_2
    move v1, v2

    .line 51
    goto :goto_2

    .line 54
    .end local v0    # "typeArgument":Ljhv;
    :cond_3
    return-void
.end method

.method static a(Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Ljhu;
    .locals 7
    .param p0, "type"    # Ljava/lang/reflect/ParameterizedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Ljhw;",
            ">;)",
            "Ljhu;"
        }
    .end annotation

    .prologue
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Type;Ljhw;>;"
    const/4 v4, 0x0

    .line 126
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-static {v3}, Ljhn;->a(Ljava/lang/Class;)Ljhn;

    move-result-object v1

    .line 127
    .local v1, "rawType":Ljhn;
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_0

    .line 128
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 129
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    move-object v0, v3

    .line 130
    .local v0, "ownerType":Ljava/lang/reflect/ParameterizedType;
    :goto_0
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v3, p1}, Ljhv;->a([Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    .line 131
    .local v2, "typeArguments":Ljava/util/List;, "Ljava/util/List<Ljhv;>;"
    if-eqz v0, :cond_1

    .line 132
    invoke-static {v0, p1}, Ljhu;->a(Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Ljhu;

    move-result-object v4

    invoke-virtual {v1}, Ljhn;->e()Ljava/lang/String;

    move-result-object v5

    .line 1104
    const-string/jumbo v3, "name == null"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v3, v6}, Ljhx;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    new-instance v3, Ljhu;

    iget-object v6, v4, Ljhu;->a:Ljhn;

    invoke-virtual {v6, v5}, Ljhn;->a(Ljava/lang/String;)Ljhn;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v3, v4, v5, v2, v6}, Ljhu;-><init>(Ljhu;Ljhn;Ljava/util/List;Ljava/util/List;)V

    .line 132
    :goto_1
    return-object v3

    .end local v0    # "ownerType":Ljava/lang/reflect/ParameterizedType;
    .end local v2    # "typeArguments":Ljava/util/List;, "Ljava/util/List<Ljhv;>;"
    :cond_0
    move-object v0, v4

    .line 129
    goto :goto_0

    .line 133
    .restart local v0    # "ownerType":Ljava/lang/reflect/ParameterizedType;
    .restart local v2    # "typeArguments":Ljava/util/List;, "Ljava/util/List<Ljhv;>;"
    :cond_1
    new-instance v3, Ljhu;

    invoke-direct {v3, v4, v1, v2}, Ljhu;-><init>(Ljhu;Ljhn;Ljava/util/List;)V

    goto :goto_1
.end method


# virtual methods
.method final a(Ljhp;)Ljhp;
    .locals 4
    .param p1, "out"    # Ljhp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 67
    iget-object v2, p0, Ljhu;->c:Ljhu;

    if-eqz v2, :cond_1

    .line 68
    iget-object v2, p0, Ljhu;->c:Ljhu;

    invoke-virtual {v2, p1}, Ljhu;->b(Ljhp;)Ljhp;

    .line 69
    iget-object v2, p0, Ljhu;->c:Ljhu;

    invoke-virtual {v2, p1}, Ljhu;->a(Ljhp;)Ljhp;

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ljhu;->a:Ljhn;

    invoke-virtual {v3}, Ljhn;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljhp;->a(Ljava/lang/String;)Ljhp;

    .line 75
    :goto_0
    iget-object v2, p0, Ljhu;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 76
    const-string/jumbo v2, "<"

    invoke-virtual {p1, v2}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    .line 77
    const/4 v0, 0x1

    .line 78
    .local v0, "firstParameter":Z
    iget-object v2, p0, Ljhu;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljhv;

    .line 79
    .local v1, "parameter":Ljhv;
    if-nez v0, :cond_0

    const-string/jumbo v3, ", "

    invoke-virtual {p1, v3}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    .line 80
    :cond_0
    invoke-virtual {v1, p1}, Ljhv;->b(Ljhp;)Ljhp;

    .line 81
    invoke-virtual {v1, p1}, Ljhv;->a(Ljhp;)Ljhp;

    .line 82
    const/4 v0, 0x0

    .line 83
    goto :goto_1

    .line 72
    .end local v0    # "firstParameter":Z
    .end local v1    # "parameter":Ljhv;
    :cond_1
    iget-object v2, p0, Ljhu;->a:Ljhn;

    invoke-virtual {v2, p1}, Ljhn;->b(Ljhp;)Ljhp;

    .line 73
    iget-object v2, p0, Ljhu;->a:Ljhn;

    invoke-virtual {v2, p1}, Ljhn;->a(Ljhp;)Ljhp;

    goto :goto_0

    .line 84
    .restart local v0    # "firstParameter":Z
    :cond_2
    const-string/jumbo v2, ">"

    invoke-virtual {p1, v2}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    .line 86
    .end local v0    # "firstParameter":Z
    :cond_3
    return-object p1
.end method

.method public final a()Ljhv;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 62
    new-instance v0, Ljhu;

    iget-object v1, p0, Ljhu;->c:Ljhu;

    iget-object v2, p0, Ljhu;->a:Ljhn;

    iget-object v3, p0, Ljhu;->b:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Ljhu;-><init>(Ljhu;Ljhn;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
