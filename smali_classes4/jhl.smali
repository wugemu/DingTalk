.class public final Ljhl;
.super Ljava/lang/Object;
.source "AnnotationSpec.java"


# instance fields
.field public final a:Ljhv;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljho;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private static a(Ljhp;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p0, "codeWriter"    # Ljhp;
    .param p1, "whitespace"    # Ljava/lang/String;
    .param p2, "memberSeparator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljhp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljho;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p3, "values":Ljava/util/List;, "Ljava/util/List<Ljho;>;"
    const/4 v4, 0x2

    .line 88
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 89
    invoke-virtual {p0, v4}, Ljhp;->a(I)Ljhp;

    .line 90
    const/4 v2, 0x0

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljho;

    invoke-virtual {p0, v2}, Ljhp;->b(Ljho;)Ljhp;

    .line 91
    invoke-virtual {p0, v4}, Ljhp;->b(I)Ljhp;

    .line 105
    :goto_0
    return-void

    .line 95
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljhp;->a(Ljava/lang/String;)Ljhp;

    .line 96
    invoke-virtual {p0, v4}, Ljhp;->a(I)Ljhp;

    .line 97
    const/4 v1, 0x1

    .line 98
    .local v1, "first":Z
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljho;

    .line 99
    .local v0, "codeBlock":Ljho;
    if-nez v1, :cond_1

    invoke-virtual {p0, p2}, Ljhp;->a(Ljava/lang/String;)Ljhp;

    .line 100
    :cond_1
    invoke-virtual {p0, v0}, Ljhp;->b(Ljho;)Ljhp;

    .line 101
    const/4 v1, 0x0

    .line 102
    goto :goto_1

    .line 103
    .end local v0    # "codeBlock":Ljho;
    :cond_2
    invoke-virtual {p0, v4}, Ljhp;->b(I)Ljhp;

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljhp;->a(Ljava/lang/String;)Ljhp;

    goto :goto_0
.end method


# virtual methods
.method final a(Ljhp;Z)V
    .locals 10
    .param p1, "codeWriter"    # Ljhp;
    .param p2, "inline"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 53
    if-eqz p2, :cond_0

    const-string/jumbo v3, ""

    .line 54
    .local v3, "whitespace":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_1

    const-string/jumbo v2, ", "

    .line 55
    .local v2, "memberSeparator":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Ljhl;->b:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 57
    const-string/jumbo v4, "@$T"

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Ljhl;->a:Ljhv;

    aput-object v6, v5, v8

    invoke-virtual {p1, v4, v5}, Ljhp;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljhp;

    .line 84
    :goto_2
    return-void

    .line 53
    .end local v2    # "memberSeparator":Ljava/lang/String;
    .end local v3    # "whitespace":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "\n"

    goto :goto_0

    .line 54
    .restart local v3    # "whitespace":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, ",\n"

    goto :goto_1

    .line 58
    .restart local v2    # "memberSeparator":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Ljhl;->b:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-ne v4, v7, :cond_3

    iget-object v4, p0, Ljhl;->b:Ljava/util/Map;

    const-string/jumbo v5, "value"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 60
    const-string/jumbo v4, "@$T("

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Ljhl;->a:Ljhv;

    aput-object v6, v5, v8

    invoke-virtual {p1, v4, v5}, Ljhp;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljhp;

    .line 61
    iget-object v4, p0, Ljhl;->b:Ljava/util/Map;

    const-string/jumbo v5, "value"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {p1, v3, v2, v4}, Ljhl;->a(Ljhp;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 62
    const-string/jumbo v4, ")"

    .line 1206
    invoke-virtual {p1, v4}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    goto :goto_2

    .line 72
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "@$T("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Ljhl;->a:Ljhv;

    aput-object v6, v5, v8

    invoke-virtual {p1, v4, v5}, Ljhp;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljhp;

    .line 73
    invoke-virtual {p1, v9}, Ljhp;->a(I)Ljhp;

    .line 74
    iget-object v4, p0, Ljhl;->b:Ljava/util/Map;

    .line 75
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljho;>;>;>;"
    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 77
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljho;>;>;"
    const-string/jumbo v4, "$L = "

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p1, v4, v5}, Ljhp;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljhp;

    .line 78
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {p1, v3, v2, v4}, Ljhl;->a(Ljhp;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 79
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1, v2}, Ljhp;->a(Ljava/lang/String;)Ljhp;

    goto :goto_3

    .line 81
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljho;>;>;"
    :cond_5
    invoke-virtual {p1, v9}, Ljhp;->b(I)Ljhp;

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljhp;->a(Ljava/lang/String;)Ljhp;

    goto/16 :goto_2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 176
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    .line 179
    :cond_0
    :goto_0
    return v0

    .line 177
    :cond_1
    if-eqz p1, :cond_0

    .line 178
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 179
    invoke-virtual {p0}, Ljhl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Ljhl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 187
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 189
    .local v1, "out":Ljava/io/StringWriter;
    :try_start_0
    new-instance v0, Ljhp;

    invoke-direct {v0, v1}, Ljhp;-><init>(Ljava/lang/Appendable;)V

    .line 190
    .local v0, "codeWriter":Ljhp;
    const-string/jumbo v2, "$L"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v2, v3}, Ljhp;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljhp;

    .line 191
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 193
    .end local v0    # "codeWriter":Ljhp;
    :catch_0
    move-exception v2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method
