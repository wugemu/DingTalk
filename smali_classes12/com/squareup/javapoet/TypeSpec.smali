.class public final Lcom/squareup/javapoet/TypeSpec;
.super Ljava/lang/Object;
.source "TypeSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/javapoet/TypeSpec$Kind;
    }
.end annotation


# static fields
.field static final synthetic q:Z


# instance fields
.field public final a:Lcom/squareup/javapoet/TypeSpec$Kind;

.field public final b:Ljava/lang/String;

.field public final c:Ljho;

.field public final d:Ljho;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljhl;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/Modifier;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljhw;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljhv;

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

.field public final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/squareup/javapoet/TypeSpec;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljhq;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljho;

.field public final m:Ljho;

.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljhs;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/javapoet/TypeSpec;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/lang/model/element/Element;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/squareup/javapoet/TypeSpec;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/squareup/javapoet/TypeSpec;->q:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/squareup/javapoet/TypeSpec;)V
    .locals 2
    .param p1, "type"    # Lcom/squareup/javapoet/TypeSpec;

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iget-object v0, p1, Lcom/squareup/javapoet/TypeSpec;->a:Lcom/squareup/javapoet/TypeSpec$Kind;

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec;->a:Lcom/squareup/javapoet/TypeSpec$Kind;

    .line 92
    iget-object v0, p1, Lcom/squareup/javapoet/TypeSpec;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec;->b:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/squareup/javapoet/TypeSpec;->c:Ljho;

    .line 94
    iget-object v0, p1, Lcom/squareup/javapoet/TypeSpec;->d:Ljho;

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec;->d:Ljho;

    .line 95
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec;->e:Ljava/util/List;

    .line 96
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec;->f:Ljava/util/Set;

    .line 97
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec;->g:Ljava/util/List;

    .line 98
    iput-object v1, p0, Lcom/squareup/javapoet/TypeSpec;->h:Ljhv;

    .line 99
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec;->i:Ljava/util/List;

    .line 100
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec;->j:Ljava/util/Map;

    .line 101
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec;->k:Ljava/util/List;

    .line 102
    iget-object v0, p1, Lcom/squareup/javapoet/TypeSpec;->l:Ljho;

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec;->l:Ljho;

    .line 103
    iget-object v0, p1, Lcom/squareup/javapoet/TypeSpec;->m:Ljho;

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec;->m:Ljho;

    .line 104
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec;->n:Ljava/util/List;

    .line 105
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec;->o:Ljava/util/List;

    .line 106
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec;->p:Ljava/util/List;

    .line 107
    return-void
.end method


# virtual methods
.method public final a(Ljhp;Ljava/lang/String;Ljava/util/Set;)V
    .locals 18
    .param p1, "codeWriter"    # Ljhp;
    .param p2, "enumName"    # Ljava/lang/String;
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

    .prologue
    .line 176
    .local p3, "implicitModifiers":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/Modifier;>;"
    move-object/from16 v0, p1

    iget v10, v0, Ljhp;->g:I

    .line 177
    .local v10, "previousStatementLine":I
    const/4 v13, -0x1

    move-object/from16 v0, p1

    iput v13, v0, Ljhp;->g:I

    .line 180
    if-eqz p2, :cond_3

    .line 181
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/squareup/javapoet/TypeSpec;->d:Ljho;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljhp;->a(Ljho;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/squareup/javapoet/TypeSpec;->e:Ljava/util/List;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljhp;->a(Ljava/util/List;Z)V

    .line 183
    const-string/jumbo v13, "$L"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p2, v14, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljhp;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljhp;

    .line 184
    const/4 v13, 0x0

    iget-object v13, v13, Ljho;->a:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    .line 185
    const-string/jumbo v13, "("

    .line 1206
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    .line 186
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljhp;->b(Ljho;)Ljhp;

    .line 187
    const-string/jumbo v13, ")"

    .line 2206
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    .line 189
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/squareup/javapoet/TypeSpec;->k:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/squareup/javapoet/TypeSpec;->n:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/squareup/javapoet/TypeSpec;->o:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    if-eqz v13, :cond_1

    .line 328
    move-object/from16 v0, p1

    iput v10, v0, Ljhp;->g:I

    .line 329
    :goto_0
    return-void

    .line 192
    :cond_1
    :try_start_1
    const-string/jumbo v13, " {\n"

    .line 3206
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    .line 249
    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljhp;->a(Lcom/squareup/javapoet/TypeSpec;)Ljhp;

    .line 9094
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljhp;->a(I)Ljhp;

    .line 251
    const/4 v5, 0x1

    .line 252
    .local v5, "firstMember":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/squareup/javapoet/TypeSpec;->j:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 253
    .local v7, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/squareup/javapoet/TypeSpec;>;>;"
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 254
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 255
    .local v2, "enumConstant":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/squareup/javapoet/TypeSpec;>;"
    if-nez v5, :cond_2

    const-string/jumbo v13, "\n"

    .line 9206
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    .line 256
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/squareup/javapoet/TypeSpec;

    .line 257
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14, v15}, Lcom/squareup/javapoet/TypeSpec;->a(Ljhp;Ljava/lang/String;Ljava/util/Set;)V

    .line 258
    const/4 v5, 0x0

    .line 259
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 260
    const-string/jumbo v13, ",\n"

    .line 10206
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljhp;->b(Ljava/lang/String;)Ljhp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 328
    .end local v2    # "enumConstant":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/squareup/javapoet/TypeSpec;>;"
    .end local v5    # "firstMember":Z
    .end local v7    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/squareup/javapoet/TypeSpec;>;>;"
    :catchall_0
    move-exception v13

    move-object/from16 v0, p1

    iput v10, v0, Ljhp;->g:I

    throw v13

    .line 200
    :cond_3
    :try_start_2
    new-instance v13, Lcom/squareup/javapoet/TypeSpec;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/squareup/javapoet/TypeSpec;-><init>(Lcom/squareup/javapoet/TypeSpec;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljhp;->a(Lcom/squareup/javapoet/TypeSpec;)Ljhp;

    .line 202
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/squareup/javapoet/TypeSpec;->d:Ljho;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljhp;->a(Ljho;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/squareup/javapoet/TypeSpec;->e:Ljava/util/List;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljhp;->a(Ljava/util/List;Z)V

    .line 204
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/squareup/javapoet/TypeSpec;->f:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/squareup/javapoet/TypeSpec;->a:Lcom/squareup/javapoet/TypeSpec$Kind;

    invoke-static {v14}, Lcom/squareup/javapoet/TypeSpec$Kind;->access$1700(Lcom/squareup/javapoet/TypeSpec$Kind;)Ljava/util/Set;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-static {v0, v14}, Ljhx;->a(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljhp;->a(Ljava/util/Set;Ljava/util/Set;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/squareup/javapoet/TypeSpec;->a:Lcom/squareup/javapoet/TypeSpec$Kind;

    sget-object v14, Lcom/squareup/javapoet/TypeSpec$Kind;->ANNOTATION:Lcom/squareup/javapoet/TypeSpec$Kind;

    if-ne v13, v14, :cond_5

    .line 206
    const-string/jumbo v13, "$L $L"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string/jumbo v16, "@interface"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/javapoet/TypeSpec;->b:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljhp;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljhp;

    .line 210
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/squareup/javapoet/TypeSpec;->g:Ljava/util/List;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljhp;->a(Ljava/util/List;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/squareup/javapoet/TypeSpec;->a:Lcom/squareup/javapoet/TypeSpec$Kind;

    sget-object v14, Lcom/squareup/javapoet/TypeSpec$Kind;->INTERFACE:Lcom/squareup/javapoet/TypeSpec$Kind;

    if-ne v13, v14, :cond_6

    .line 215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/javapoet/TypeSpec;->i:Ljava/util/List;

    .line 216
    .local v3, "extendsTypes":Ljava/util/List;, "Ljava/util/List<Ljhv;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 224
    .local v8, "implementsTypes":Ljava/util/List;, "Ljava/util/List<Ljhv;>;"
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_8

    .line 225
    const-string/jumbo v13, " extends"

    .line 4206
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    .line 226
    const/4 v6, 0x1

    .line 227
    .local v6, "firstType":Z
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljhv;

    .line 228
    .local v11, "type":Ljhv;
    if-nez v6, :cond_4

    const-string/jumbo v14, ","

    .line 5206
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    .line 229
    :cond_4
    const-string/jumbo v14, " $T"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v11, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljhp;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljhp;

    .line 230
    const/4 v6, 0x0

    .line 231
    goto :goto_5

    .line 208
    .end local v3    # "extendsTypes":Ljava/util/List;, "Ljava/util/List<Ljhv;>;"
    .end local v6    # "firstType":Z
    .end local v8    # "implementsTypes":Ljava/util/List;, "Ljava/util/List<Ljhv;>;"
    .end local v11    # "type":Ljhv;
    :cond_5
    const-string/jumbo v13, "$L $L"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/javapoet/TypeSpec;->a:Lcom/squareup/javapoet/TypeSpec$Kind;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/squareup/javapoet/TypeSpec$Kind;->name()Ljava/lang/String;

    move-result-object v16

    sget-object v17, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/javapoet/TypeSpec;->b:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljhp;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljhp;

    goto :goto_3

    .line 218
    :cond_6
    const/4 v13, 0x0

    sget-object v14, Ljhn;->a:Ljhn;

    invoke-virtual {v13, v14}, Ljhv;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 219
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 221
    .restart local v3    # "extendsTypes":Ljava/util/List;, "Ljava/util/List<Ljhv;>;"
    :goto_6
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/squareup/javapoet/TypeSpec;->i:Ljava/util/List;

    .restart local v8    # "implementsTypes":Ljava/util/List;, "Ljava/util/List<Ljhv;>;"
    goto :goto_4

    .line 220
    .end local v3    # "extendsTypes":Ljava/util/List;, "Ljava/util/List<Ljhv;>;"
    .end local v8    # "implementsTypes":Ljava/util/List;, "Ljava/util/List<Ljhv;>;"
    :cond_7
    const/4 v13, 0x0

    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_6

    .line 234
    .restart local v3    # "extendsTypes":Ljava/util/List;, "Ljava/util/List<Ljhv;>;"
    .restart local v8    # "implementsTypes":Ljava/util/List;, "Ljava/util/List<Ljhv;>;"
    :cond_8
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_a

    .line 235
    const-string/jumbo v13, " implements"

    .line 6206
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    .line 236
    const/4 v6, 0x1

    .line 237
    .restart local v6    # "firstType":Z
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljhv;

    .line 238
    .restart local v11    # "type":Ljhv;
    if-nez v6, :cond_9

    const-string/jumbo v14, ","

    .line 7206
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    .line 239
    :cond_9
    const-string/jumbo v14, " $T"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v11, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljhp;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljhp;

    .line 240
    const/4 v6, 0x0

    .line 241
    goto :goto_7

    .line 244
    .end local v6    # "firstType":Z
    .end local v11    # "type":Ljhv;
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljhp;->a()Ljhp;

    .line 246
    const-string/jumbo v13, " {\n"

    .line 8206
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    goto/16 :goto_1

    .line 261
    .end local v3    # "extendsTypes":Ljava/util/List;, "Ljava/util/List<Ljhv;>;"
    .end local v8    # "implementsTypes":Ljava/util/List;, "Ljava/util/List<Ljhv;>;"
    .restart local v2    # "enumConstant":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/squareup/javapoet/TypeSpec;>;"
    .restart local v5    # "firstMember":Z
    .restart local v7    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/squareup/javapoet/TypeSpec;>;>;"
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/squareup/javapoet/TypeSpec;->k:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/squareup/javapoet/TypeSpec;->n:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/squareup/javapoet/TypeSpec;->o:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_d

    .line 262
    :cond_c
    const-string/jumbo v13, ";\n"

    .line 11206
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    goto/16 :goto_2

    .line 264
    :cond_d
    const-string/jumbo v13, "\n"

    .line 12206
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    goto/16 :goto_2

    .line 269
    .end local v2    # "enumConstant":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/squareup/javapoet/TypeSpec;>;"
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/squareup/javapoet/TypeSpec;->k:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_f
    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljhq;

    .line 270
    .local v4, "fieldSpec":Ljhq;
    sget-object v14, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-virtual {v4, v14}, Ljhq;->a(Ljavax/lang/model/element/Modifier;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 271
    if-nez v5, :cond_10

    const-string/jumbo v14, "\n"

    .line 13206
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    .line 272
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/squareup/javapoet/TypeSpec;->a:Lcom/squareup/javapoet/TypeSpec$Kind;

    invoke-static {v14}, Lcom/squareup/javapoet/TypeSpec$Kind;->access$1800(Lcom/squareup/javapoet/TypeSpec$Kind;)Ljava/util/Set;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v14}, Ljhq;->a(Ljhp;Ljava/util/Set;)V

    .line 273
    const/4 v5, 0x0

    .line 274
    goto :goto_8

    .line 276
    .end local v4    # "fieldSpec":Ljhq;
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/squareup/javapoet/TypeSpec;->l:Ljho;

    invoke-virtual {v13}, Ljho;->a()Z

    move-result v13

    if-nez v13, :cond_13

    .line 277
    if-nez v5, :cond_12

    const-string/jumbo v13, "\n"

    .line 14206
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    .line 278
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/squareup/javapoet/TypeSpec;->l:Ljho;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljhp;->b(Ljho;)Ljhp;

    .line 279
    const/4 v5, 0x0

    .line 283
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/squareup/javapoet/TypeSpec;->k:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_14
    :goto_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_16

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljhq;

    .line 284
    .restart local v4    # "fieldSpec":Ljhq;
    sget-object v14, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-virtual {v4, v14}, Ljhq;->a(Ljavax/lang/model/element/Modifier;)Z

    move-result v14

    if-nez v14, :cond_14

    .line 285
    if-nez v5, :cond_15

    const-string/jumbo v14, "\n"

    .line 15206
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    .line 286
    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/squareup/javapoet/TypeSpec;->a:Lcom/squareup/javapoet/TypeSpec$Kind;

    invoke-static {v14}, Lcom/squareup/javapoet/TypeSpec$Kind;->access$1800(Lcom/squareup/javapoet/TypeSpec$Kind;)Ljava/util/Set;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v14}, Ljhq;->a(Ljhp;Ljava/util/Set;)V

    .line 287
    const/4 v5, 0x0

    .line 288
    goto :goto_9

    .line 291
    .end local v4    # "fieldSpec":Ljhq;
    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/squareup/javapoet/TypeSpec;->m:Ljho;

    invoke-virtual {v13}, Ljho;->a()Z

    move-result v13

    if-nez v13, :cond_18

    .line 292
    if-nez v5, :cond_17

    const-string/jumbo v13, "\n"

    .line 16206
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    .line 293
    :cond_17
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/squareup/javapoet/TypeSpec;->m:Ljho;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljhp;->b(Ljho;)Ljhp;

    .line 294
    const/4 v5, 0x0

    .line 298
    :cond_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/squareup/javapoet/TypeSpec;->n:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_19
    :goto_a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljhs;

    .line 299
    .local v9, "methodSpec":Ljhs;
    invoke-virtual {v9}, Ljhs;->a()Z

    move-result v14

    if-eqz v14, :cond_19

    .line 300
    if-nez v5, :cond_1a

    const-string/jumbo v14, "\n"

    .line 17206
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    .line 301
    :cond_1a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/squareup/javapoet/TypeSpec;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/squareup/javapoet/TypeSpec;->a:Lcom/squareup/javapoet/TypeSpec$Kind;

    invoke-static {v15}, Lcom/squareup/javapoet/TypeSpec$Kind;->access$1900(Lcom/squareup/javapoet/TypeSpec$Kind;)Ljava/util/Set;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v14, v15}, Ljhs;->a(Ljhp;Ljava/lang/String;Ljava/util/Set;)V

    .line 302
    const/4 v5, 0x0

    .line 303
    goto :goto_a

    .line 306
    .end local v9    # "methodSpec":Ljhs;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/squareup/javapoet/TypeSpec;->n:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1c
    :goto_b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljhs;

    .line 307
    .restart local v9    # "methodSpec":Ljhs;
    invoke-virtual {v9}, Ljhs;->a()Z

    move-result v14

    if-nez v14, :cond_1c

    .line 308
    if-nez v5, :cond_1d

    const-string/jumbo v14, "\n"

    .line 18206
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    .line 309
    :cond_1d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/squareup/javapoet/TypeSpec;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/squareup/javapoet/TypeSpec;->a:Lcom/squareup/javapoet/TypeSpec$Kind;

    invoke-static {v15}, Lcom/squareup/javapoet/TypeSpec$Kind;->access$1900(Lcom/squareup/javapoet/TypeSpec$Kind;)Ljava/util/Set;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v14, v15}, Ljhs;->a(Ljhp;Ljava/lang/String;Ljava/util/Set;)V

    .line 310
    const/4 v5, 0x0

    .line 311
    goto :goto_b

    .line 314
    .end local v9    # "methodSpec":Ljhs;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/squareup/javapoet/TypeSpec;->o:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_20

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/squareup/javapoet/TypeSpec;

    .line 315
    .local v12, "typeSpec":Lcom/squareup/javapoet/TypeSpec;
    if-nez v5, :cond_1f

    const-string/jumbo v14, "\n"

    .line 19206
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    .line 316
    :cond_1f
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/squareup/javapoet/TypeSpec;->a:Lcom/squareup/javapoet/TypeSpec$Kind;

    invoke-static {v15}, Lcom/squareup/javapoet/TypeSpec$Kind;->access$2000(Lcom/squareup/javapoet/TypeSpec$Kind;)Ljava/util/Set;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v14, v15}, Lcom/squareup/javapoet/TypeSpec;->a(Ljhp;Ljava/lang/String;Ljava/util/Set;)V

    .line 317
    const/4 v5, 0x0

    .line 318
    goto :goto_c

    .line 20103
    .end local v12    # "typeSpec":Lcom/squareup/javapoet/TypeSpec;
    :cond_20
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljhp;->b(I)Ljhp;

    .line 321
    invoke-virtual/range {p1 .. p1}, Ljhp;->a()Ljhp;

    .line 323
    const-string/jumbo v13, "}"

    .line 20206
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    .line 324
    if-nez p2, :cond_21

    .line 325
    const-string/jumbo v13, "\n"

    .line 21206
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljhp;->b(Ljava/lang/String;)Ljhp;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 328
    :cond_21
    move-object/from16 v0, p1

    iput v10, v0, Ljhp;->g:I

    goto/16 :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 333
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    .line 336
    :cond_0
    :goto_0
    return v0

    .line 334
    :cond_1
    if-eqz p1, :cond_0

    .line 335
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/squareup/javapoet/TypeSpec;->toString()Ljava/lang/String;

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
    .line 340
    invoke-virtual {p0}, Lcom/squareup/javapoet/TypeSpec;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 344
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 346
    .local v1, "out":Ljava/io/StringWriter;
    :try_start_0
    new-instance v0, Ljhp;

    invoke-direct {v0, v1}, Ljhp;-><init>(Ljava/lang/Appendable;)V

    .line 347
    .local v0, "codeWriter":Ljhp;
    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/squareup/javapoet/TypeSpec;->a(Ljhp;Ljava/lang/String;Ljava/util/Set;)V

    .line 348
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 350
    .end local v0    # "codeWriter":Ljhp;
    :catch_0
    move-exception v2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method
