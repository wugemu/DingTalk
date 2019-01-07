.class public final Ljhp;
.super Ljava/lang/Object;
.source "CodeWriter.java"


# static fields
.field private static final h:Ljava/lang/String;


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/javapoet/TypeSpec;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljhn;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljhn;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:I

.field private final i:Ljava/lang/String;

.field private final j:Ljhr;

.field private k:I

.field private l:Z

.field private final m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Ljhp;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Appendable;)V
    .locals 2
    .param p1, "out"    # Ljava/lang/Appendable;

    .prologue
    .line 70
    const-string/jumbo v0, "  "

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Ljhp;-><init>(Ljava/lang/Appendable;Ljava/lang/String;Ljava/util/Set;)V

    .line 71
    return-void
.end method

.method private constructor <init>(Ljava/lang/Appendable;Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;)V
    .locals 5
    .param p1, "out"    # Ljava/lang/Appendable;
    .param p2, "indent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Appendable;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljhn;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "importedTypes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljhn;>;"
    .local p4, "staticImports":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean v4, p0, Ljhp;->a:Z

    .line 52
    iput-boolean v4, p0, Ljhp;->l:Z

    .line 53
    sget-object v1, Ljhp;->h:Ljava/lang/String;

    iput-object v1, p0, Ljhp;->b:Ljava/lang/String;

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljhp;->c:Ljava/util/List;

    .line 58
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Ljhp;->e:Ljava/util/Map;

    .line 59
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Ljhp;->f:Ljava/util/Set;

    .line 67
    const/4 v1, -0x1

    iput v1, p0, Ljhp;->g:I

    .line 79
    new-instance v1, Ljhr;

    const/16 v2, 0x64

    invoke-direct {v1, p1, p2, v2}, Ljhr;-><init>(Ljava/lang/Appendable;Ljava/lang/String;I)V

    iput-object v1, p0, Ljhp;->j:Ljhr;

    .line 80
    const-string/jumbo v1, "indent == null"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p2, v1, v2}, Ljhx;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljhp;->i:Ljava/lang/String;

    .line 81
    const-string/jumbo v1, "importedTypes == null"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p3, v1, v2}, Ljhx;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Ljhp;->d:Ljava/util/Map;

    .line 82
    const-string/jumbo v1, "staticImports == null"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p4, v1, v2}, Ljhx;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    iput-object v1, p0, Ljhp;->n:Ljava/util/Set;

    .line 83
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Ljhp;->m:Ljava/util/Set;

    .line 84
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 85
    .local v0, "signature":Ljava/lang/String;
    iget-object v2, p0, Ljhp;->m:Ljava/util/Set;

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    .end local v0    # "signature":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/Appendable;Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .param p1, "out"    # Ljava/lang/Appendable;
    .param p2, "indent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Appendable;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p3, "staticImports":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Ljhp;-><init>(Ljava/lang/Appendable;Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;)V

    .line 75
    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "part"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 311
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v1

    const-string/jumbo v2, "not an identifier: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Ljhx;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 312
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 313
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/lang/model/SourceVersion;->isIdentifier(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 314
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 317
    .end local p0    # "part":Ljava/lang/String;
    :cond_0
    return-object p0

    .line 312
    .restart local p0    # "part":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 482
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget v1, p0, Ljhp;->k:I

    if-ge v0, v1, :cond_0

    .line 483
    iget-object v1, p0, Ljhp;->j:Ljhr;

    iget-object v2, p0, Ljhp;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljhr;->a(Ljava/lang/String;)V

    .line 482
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 485
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljhp;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 130
    iget-object v0, p0, Ljhp;->c:Ljava/util/List;

    iget-object v1, p0, Ljhp;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 131
    return-object p0
.end method

.method public final a(I)Ljhp;
    .locals 1
    .param p1, "levels"    # I

    .prologue
    .line 98
    iget v0, p0, Ljhp;->k:I

    add-int/2addr v0, p1

    iput v0, p0, Ljhp;->k:I

    .line 99
    return-object p0
.end method

.method public final a(Lcom/squareup/javapoet/TypeSpec;)Ljhp;
    .locals 1
    .param p1, "type"    # Lcom/squareup/javapoet/TypeSpec;

    .prologue
    .line 125
    iget-object v0, p0, Ljhp;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Ljhp;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    move-result-object v0

    return-object v0
.end method

.method public final varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljhp;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-static {p1, p2}, Ljho;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljho;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljhp;->b(Ljho;)Ljhp;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljhw;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p1, "typeVariables":Ljava/util/List;, "Ljava/util/List<Ljhw;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 188
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 203
    :goto_0
    return-void

    .line 190
    :cond_0
    const-string/jumbo v4, "<"

    .line 4206
    invoke-virtual {p0, v4}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    .line 191
    const/4 v2, 0x1

    .line 192
    .local v2, "firstTypeVariable":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljhw;

    .line 193
    .local v3, "typeVariable":Ljhw;
    if-nez v2, :cond_1

    const-string/jumbo v4, ", "

    .line 5206
    invoke-virtual {p0, v4}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    .line 194
    :cond_1
    const-string/jumbo v4, "$L"

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, v3, Ljhw;->a:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {p0, v4, v6}, Ljhp;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljhp;

    .line 195
    const/4 v1, 0x1

    .line 196
    .local v1, "firstBound":Z
    iget-object v4, v3, Ljhw;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljhv;

    .line 197
    .local v0, "bound":Ljhv;
    if-eqz v1, :cond_2

    const-string/jumbo v4, " extends $T"

    :goto_3
    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v8

    invoke-virtual {p0, v4, v7}, Ljhp;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljhp;

    .line 198
    const/4 v1, 0x0

    .line 199
    goto :goto_2

    .line 197
    :cond_2
    const-string/jumbo v4, " & $T"

    goto :goto_3

    .line 200
    .end local v0    # "bound":Ljhv;
    :cond_3
    const/4 v2, 0x0

    .line 201
    goto :goto_1

    .line 202
    .end local v1    # "firstBound":Z
    .end local v3    # "typeVariable":Ljhw;
    :cond_4
    const-string/jumbo v4, ">"

    .line 6206
    invoke-virtual {p0, v4}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Z)V
    .locals 3
    .param p2, "inline"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljhl;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 159
    .local p1, "annotations":Ljava/util/List;, "Ljava/util/List<Ljhl;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljhl;

    .line 160
    .local v0, "annotationSpec":Ljhl;
    invoke-virtual {v0, p0, p2}, Ljhl;->a(Ljhp;Z)V

    .line 161
    if-eqz p2, :cond_0

    const-string/jumbo v1, " "

    .line 3206
    :goto_1
    invoke-virtual {p0, v1}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    goto :goto_0

    .line 161
    :cond_0
    const-string/jumbo v1, "\n"

    goto :goto_1

    .line 163
    .end local v0    # "annotationSpec":Ljhl;
    :cond_1
    return-void
.end method

.method public final a(Ljava/util/Set;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/Modifier;",
            ">;",
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

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 171
    .local p1, "modifiers":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/Modifier;>;"
    .local p2, "implicitModifiers":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/Modifier;>;"
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    :cond_0
    return-void

    .line 172
    :cond_1
    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Modifier;

    .line 173
    .local v0, "modifier":Ljavax/lang/model/element/Modifier;
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 174
    invoke-virtual {v0}, Ljavax/lang/model/element/Modifier;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    .line 175
    const-string/jumbo v2, " "

    invoke-virtual {p0, v2}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    goto :goto_0
.end method

.method public final a(Ljho;)V
    .locals 2
    .param p1, "javadocCodeBlock"    # Ljho;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-virtual {p1}, Ljho;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 148
    :cond_0
    const-string/jumbo v0, "/**\n"

    .line 1206
    invoke-virtual {p0, v0}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljhp;->a:Z

    .line 151
    :try_start_0
    invoke-virtual {p0, p1}, Ljhp;->b(Ljho;)Ljhp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    iput-boolean v1, p0, Ljhp;->a:Z

    .line 155
    const-string/jumbo v0, " */\n"

    .line 2206
    invoke-virtual {p0, v0}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    goto :goto_0

    .line 153
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Ljhp;->a:Z

    throw v0
.end method

.method public final b()Ljhp;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 306
    iget-object v0, p0, Ljhp;->j:Ljhr;

    iget v1, p0, Ljhp;->k:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljhr;->a(I)V

    .line 307
    return-object p0
.end method

.method public final b(I)Ljhp;
    .locals 6
    .param p1, "levels"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    iget v0, p0, Ljhp;->k:I

    sub-int/2addr v0, p1

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "cannot unindent %s from %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget v2, p0, Ljhp;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Ljhx;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 108
    iget v0, p0, Ljhp;->k:I

    sub-int/2addr v0, p1

    iput v0, p0, Ljhp;->k:I

    .line 109
    return-object p0

    :cond_0
    move v0, v2

    .line 107
    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Ljhp;
    .locals 9
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v8, -0x1

    .line 444
    const/4 v0, 0x1

    .line 445
    .local v0, "first":Z
    const-string/jumbo v2, "\n"

    invoke-virtual {p1, v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_6

    aget-object v1, v5, v3

    .line 447
    .local v1, "line":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 448
    iget-boolean v2, p0, Ljhp;->a:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Ljhp;->o:Z

    if-eqz v2, :cond_0

    .line 449
    invoke-direct {p0}, Ljhp;->c()V

    .line 450
    iget-object v7, p0, Ljhp;->j:Ljhr;

    iget-boolean v2, p0, Ljhp;->a:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, " *"

    :goto_1
    invoke-virtual {v7, v2}, Ljhr;->a(Ljava/lang/String;)V

    .line 452
    :cond_0
    iget-object v2, p0, Ljhp;->j:Ljhr;

    const-string/jumbo v7, "\n"

    invoke-virtual {v2, v7}, Ljhr;->a(Ljava/lang/String;)V

    .line 453
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljhp;->o:Z

    .line 454
    iget v2, p0, Ljhp;->g:I

    if-eq v2, v8, :cond_2

    .line 455
    iget v2, p0, Ljhp;->g:I

    if-nez v2, :cond_1

    .line 456
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljhp;->a(I)Ljhp;

    .line 458
    :cond_1
    iget v2, p0, Ljhp;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljhp;->g:I

    .line 462
    :cond_2
    const/4 v0, 0x0

    .line 463
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 466
    iget-boolean v2, p0, Ljhp;->o:Z

    if-eqz v2, :cond_3

    .line 467
    invoke-direct {p0}, Ljhp;->c()V

    .line 468
    iget-boolean v2, p0, Ljhp;->a:Z

    if-eqz v2, :cond_3

    .line 469
    iget-object v2, p0, Ljhp;->j:Ljhr;

    const-string/jumbo v7, " * "

    invoke-virtual {v2, v7}, Ljhr;->a(Ljava/lang/String;)V

    .line 475
    :cond_3
    iget-object v2, p0, Ljhp;->j:Ljhr;

    invoke-virtual {v2, v1}, Ljhr;->a(Ljava/lang/String;)V

    .line 476
    iput-boolean v4, p0, Ljhp;->o:Z

    .line 445
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 450
    :cond_5
    const-string/jumbo v2, "//"

    goto :goto_1

    .line 478
    .end local v1    # "line":Ljava/lang/String;
    :cond_6
    return-object p0
.end method

.method public final b(Ljho;)Ljhp;
    .locals 12
    .param p1, "codeBlock"    # Ljho;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, "a":I
    const/4 v3, 0x0

    .line 216
    .local v3, "deferredTypeName":Ljhn;
    iget-object v8, p1, Ljho;->a:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    .line 217
    .local v5, "partIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 218
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 219
    .local v4, "part":Ljava/lang/String;
    const/4 v8, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v8, :pswitch_data_0

    .line 287
    if-eqz v3, :cond_f

    .line 288
    const-string/jumbo v8, "."

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 289
    iget-object v8, v3, Ljhn;->c:Ljava/lang/String;

    .line 8321
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 8322
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_d

    .line 8323
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 8324
    invoke-static {v10}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 8325
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v9}, Ljhp;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 8326
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ".*"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 8327
    iget-object v11, p0, Ljhp;->n:Ljava/util/Set;

    invoke-interface {v11, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Ljhp;->n:Ljava/util/Set;

    invoke-interface {v10, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 8328
    :cond_1
    invoke-virtual {p0, v9}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    .line 8329
    const/4 v8, 0x1

    .line 289
    :goto_2
    if-eqz v8, :cond_e

    .line 291
    const/4 v3, 0x0

    .line 292
    goto/16 :goto_0

    .line 219
    :sswitch_0
    const-string/jumbo v9, "$L"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v9, "$N"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x1

    goto/16 :goto_1

    :sswitch_2
    const-string/jumbo v9, "$S"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x2

    goto/16 :goto_1

    :sswitch_3
    const-string/jumbo v9, "$T"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x3

    goto/16 :goto_1

    :sswitch_4
    const-string/jumbo v9, "$$"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x4

    goto/16 :goto_1

    :sswitch_5
    const-string/jumbo v9, "$>"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x5

    goto/16 :goto_1

    :sswitch_6
    const-string/jumbo v9, "$<"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x6

    goto/16 :goto_1

    :sswitch_7
    const-string/jumbo v9, "$["

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x7

    goto/16 :goto_1

    :sswitch_8
    const-string/jumbo v9, "$]"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v8, 0x8

    goto/16 :goto_1

    :sswitch_9
    const-string/jumbo v9, "$W"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v8, 0x9

    goto/16 :goto_1

    .line 221
    :pswitch_0
    iget-object v8, p1, Ljho;->b:Ljava/util/List;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "a":I
    .local v1, "a":I
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 6335
    instance-of v9, v8, Lcom/squareup/javapoet/TypeSpec;

    if-eqz v9, :cond_2

    .line 6336
    check-cast v8, Lcom/squareup/javapoet/TypeSpec;

    .line 6337
    const/4 v9, 0x0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v10

    invoke-virtual {v8, p0, v9, v10}, Lcom/squareup/javapoet/TypeSpec;->a(Ljhp;Ljava/lang/String;Ljava/util/Set;)V

    move v0, v1

    .line 6338
    .end local v1    # "a":I
    .restart local v0    # "a":I
    goto/16 :goto_0

    .end local v0    # "a":I
    .restart local v1    # "a":I
    :cond_2
    instance-of v9, v8, Ljhl;

    if-eqz v9, :cond_3

    .line 6339
    check-cast v8, Ljhl;

    .line 6340
    const/4 v9, 0x1

    invoke-virtual {v8, p0, v9}, Ljhl;->a(Ljhp;Z)V

    move v0, v1

    .line 6341
    .end local v1    # "a":I
    .restart local v0    # "a":I
    goto/16 :goto_0

    .end local v0    # "a":I
    .restart local v1    # "a":I
    :cond_3
    instance-of v9, v8, Ljho;

    if-eqz v9, :cond_4

    .line 6342
    check-cast v8, Ljho;

    .line 6343
    invoke-virtual {p0, v8}, Ljhp;->b(Ljho;)Ljhp;

    move v0, v1

    .line 6344
    .end local v1    # "a":I
    .restart local v0    # "a":I
    goto/16 :goto_0

    .line 6345
    .end local v0    # "a":I
    .restart local v1    # "a":I
    :cond_4
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    move v0, v1

    .line 222
    .end local v1    # "a":I
    .restart local v0    # "a":I
    goto/16 :goto_0

    .line 225
    :pswitch_1
    iget-object v8, p1, Ljho;->b:Ljava/util/List;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "a":I
    .restart local v1    # "a":I
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p0, v8}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    move v0, v1

    .line 226
    .end local v1    # "a":I
    .restart local v0    # "a":I
    goto/16 :goto_0

    .line 229
    :pswitch_2
    iget-object v8, p1, Ljho;->b:Ljava/util/List;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "a":I
    .restart local v1    # "a":I
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 231
    .local v6, "string":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 232
    iget-object v8, p0, Ljhp;->i:Ljava/lang/String;

    invoke-static {v6, v8}, Ljhx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 231
    :goto_3
    invoke-virtual {p0, v8}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    move v0, v1

    .line 234
    .end local v1    # "a":I
    .restart local v0    # "a":I
    goto/16 :goto_0

    .line 233
    .end local v0    # "a":I
    .restart local v1    # "a":I
    :cond_5
    const-string/jumbo v8, "null"

    goto :goto_3

    .line 237
    .end local v1    # "a":I
    .end local v6    # "string":Ljava/lang/String;
    .restart local v0    # "a":I
    :pswitch_3
    iget-object v8, p1, Ljho;->b:Ljava/util/List;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "a":I
    .restart local v1    # "a":I
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljhv;

    .line 7131
    .local v7, "typeName":Ljhv;
    iget-object v8, v7, Ljhv;->n:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    const/4 v8, 0x1

    .line 238
    :goto_4
    if-eqz v8, :cond_6

    .line 239
    invoke-virtual {v7, p0}, Ljhv;->b(Ljhp;)Ljhp;

    .line 240
    invoke-virtual {v7}, Ljhv;->a()Ljhv;

    move-result-object v7

    .line 243
    :cond_6
    instance-of v8, v7, Ljhn;

    if-eqz v8, :cond_9

    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 244
    iget-object v8, p1, Ljho;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/ListIterator;->nextIndex()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string/jumbo v9, "$"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    move-object v2, v7

    .line 245
    check-cast v2, Ljhn;

    .line 246
    .local v2, "candidate":Ljhn;
    iget-object v8, p0, Ljhp;->m:Ljava/util/Set;

    iget-object v9, v2, Ljhn;->c:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 247
    if-nez v3, :cond_8

    const/4 v8, 0x1

    :goto_5
    const-string/jumbo v9, "pending type for static import?!"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Ljhx;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 248
    move-object v3, v2

    move v0, v1

    .line 249
    .end local v1    # "a":I
    .restart local v0    # "a":I
    goto/16 :goto_0

    .line 7131
    .end local v0    # "a":I
    .end local v2    # "candidate":Ljhn;
    .restart local v1    # "a":I
    :cond_7
    const/4 v8, 0x0

    goto :goto_4

    .line 247
    .restart local v2    # "candidate":Ljhn;
    :cond_8
    const/4 v8, 0x0

    goto :goto_5

    .line 253
    .end local v2    # "candidate":Ljhn;
    :cond_9
    invoke-virtual {v7, p0}, Ljhv;->a(Ljhp;)Ljhp;

    move v0, v1

    .line 254
    .end local v1    # "a":I
    .restart local v0    # "a":I
    goto/16 :goto_0

    .line 257
    .end local v7    # "typeName":Ljhv;
    :pswitch_4
    const-string/jumbo v8, "$"

    invoke-virtual {p0, v8}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    goto/16 :goto_0

    .line 8094
    :pswitch_5
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Ljhp;->a(I)Ljhp;

    goto/16 :goto_0

    .line 8103
    :pswitch_6
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Ljhp;->b(I)Ljhp;

    goto/16 :goto_0

    .line 269
    :pswitch_7
    iget v8, p0, Ljhp;->g:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_a

    const/4 v8, 0x1

    :goto_6
    const-string/jumbo v9, "statement enter $[ followed by statement enter $["

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Ljhx;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 270
    const/4 v8, 0x0

    iput v8, p0, Ljhp;->g:I

    goto/16 :goto_0

    .line 269
    :cond_a
    const/4 v8, 0x0

    goto :goto_6

    .line 274
    :pswitch_8
    iget v8, p0, Ljhp;->g:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_c

    const/4 v8, 0x1

    :goto_7
    const-string/jumbo v9, "statement exit $] has no matching statement enter $["

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Ljhx;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 275
    iget v8, p0, Ljhp;->g:I

    if-lez v8, :cond_b

    .line 276
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Ljhp;->b(I)Ljhp;

    .line 278
    :cond_b
    const/4 v8, -0x1

    iput v8, p0, Ljhp;->g:I

    goto/16 :goto_0

    .line 274
    :cond_c
    const/4 v8, 0x0

    goto :goto_7

    .line 282
    :pswitch_9
    iget-object v8, p0, Ljhp;->j:Ljhr;

    iget v9, p0, Ljhp;->k:I

    add-int/lit8 v9, v9, 0x2

    invoke-virtual {v8, v9}, Ljhr;->a(I)V

    goto/16 :goto_0

    .line 8331
    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 295
    :cond_e
    invoke-virtual {v3, p0}, Ljhn;->a(Ljhp;)Ljhp;

    .line 296
    const/4 v3, 0x0

    .line 298
    :cond_f
    invoke-virtual {p0, v4}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    goto/16 :goto_0

    .line 302
    .end local v4    # "part":Ljava/lang/String;
    :cond_10
    return-object p0

    .line 219
    nop

    :sswitch_data_0
    .sparse-switch
        0x480 -> :sswitch_4
        0x498 -> :sswitch_6
        0x49a -> :sswitch_5
        0x4a8 -> :sswitch_0
        0x4aa -> :sswitch_1
        0x4af -> :sswitch_2
        0x4b0 -> :sswitch_3
        0x4b3 -> :sswitch_9
        0x4b7 -> :sswitch_7
        0x4b9 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
