.class Lcom/taobao/android/runtime/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendArray(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 6
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "insertAtFirst"    # Z

    .prologue
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 33
    .local v3, "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 34
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 35
    .local v1, "j":I
    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    .line 36
    .local v4, "localObject":Ljava/lang/Object;
    if-eqz p2, :cond_0

    .line 37
    const/4 v5, 0x0

    invoke-static {v4, v5, p1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 38
    const/4 v2, 0x1

    .local v2, "k":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 39
    add-int/lit8 v5, v2, -0x1

    invoke-static {p0, v5}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v2, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 38
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    .end local v2    # "k":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "k":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 43
    if-ge v2, v0, :cond_1

    .line 44
    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v2, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 42
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 46
    :cond_1
    invoke-static {v4, v2, p1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_2

    .line 50
    :cond_2
    return-object v4
.end method

.method public static combineArray(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 7
    .param p0, "arrayLhs"    # Ljava/lang/Object;
    .param p1, "arrayRhs"    # Ljava/lang/Object;
    .param p2, "rhsAtFirst"    # Z

    .prologue
    .line 11
    if-eqz p2, :cond_0

    .line 12
    move-object v5, p0

    .line 13
    .local v5, "temp":Ljava/lang/Object;
    move-object p0, p1

    .line 14
    move-object p1, v5

    .line 17
    .end local v5    # "temp":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 18
    .local v3, "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 19
    .local v0, "i":I
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    add-int v1, v0, v6

    .line 20
    .local v1, "j":I
    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    .line 21
    .local v4, "result":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 22
    if-ge v2, v0, :cond_1

    .line 23
    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v2, v6}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 21
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25
    :cond_1
    sub-int v6, v2, v0

    invoke-static {p1, v6}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v2, v6}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1

    .line 28
    :cond_2
    return-object v4
.end method
