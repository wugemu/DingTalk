.class public Lcom/alibaba/alimei/orm/query/Update;
.super Lcom/alibaba/alimei/orm/internal/o;
.source "Update.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/orm/internal/o",
        "<",
        "Lcom/alibaba/alimei/orm/query/Update;",
        ">;"
    }
.end annotation


# instance fields
.field private contextValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/TableEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/TableEntry;>;"
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/orm/internal/o;-><init>(Ljava/lang/Class;)V

    .line 19
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/orm/query/Update;->contextValues:Landroid/content/ContentValues;

    .line 29
    invoke-virtual {p0, p0}, Lcom/alibaba/alimei/orm/query/Update;->setWhereBase(Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "databaseName"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/TableEntry;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/TableEntry;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/alimei/orm/internal/o;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/orm/query/Update;->contextValues:Landroid/content/ContentValues;

    .line 24
    invoke-virtual {p0, p0}, Lcom/alibaba/alimei/orm/query/Update;->setWhereBase(Ljava/lang/Object;)V

    .line 25
    return-void
.end method


# virtual methods
.method public addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 38
    if-nez p2, :cond_1

    const/4 v0, 0x0

    .line 39
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-class v1, Ljava/lang/Byte;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/orm/query/Update;->contextValues:Landroid/content/ContentValues;

    check-cast p2, Ljava/lang/Byte;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 60
    :goto_1
    return-void

    .line 38
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 41
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const-class v1, Ljava/lang/Short;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 42
    :cond_3
    iget-object v1, p0, Lcom/alibaba/alimei/orm/query/Update;->contextValues:Landroid/content/ContentValues;

    check-cast p2, Ljava/lang/Short;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    goto :goto_1

    .line 43
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 44
    :cond_5
    iget-object v1, p0, Lcom/alibaba/alimei/orm/query/Update;->contextValues:Landroid/content/ContentValues;

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 45
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    const-class v1, Ljava/lang/Long;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 46
    :cond_7
    iget-object v1, p0, Lcom/alibaba/alimei/orm/query/Update;->contextValues:Landroid/content/ContentValues;

    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 47
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_8
    const-class v1, Ljava/lang/Float;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 48
    :cond_9
    iget-object v1, p0, Lcom/alibaba/alimei/orm/query/Update;->contextValues:Landroid/content/ContentValues;

    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_1

    .line 49
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_a
    const-class v1, Ljava/lang/Double;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 50
    :cond_b
    iget-object v1, p0, Lcom/alibaba/alimei/orm/query/Update;->contextValues:Landroid/content/ContentValues;

    check-cast p2, Ljava/lang/Double;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto/16 :goto_1

    .line 51
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_c
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 52
    :cond_d
    iget-object v1, p0, Lcom/alibaba/alimei/orm/query/Update;->contextValues:Landroid/content/ContentValues;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    .line 53
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_e
    const-class v1, [B

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 54
    iget-object v1, p0, Lcom/alibaba/alimei/orm/query/Update;->contextValues:Landroid/content/ContentValues;

    check-cast p2, [B

    .end local p2    # "value":Ljava/lang/Object;
    check-cast p2, [B

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_1

    .line 55
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_f
    if-nez p2, :cond_10

    .line 56
    iget-object v1, p0, Lcom/alibaba/alimei/orm/query/Update;->contextValues:Landroid/content/ContentValues;

    const-string/jumbo v2, ""

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 58
    :cond_10
    iget-object v1, p0, Lcom/alibaba/alimei/orm/query/Update;->contextValues:Landroid/content/ContentValues;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public bridge synthetic bracket()V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0}, Lcom/alibaba/alimei/orm/internal/o;->bracket()V

    return-void
.end method

.method public execute()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 75
    iget-object v2, p0, Lcom/alibaba/alimei/orm/query/Update;->contextValues:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 76
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "\u6267\u884c\u4e4b\u524d\u8bf7\u5148\u901a\u8fc7addUpdateColumn\u51fd\u6570\u6dfb\u52a0\u8981\u4fee\u6539\u7684\u5217"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/orm/query/Update;->getDatabase()Lcom/alibaba/alimei/orm/IDatabase;

    move-result-object v0

    .line 79
    .local v0, "database":Lcom/alibaba/alimei/orm/IDatabase;
    if-nez v0, :cond_1

    .line 82
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/orm/query/Update;->getTableName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/orm/query/Update;->contextValues:Landroid/content/ContentValues;

    .line 83
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/orm/query/Update;->getWhereSQL(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/alimei/orm/query/Update;->getWhereArguments()[Ljava/lang/String;

    move-result-object v4

    .line 82
    invoke-interface {v0, v2, v3, v1, v4}, Lcom/alibaba/alimei/orm/IDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic getDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/alibaba/alimei/orm/internal/o;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTableClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/alibaba/alimei/orm/internal/o;->getTableClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/alibaba/alimei/orm/internal/o;->getTableName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resetUpdate()V
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/alibaba/alimei/orm/query/Update;->resetWhere()V

    .line 67
    iget-object v0, p0, Lcom/alibaba/alimei/orm/query/Update;->contextValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 68
    return-void
.end method

.method public toSql()Ljava/lang/String;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v4, "sql":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "UPDATE "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p0}, Lcom/alibaba/alimei/orm/query/Update;->getTableName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string/jumbo v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string/jumbo v6, " SET "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, "i":I
    iget-object v6, p0, Lcom/alibaba/alimei/orm/query/Update;->contextValues:Landroid/content/ContentValues;

    invoke-virtual {v6}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 96
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 97
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 98
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 99
    .local v3, "name":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 101
    .local v5, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 102
    const-string/jumbo v6, " , "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    add-int/lit8 v1, v1, 0x1

    .line 106
    goto :goto_0

    .line 108
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/orm/query/Update;->getWhereSQL(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
