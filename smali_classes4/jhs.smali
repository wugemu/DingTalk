.class public final Ljhs;
.super Ljava/lang/Object;
.source "MethodSpec.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljho;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljhl;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/Modifier;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljhw;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljhv;

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljht;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Z

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljhv;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljho;

.field public final k:Ljho;


# direct methods
.method private a(Ljavax/lang/model/element/Modifier;)Z
    .locals 1
    .param p1, "modifier"    # Ljavax/lang/model/element/Modifier;

    .prologue
    .line 143
    iget-object v0, p0, Ljhs;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Ljhp;Ljava/lang/String;Ljava/util/Set;)V
    .locals 11
    .param p1, "codeWriter"    # Ljhp;
    .param p2, "enclosingName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljhp;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/Modifier;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p3, "implicitModifiers":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/Modifier;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 85
    iget-object v5, p0, Ljhs;->b:Ljho;

    invoke-virtual {p1, v5}, Ljhp;->a(Ljho;)V

    .line 86
    iget-object v5, p0, Ljhs;->c:Ljava/util/List;

    invoke-virtual {p1, v5, v7}, Ljhp;->a(Ljava/util/List;Z)V

    .line 87
    iget-object v5, p0, Ljhs;->d:Ljava/util/Set;

    invoke-virtual {p1, v5, p3}, Ljhp;->a(Ljava/util/Set;Ljava/util/Set;)V

    .line 89
    iget-object v5, p0, Ljhs;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 90
    iget-object v5, p0, Ljhs;->e:Ljava/util/List;

    invoke-virtual {p1, v5}, Ljhp;->a(Ljava/util/List;)V

    .line 91
    const-string/jumbo v5, " "

    .line 1206
    invoke-virtual {p1, v5}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    .line 94
    :cond_0
    invoke-virtual {p0}, Ljhs;->a()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 95
    const-string/jumbo v5, "$L("

    new-array v8, v6, [Ljava/lang/Object;

    aput-object p2, v8, v7

    invoke-virtual {p1, v5, v8}, Ljhp;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljhp;

    .line 100
    :goto_0
    const/4 v2, 0x1

    .line 101
    .local v2, "firstParameter":Z
    iget-object v5, p0, Ljhs;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljht;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 102
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljht;

    .line 103
    .local v4, "parameter":Ljht;
    if-nez v2, :cond_1

    const-string/jumbo v5, ","

    .line 2206
    invoke-virtual {p1, v5}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    move-result-object v5

    .line 103
    invoke-virtual {v5}, Ljhp;->b()Ljhp;

    .line 104
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    iget-boolean v5, p0, Ljhs;->h:Z

    if-eqz v5, :cond_3

    move v5, v6

    :goto_2
    invoke-virtual {v4, p1, v5}, Ljht;->a(Ljhp;Z)V

    .line 105
    const/4 v2, 0x0

    .line 106
    goto :goto_1

    .line 97
    .end local v2    # "firstParameter":Z
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljht;>;"
    .end local v4    # "parameter":Ljht;
    :cond_2
    const-string/jumbo v5, "$T $L("

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Ljhs;->f:Ljhv;

    aput-object v9, v8, v7

    iget-object v9, p0, Ljhs;->a:Ljava/lang/String;

    aput-object v9, v8, v6

    invoke-virtual {p1, v5, v8}, Ljhp;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljhp;

    goto :goto_0

    .restart local v2    # "firstParameter":Z
    .restart local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljht;>;"
    .restart local v4    # "parameter":Ljht;
    :cond_3
    move v5, v7

    .line 104
    goto :goto_2

    .line 108
    .end local v4    # "parameter":Ljht;
    :cond_4
    const-string/jumbo v5, ")"

    .line 3206
    invoke-virtual {p1, v5}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    .line 110
    iget-object v5, p0, Ljhs;->k:Ljho;

    if-eqz v5, :cond_5

    iget-object v5, p0, Ljhs;->k:Ljho;

    invoke-virtual {v5}, Ljho;->a()Z

    move-result v5

    if-nez v5, :cond_5

    .line 111
    const-string/jumbo v5, " default "

    .line 4206
    invoke-virtual {p1, v5}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    .line 112
    iget-object v5, p0, Ljhs;->k:Ljho;

    invoke-virtual {p1, v5}, Ljhp;->b(Ljho;)Ljhp;

    .line 115
    :cond_5
    iget-object v5, p0, Ljhs;->i:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 116
    invoke-virtual {p1}, Ljhp;->b()Ljhp;

    move-result-object v5

    const-string/jumbo v8, "throws"

    .line 5206
    invoke-virtual {v5, v8}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    .line 117
    const/4 v1, 0x1

    .line 118
    .local v1, "firstException":Z
    iget-object v5, p0, Ljhs;->i:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljhv;

    .line 119
    .local v0, "exception":Ljhv;
    if-nez v1, :cond_6

    const-string/jumbo v8, ","

    .line 6206
    invoke-virtual {p1, v8}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    .line 120
    :cond_6
    invoke-virtual {p1}, Ljhp;->b()Ljhp;

    move-result-object v8

    const-string/jumbo v9, "$T"

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v0, v10, v7

    invoke-virtual {v8, v9, v10}, Ljhp;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljhp;

    .line 121
    const/4 v1, 0x0

    .line 122
    goto :goto_3

    .line 125
    .end local v0    # "exception":Ljhv;
    .end local v1    # "firstException":Z
    :cond_7
    sget-object v5, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    invoke-direct {p0, v5}, Ljhs;->a(Ljavax/lang/model/element/Modifier;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 126
    const-string/jumbo v5, ";\n"

    .line 7206
    invoke-virtual {p1, v5}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    .line 140
    :goto_4
    return-void

    .line 127
    :cond_8
    sget-object v5, Ljavax/lang/model/element/Modifier;->NATIVE:Ljavax/lang/model/element/Modifier;

    invoke-direct {p0, v5}, Ljhs;->a(Ljavax/lang/model/element/Modifier;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 129
    iget-object v5, p0, Ljhs;->j:Ljho;

    invoke-virtual {p1, v5}, Ljhp;->b(Ljho;)Ljhp;

    .line 130
    const-string/jumbo v5, ";\n"

    .line 8206
    invoke-virtual {p1, v5}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    goto :goto_4

    .line 132
    :cond_9
    const-string/jumbo v5, " {\n"

    .line 9206
    invoke-virtual {p1, v5}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    .line 10094
    invoke-virtual {p1, v6}, Ljhp;->a(I)Ljhp;

    .line 135
    iget-object v5, p0, Ljhs;->j:Ljho;

    invoke-virtual {p1, v5}, Ljhp;->b(Ljho;)Ljhp;

    .line 10103
    invoke-virtual {p1, v6}, Ljhp;->b(I)Ljhp;

    .line 138
    const-string/jumbo v5, "}\n"

    .line 10206
    invoke-virtual {p1, v5}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    goto :goto_4
.end method

.method public final a()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 147
    iget-object v0, p0, Ljhs;->a:Ljava/lang/String;

    const-string/jumbo v1, "<init>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 151
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    .line 154
    :cond_0
    :goto_0
    return v0

    .line 152
    :cond_1
    if-eqz p1, :cond_0

    .line 153
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 154
    invoke-virtual {p0}, Ljhs;->toString()Ljava/lang/String;

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
    .line 158
    invoke-virtual {p0}, Ljhs;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 162
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 164
    .local v1, "out":Ljava/io/StringWriter;
    :try_start_0
    new-instance v0, Ljhp;

    invoke-direct {v0, v1}, Ljhp;-><init>(Ljava/lang/Appendable;)V

    .line 165
    .local v0, "codeWriter":Ljhp;
    const-string/jumbo v2, "Constructor"

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Ljhs;->a(Ljhp;Ljava/lang/String;Ljava/util/Set;)V

    .line 166
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 168
    .end local v0    # "codeWriter":Ljhp;
    :catch_0
    move-exception v2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method
