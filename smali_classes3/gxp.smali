.class public Lgxp;
.super Ljava/lang/Object;
.source "TypeReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static classTypeCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final type:Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lgxp;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method protected constructor <init>()V
    .locals 5

    .prologue
    .line 34
    .local p0, "this":Lgxp;, "Lgxp<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 37
    .local v2, "superClass":Ljava/lang/reflect/Type;
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .end local v2    # "superClass":Ljava/lang/reflect/Type;
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v1, v3, v4

    .line 39
    .local v1, "oriType":Ljava/lang/reflect/Type;
    instance-of v3, v1, Ljava/lang/Class;

    if-eqz v3, :cond_0

    .line 40
    iput-object v1, p0, Lgxp;->type:Ljava/lang/reflect/Type;

    .line 51
    :goto_0
    return-void

    .line 43
    :cond_0
    sget-object v3, Lgxp;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 44
    .local v0, "cachedType":Ljava/lang/reflect/Type;
    if-nez v0, :cond_1

    .line 45
    sget-object v3, Lgxp;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v3, Lgxp;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cachedType":Ljava/lang/reflect/Type;
    check-cast v0, Ljava/lang/reflect/Type;

    .line 49
    .restart local v0    # "cachedType":Ljava/lang/reflect/Type;
    :cond_1
    iput-object v0, p0, Lgxp;->type:Ljava/lang/reflect/Type;

    goto :goto_0
.end method

.method protected varargs constructor <init>([Ljava/lang/reflect/Type;)V
    .locals 12
    .param p1, "actualTypeArguments"    # [Ljava/lang/reflect/Type;

    .prologue
    .line 57
    .local p0, "this":Lgxp;, "Lgxp<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    .line 59
    .local v9, "thisClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v9}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v8

    .line 61
    .local v8, "superClass":Ljava/lang/reflect/Type;
    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    .end local v8    # "superClass":Ljava/lang/reflect/Type;
    invoke-interface {v8}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v2, v10, v11

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 62
    .local v2, "argType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v7

    .line 63
    .local v7, "rawType":Ljava/lang/reflect/Type;
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 65
    .local v3, "argTypes":[Ljava/lang/reflect/Type;
    const/4 v0, 0x0

    .line 66
    .local v0, "actualIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v10, v3

    if-ge v5, v10, :cond_3

    .line 67
    aget-object v10, v3, v5

    instance-of v10, v10, Ljava/lang/reflect/TypeVariable;

    if-eqz v10, :cond_0

    array-length v10, p1

    if-ge v0, v10, :cond_0

    .line 69
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "actualIndex":I
    .local v1, "actualIndex":I
    aget-object v10, p1, v0

    aput-object v10, v3, v5

    move v0, v1

    .line 72
    .end local v1    # "actualIndex":I
    .restart local v0    # "actualIndex":I
    :cond_0
    aget-object v10, v3, v5

    instance-of v10, v10, Ljava/lang/reflect/GenericArrayType;

    if-eqz v10, :cond_1

    .line 73
    aget-object v10, v3, v5

    check-cast v10, Ljava/lang/reflect/GenericArrayType;

    invoke-static {v10}, Lgzd;->a(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/reflect/Type;

    move-result-object v10

    aput-object v10, v3, v5

    .line 78
    :cond_1
    aget-object v10, v3, v5

    instance-of v10, v10, Ljava/lang/reflect/ParameterizedType;

    if-eqz v10, :cond_2

    .line 79
    aget-object v10, v3, v5

    check-cast v10, Ljava/lang/reflect/ParameterizedType;

    invoke-direct {p0, v10, p1, v0}, Lgxp;->handlerParameterizedType(Ljava/lang/reflect/ParameterizedType;[Ljava/lang/reflect/Type;I)Ljava/lang/reflect/Type;

    move-result-object v10

    aput-object v10, v3, v5

    .line 66
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 83
    :cond_3
    new-instance v6, Lgzc;

    invoke-direct {v6, v3, v9, v7}, Lgzc;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 84
    .local v6, "key":Ljava/lang/reflect/Type;
    sget-object v10, Lgxp;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v10, v6}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Type;

    .line 85
    .local v4, "cachedType":Ljava/lang/reflect/Type;
    if-nez v4, :cond_4

    .line 86
    sget-object v10, Lgxp;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v10, v6, v6}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v10, Lgxp;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v10, v6}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "cachedType":Ljava/lang/reflect/Type;
    check-cast v4, Ljava/lang/reflect/Type;

    .line 90
    .restart local v4    # "cachedType":Ljava/lang/reflect/Type;
    :cond_4
    iput-object v4, p0, Lgxp;->type:Ljava/lang/reflect/Type;

    .line 92
    return-void
.end method

.method private handlerParameterizedType(Ljava/lang/reflect/ParameterizedType;[Ljava/lang/reflect/Type;I)Ljava/lang/reflect/Type;
    .locals 7
    .param p1, "type"    # Ljava/lang/reflect/ParameterizedType;
    .param p2, "actualTypeArguments"    # [Ljava/lang/reflect/Type;
    .param p3, "actualIndex"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 95
    .local p0, "this":Lgxp;, "Lgxp<TT;>;"
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 96
    .local v5, "thisClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 97
    .local v4, "rawType":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 99
    .local v1, "argTypes":[Ljava/lang/reflect/Type;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v1

    if-ge v2, v6, :cond_3

    .line 100
    aget-object v6, v1, v2

    instance-of v6, v6, Ljava/lang/reflect/TypeVariable;

    if-eqz v6, :cond_0

    array-length v6, p2

    if-ge p3, v6, :cond_0

    .line 101
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "actualIndex":I
    .local v0, "actualIndex":I
    aget-object v6, p2, p3

    aput-object v6, v1, v2

    move p3, v0

    .line 105
    .end local v0    # "actualIndex":I
    .restart local p3    # "actualIndex":I
    :cond_0
    aget-object v6, v1, v2

    instance-of v6, v6, Ljava/lang/reflect/GenericArrayType;

    if-eqz v6, :cond_1

    .line 106
    aget-object v6, v1, v2

    check-cast v6, Ljava/lang/reflect/GenericArrayType;

    invoke-static {v6}, Lgzd;->a(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/reflect/Type;

    move-result-object v6

    aput-object v6, v1, v2

    .line 111
    :cond_1
    aget-object v6, v1, v2

    instance-of v6, v6, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_2

    .line 112
    aget-object p1, v1, v2

    .end local p1    # "type":Ljava/lang/reflect/ParameterizedType;
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .restart local p1    # "type":Ljava/lang/reflect/ParameterizedType;
    goto :goto_0

    .line 99
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 116
    :cond_3
    new-instance v3, Lgzc;

    invoke-direct {v3, v1, v5, v4}, Lgzc;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 117
    .local v3, "key":Ljava/lang/reflect/Type;
    return-object v3
.end method


# virtual methods
.method public getType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 121
    .local p0, "this":Lgxp;, "Lgxp<TT;>;"
    iget-object v0, p0, Lgxp;->type:Ljava/lang/reflect/Type;

    return-object v0
.end method
