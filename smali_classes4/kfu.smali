.class public abstract Lkfu;
.super Ljava/lang/Object;
.source "AbstractMap.kt"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkfu$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u001e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010&\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\'\u0018\u0000 **\u0004\u0008\u0000\u0010\u0001*\u0006\u0008\u0001\u0010\u0002 \u00012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0003:\u0001*B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0004J\u001f\u0010\u0013\u001a\u00020\u00142\u0010\u0010\u0015\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0018\u00010\u0016H\u0000\u00a2\u0006\u0002\u0008\u0017J\u0015\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u001aJ\u001a\u0010\u001b\u001a\u00020\u00142\u000b\u0010\u001c\u001a\u00078\u0001\u00a2\u0006\u0002\u0008\u001dH\u0016\u00a2\u0006\u0002\u0010\u001aJ\u0013\u0010\u001e\u001a\u00020\u00142\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0096\u0002J\u0018\u0010!\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0019\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\"J\u0008\u0010#\u001a\u00020\rH\u0016J#\u0010$\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00162\u0006\u0010\u0019\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u0010%J\u0008\u0010&\u001a\u00020\u0014H\u0016J\u0008\u0010\'\u001a\u00020(H\u0016J\u0012\u0010\'\u001a\u00020(2\u0008\u0010)\u001a\u0004\u0018\u00010 H\u0002J\u001c\u0010\'\u001a\u00020(2\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0016H\u0008R\u001a\u0010\u0005\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00068\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00088\u0008@\u0008X\u0089\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006+"
    }
    d2 = {
        "Lkotlin/collections/AbstractMap;",
        "K",
        "V",
        "",
        "()V",
        "_keys",
        "",
        "_values",
        "",
        "keys",
        "getKeys",
        "()Ljava/util/Set;",
        "size",
        "",
        "getSize",
        "()I",
        "values",
        "getValues",
        "()Ljava/util/Collection;",
        "containsEntry",
        "",
        "entry",
        "",
        "containsEntry$kotlin_stdlib",
        "containsKey",
        "key",
        "(Ljava/lang/Object;)Z",
        "containsValue",
        "value",
        "Lkotlin/UnsafeVariance;",
        "equals",
        "other",
        "",
        "get",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "hashCode",
        "implFindEntry",
        "(Ljava/lang/Object;)Ljava/util/Map$Entry;",
        "isEmpty",
        "toString",
        "",
        "o",
        "Companion",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x5
    }
.end annotation

.annotation build Lkotlin/SinceKotlin;
    version = "1.1"
.end annotation


# static fields
.field public static final a:Lkfu$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkfu$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkfu$a;-><init>(B)V

    sput-object v0, Lkfu;->a:Lkfu$a;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 116
    check-cast p0, Lkfu;

    .end local p0    # "this":Lkfu;
    if-ne p1, p0, :cond_0

    const-string/jumbo v0, "(this Map)"

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final synthetic a(Lkfu;Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 2
    .param p0, "$this"    # Lkfu;
    .param p1, "entry"    # Ljava/util/Map$Entry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 32
    .line 1114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lkfu;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lkfu;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/util/Set;
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lkfu;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "other"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 66
    move-object v3, p0

    check-cast v3, Lkfu;

    if-ne p1, v3, :cond_0

    move v3, v4

    .line 160
    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v3

    .line 67
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    instance-of v3, p1, Ljava/util/Map;

    if-nez v3, :cond_1

    move v3, v5

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p0}, Lkfu;->size()I

    move-result v6

    move-object v3, p1

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v6, v3, :cond_2

    move v3, v5

    goto :goto_0

    .line 70
    :cond_2
    check-cast p1, Ljava/util/Map;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 159
    .local v0, "$receiver$iv":Ljava/lang/Iterable;
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "element$iv":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/util/Map$Entry;

    .line 1042
    .local v2, "it":Ljava/util/Map$Entry;
    instance-of v3, v2, Ljava/util/Map$Entry;

    if-nez v3, :cond_4

    move v3, v5

    .line 70
    :goto_1
    if-nez v3, :cond_3

    move v3, v5

    goto :goto_0

    .line 1043
    :cond_4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 1044
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 1045
    if-nez p0, :cond_5

    new-instance v3, Lkotlin/TypeCastException;

    const-string/jumbo v4, "null cannot be cast to non-null type kotlin.collections.Map<K, V>"

    invoke-direct {v3, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    move-object v3, p0

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1047
    invoke-static {v8, v3}, Lkib;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_6

    move v3, v5

    .line 1048
    goto :goto_1

    .line 1052
    :cond_6
    if-nez v3, :cond_8

    if-nez p0, :cond_7

    new-instance v3, Lkotlin/TypeCastException;

    const-string/jumbo v4, "null cannot be cast to non-null type kotlin.collections.Map<K, *>"

    invoke-direct {v3, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_7
    move-object v3, p0

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v3, v5

    .line 1053
    goto :goto_1

    :cond_8
    move v3, v4

    .line 1056
    goto :goto_1

    .end local v1    # "element$iv":Ljava/lang/Object;
    .end local v2    # "it":Ljava/util/Map$Entry;
    :cond_9
    move v3, v4

    .line 160
    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lkfu;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 32
    .line 1084
    invoke-virtual {p0}, Lkfu;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 32
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 112
    invoke-virtual {p0}, Lkfu;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    const-string/jumbo v1, ", "

    check-cast v1, Ljava/lang/CharSequence;

    const-string/jumbo v2, "{"

    check-cast v2, Ljava/lang/CharSequence;

    const-string/jumbo v3, "}"

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lkotlin/collections/AbstractMap$toString$1;

    invoke-direct {v6, p0}, Lkotlin/collections/AbstractMap$toString$1;-><init>(Lkfu;)V

    check-cast v6, Lkhl;

    const/16 v7, 0x18

    invoke-static/range {v0 .. v7}, Lkgc;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkhl;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
