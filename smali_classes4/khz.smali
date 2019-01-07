.class public final Lkhz;
.super Ljava/lang/Object;
.source "CollectionToArray.java"


# static fields
.field private static final a:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lkhz;->a:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method public static a(Ljava/util/Collection;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    .line 31
    .local v3, "size":I
    if-nez v3, :cond_1

    sget-object v2, Lkhz;->a:[Ljava/lang/Object;

    .line 42
    :cond_0
    :goto_0
    return-object v2

    .line 33
    :cond_1
    new-array v2, v3, [Ljava/lang/Object;

    .line 34
    .local v2, "r":[Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 35
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 38
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 40
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v0

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 42
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2, v1}, Lkhz;->a([Ljava/lang/Object;Ljava/util/Iterator;)[Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public static a(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;[TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    .line 48
    .local v3, "size":I
    array-length v4, p1

    if-lt v4, v3, :cond_1

    move-object v2, p1

    .line 51
    .local v2, "r":[Ljava/lang/Object;, "[TT;"
    :goto_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 53
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_4

    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 55
    if-eq p1, v2, :cond_2

    .line 56
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 62
    .end local v2    # "r":[Ljava/lang/Object;, "[TT;"
    :cond_0
    :goto_2
    return-object v2

    .line 48
    .end local v0    # "i":I
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    move-object v2, v4

    goto :goto_0

    .line 57
    .restart local v0    # "i":I
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    .restart local v2    # "r":[Ljava/lang/Object;, "[TT;"
    :cond_2
    const/4 v4, 0x0

    aput-object v4, v2, v0

    goto :goto_2

    .line 60
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v0

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 62
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2, v1}, Lkhz;->a([Ljava/lang/Object;Ljava/util/Iterator;)[Ljava/lang/Object;

    move-result-object v2

    goto :goto_2
.end method

.method private static a([Ljava/lang/Object;Ljava/util/Iterator;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Iterator",
            "<*>;)[TT;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "r":[Ljava/lang/Object;, "[TT;"
    .local p1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    array-length v1, p0

    .line 67
    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 68
    array-length v0, p0

    .line 69
    .local v0, "cap":I
    if-ne v1, v0, :cond_2

    .line 70
    div-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v3, v4, 0x3

    .line 71
    .local v3, "newCap":I
    if-gt v3, v0, :cond_1

    .line 72
    const v4, 0x7fffffff

    if-ne v0, v4, :cond_0

    .line 73
    new-instance v4, Ljava/lang/OutOfMemoryError;

    const-string/jumbo v5, "Required array size too large"

    invoke-direct {v4, v5}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 75
    :cond_0
    const v3, 0x7fffffff

    .line 77
    :cond_1
    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    .line 79
    .end local v3    # "newCap":I
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, p0, v1

    move v1, v2

    .line 80
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 82
    .end local v0    # "cap":I
    :cond_3
    array-length v4, p0

    if-ne v1, v4, :cond_4

    .end local p0    # "r":[Ljava/lang/Object;, "[TT;"
    :goto_1
    return-object p0

    .restart local p0    # "r":[Ljava/lang/Object;, "[TT;"
    :cond_4
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    goto :goto_1
.end method
