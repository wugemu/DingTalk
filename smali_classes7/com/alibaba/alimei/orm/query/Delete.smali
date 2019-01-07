.class public Lcom/alibaba/alimei/orm/query/Delete;
.super Lcom/alibaba/alimei/orm/internal/o;
.source "Delete.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/orm/internal/o",
        "<",
        "Lcom/alibaba/alimei/orm/query/Delete;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
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
    .line 13
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/TableEntry;>;"
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/orm/internal/o;-><init>(Ljava/lang/Class;)V

    .line 14
    invoke-virtual {p0, p0}, Lcom/alibaba/alimei/orm/query/Delete;->setWhereBase(Ljava/lang/Object;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
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
    .line 18
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/TableEntry;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/alimei/orm/internal/o;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, p0}, Lcom/alibaba/alimei/orm/query/Delete;->setWhereBase(Ljava/lang/Object;)V

    .line 20
    return-void
.end method


# virtual methods
.method public bridge synthetic bracket()V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0}, Lcom/alibaba/alimei/orm/internal/o;->bracket()V

    return-void
.end method

.method public execute()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-virtual {p0}, Lcom/alibaba/alimei/orm/query/Delete;->getDatabase()Lcom/alibaba/alimei/orm/IDatabase;

    move-result-object v0

    .line 35
    .local v0, "database":Lcom/alibaba/alimei/orm/IDatabase;
    if-nez v0, :cond_0

    .line 38
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/orm/query/Delete;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/orm/query/Delete;->getWhereSQL(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/alimei/orm/query/Delete;->getWhereArguments()[Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v1, v3}, Lcom/alibaba/alimei/orm/IDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic getDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/alibaba/alimei/orm/internal/o;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTableClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/alibaba/alimei/orm/internal/o;->getTableClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/alibaba/alimei/orm/internal/o;->getTableName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resetDelete()V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/alibaba/alimei/orm/query/Delete;->resetWhere()V

    .line 27
    return-void
.end method

.method public toSql()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DELETE FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/alibaba/alimei/orm/query/Delete;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/orm/query/Delete;->getWhereSQL(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
