.class public final Ljhn;
.super Ljhv;
.source "ClassName.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljhv;",
        "Ljava/lang/Comparable",
        "<",
        "Ljhn;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljhn;


# instance fields
.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Ljhn;->a(Ljava/lang/Class;)Ljhn;

    move-result-object v0

    sput-object v0, Ljhn;->a:Ljhn;

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Ljhn;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 44
    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljhl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "annotations":Ljava/util/List;, "Ljava/util/List<Ljhl;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 47
    invoke-direct {p0, p2}, Ljhv;-><init>(Ljava/util/List;)V

    .line 48
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 49
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Ljavax/lang/model/SourceVersion;->isName(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string/jumbo v2, "part \'%s\' is keyword"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljhx;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    invoke-static {p1}, Ljhx;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ljhn;->b:Ljava/util/List;

    .line 52
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    const-string/jumbo v1, "."

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1, v6, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Ljhx;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 54
    :goto_1
    const-string/jumbo v2, ".$"

    const-string/jumbo v3, "$"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljhn;->c:Ljava/lang/String;

    .line 55
    return-void

    .line 54
    :cond_1
    const-string/jumbo v1, "."

    invoke-static {v1, p1}, Ljhx;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/Class;)Ljhn;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljhn;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v11, 0x2e

    const/4 v10, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 138
    const-string/jumbo v5, "clazz == null"

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {p0, v5, v8}, Ljhx;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v6

    :goto_0
    const-string/jumbo v8, "primitive types cannot be represented as a ClassName"

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v5, v8, v9}, Ljhx;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 140
    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v6

    :goto_1
    const-string/jumbo v8, "\'void\' type cannot be represented as a ClassName"

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v5, v8, v9}, Ljhx;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 141
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-nez v5, :cond_3

    :goto_2
    const-string/jumbo v5, "array types cannot be represented as a ClassName"

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v6, v5, v8}, Ljhx;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 142
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v4, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 145
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 146
    .local v3, "lastDot":I
    if-eq v3, v10, :cond_0

    .line 147
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "anonClassName":Ljava/lang/String;
    const/16 v5, 0x24

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 149
    .local v2, "lastDollar":I
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    .end local v0    # "anonClassName":Ljava/lang/String;
    .end local v2    # "lastDollar":I
    .end local v3    # "lastDot":I
    :cond_0
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    .line 155
    .local v1, "enclosing":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_5

    .line 156
    move-object p0, v1

    .line 157
    goto :goto_3

    .end local v1    # "enclosing":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    move v5, v7

    .line 139
    goto :goto_0

    :cond_2
    move v5, v7

    .line 140
    goto :goto_1

    :cond_3
    move v6, v7

    .line 141
    goto :goto_2

    .line 152
    .restart local v4    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 159
    .restart local v1    # "enclosing":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 160
    .restart local v3    # "lastDot":I
    if-eq v3, v10, :cond_6

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_6
    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 162
    new-instance v5, Ljhn;

    invoke-direct {v5, v4}, Ljhn;-><init>(Ljava/util/List;)V

    return-object v5
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljhn;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "simpleName"    # Ljava/lang/String;
    .param p2, "simpleNames"    # [Ljava/lang/String;

    .prologue
    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-static {v0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 204
    new-instance v1, Ljhn;

    invoke-direct {v1, v0}, Ljhn;-><init>(Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljhn;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 110
    const-string/jumbo v1, "name == null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Ljhx;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ljhn;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Ljhn;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 113
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v1, Ljhn;

    invoke-direct {v1, v0}, Ljhn;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method final a(Ljhp;)Ljhp;
    .locals 9
    .param p1, "out"    # Ljhp;
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

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 237
    move-object v7, p0

    move v0, v2

    .line 1358
    :goto_0
    if-eqz v7, :cond_9

    .line 1359
    invoke-virtual {v7}, Ljhn;->e()Ljava/lang/String;

    move-result-object v8

    .line 1407
    iget-object v0, p1, Ljhp;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    :goto_1
    if-ltz v6, :cond_3

    .line 1408
    iget-object v0, p1, Ljhp;->c:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/javapoet/TypeSpec;

    .line 1409
    iget-object v0, v0, Lcom/squareup/javapoet/TypeSpec;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/javapoet/TypeSpec;

    .line 1410
    iget-object v0, v0, Lcom/squareup/javapoet/TypeSpec;->b:Ljava/lang/String;

    invoke-static {v0, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1431
    iget-object v3, p1, Ljhp;->b:Ljava/lang/String;

    iget-object v0, p1, Ljhp;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/javapoet/TypeSpec;

    iget-object v0, v0, Lcom/squareup/javapoet/TypeSpec;->b:Ljava/lang/String;

    new-array v5, v2, [Ljava/lang/String;

    invoke-static {v3, v0, v5}, Ljhn;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljhn;

    move-result-object v0

    move v3, v1

    move-object v5, v0

    .line 1432
    :goto_2
    if-gt v3, v6, :cond_1

    .line 1433
    iget-object v0, p1, Ljhp;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/javapoet/TypeSpec;

    iget-object v0, v0, Lcom/squareup/javapoet/TypeSpec;->b:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljhn;->a(Ljava/lang/String;)Ljhn;

    move-result-object v5

    .line 1432
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 1435
    :cond_1
    invoke-virtual {v5, v8}, Ljhn;->a(Ljava/lang/String;)Ljhn;

    move-result-object v0

    move-object v3, v0

    .line 1360
    :goto_3
    if-eqz v3, :cond_6

    move v0, v1

    .line 1362
    :goto_4
    invoke-static {v3, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1363
    invoke-virtual {v7}, Ljhn;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1364
    const-string/jumbo v1, "."

    invoke-virtual {p0}, Ljhn;->d()Ljava/util/List;

    move-result-object v2

    .line 1365
    invoke-virtual {p0}, Ljhn;->d()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 1364
    invoke-interface {v2, v0, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Ljhx;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 237
    :goto_5
    invoke-virtual {p1, v0}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    move-result-object v0

    return-object v0

    .line 1407
    :cond_2
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto/16 :goto_1

    .line 1417
    :cond_3
    iget-object v0, p1, Ljhp;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p1, Ljhp;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/javapoet/TypeSpec;

    iget-object v0, v0, Lcom/squareup/javapoet/TypeSpec;->b:Ljava/lang/String;

    invoke-static {v0, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1418
    iget-object v0, p1, Ljhp;->b:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v0, v8, v3}, Ljhn;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljhn;

    move-result-object v0

    move-object v3, v0

    goto :goto_3

    .line 1422
    :cond_4
    iget-object v0, p1, Ljhp;->d:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljhn;

    .line 1423
    if-eqz v0, :cond_5

    move-object v3, v0

    goto :goto_3

    :cond_5
    move-object v3, v4

    .line 1426
    goto :goto_3

    :cond_6
    move v0, v2

    .line 1360
    goto :goto_4

    .line 2075
    :cond_7
    iget-object v3, v7, Ljhn;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_8

    move-object v3, v4

    :goto_6
    move-object v7, v3

    .line 1358
    goto/16 :goto_0

    .line 2076
    :cond_8
    new-instance v3, Ljhn;

    iget-object v5, v7, Ljhn;->b:Ljava/util/List;

    iget-object v6, v7, Ljhn;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v2, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v5}, Ljhn;-><init>(Ljava/util/List;)V

    goto :goto_6

    .line 1370
    :cond_9
    if-nez v0, :cond_b

    .line 1375
    iget-object v0, p1, Ljhp;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljhn;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1376
    iget-object v0, p1, Ljhp;->f:Ljava/util/Set;

    invoke-virtual {p0}, Ljhn;->c()Ljhn;

    move-result-object v1

    invoke-virtual {v1}, Ljhn;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1377
    const-string/jumbo v0, "."

    invoke-virtual {p0}, Ljhn;->d()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Ljhx;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 1381
    :cond_a
    iget-boolean v0, p1, Ljhp;->a:Z

    if-nez v0, :cond_b

    .line 2389
    invoke-virtual {p0}, Ljhn;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2392
    invoke-virtual {p0}, Ljhn;->c()Ljhn;

    move-result-object v0

    .line 2393
    invoke-virtual {v0}, Ljhn;->e()Ljava/lang/String;

    move-result-object v1

    .line 2394
    iget-object v2, p1, Ljhp;->e:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljhn;

    .line 2395
    if-eqz v0, :cond_b

    .line 2396
    iget-object v2, p1, Ljhp;->e:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1385
    :cond_b
    iget-object v0, p0, Ljhn;->c:Ljava/lang/String;

    goto/16 :goto_5
.end method

.method public final a()Ljhv;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 62
    new-instance v0, Ljhn;

    iget-object v1, p0, Ljhn;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljhn;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 67
    iget-object v0, p0, Ljhn;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljhn;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 84
    new-instance v0, Ljhn;

    iget-object v1, p0, Ljhn;->b:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljhn;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 35
    check-cast p1, Ljhn;

    .line 3233
    iget-object v0, p0, Ljhn;->c:Ljava/lang/String;

    iget-object v1, p1, Ljhn;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 35
    return v0
.end method

.method public final d()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 118
    iget-object v0, p0, Ljhn;->b:Ljava/util/List;

    const/4 v1, 0x1

    iget-object v2, p0, Ljhn;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 134
    iget-object v0, p0, Ljhn;->b:Ljava/util/List;

    iget-object v1, p0, Ljhn;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
