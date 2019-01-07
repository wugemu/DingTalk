.class public Lcom/j256/ormlite/stmt/UpdateBuilder;
.super Lcom/j256/ormlite/stmt/StatementBuilder;
.source "UpdateBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/j256/ormlite/stmt/StatementBuilder",
        "<TT;TID;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/stmt/query/Clause;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/dao/Dao;)V
    .locals 1
    .param p1, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;TID;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/j256/ormlite/stmt/UpdateBuilder;, "Lcom/j256/ormlite/stmt/UpdateBuilder<TT;TID;>;"
    .local p2, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    .local p3, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;TID;>;"
    sget-object v0, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->UPDATE:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/j256/ormlite/stmt/StatementBuilder;-><init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/UpdateBuilder;->a:Ljava/util/List;

    .line 32
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 116
    .local p0, "this":Lcom/j256/ormlite/stmt/UpdateBuilder;, "Lcom/j256/ormlite/stmt/UpdateBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/UpdateBuilder;->e:Lcom/j256/ormlite/dao/Dao;

    .line 2039
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-super {p0, v1, v2}, Lcom/j256/ormlite/stmt/StatementBuilder;->a(Ljava/lang/Long;Z)Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;

    move-result-object v1

    .line 116
    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->a(Lcom/j256/ormlite/stmt/PreparedUpdate;)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/UpdateBuilder;
    .locals 4
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/j256/ormlite/stmt/UpdateBuilder",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 47
    .local p0, "this":Lcom/j256/ormlite/stmt/UpdateBuilder;, "Lcom/j256/ormlite/stmt/UpdateBuilder<TT;TID;>;"
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/stmt/UpdateBuilder;->a(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    .line 48
    .local v0, "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v0}, Lcom/j256/ormlite/field/FieldType;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    new-instance v1, Ljava/sql/SQLException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Can\'t update foreign colletion field: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_0
    new-instance v1, Lcom/j256/ormlite/stmt/query/SetValue;

    invoke-direct {v1, p1, v0, p2}, Lcom/j256/ormlite/stmt/query/SetValue;-><init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)V

    .line 1150
    iget-object v2, p0, Lcom/j256/ormlite/stmt/UpdateBuilder;->a:Ljava/util/List;

    if-nez v2, :cond_1

    .line 1151
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/j256/ormlite/stmt/UpdateBuilder;->a:Ljava/util/List;

    .line 1153
    :cond_1
    iget-object v2, p0, Lcom/j256/ormlite/stmt/UpdateBuilder;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    return-object p0
.end method

.method protected final a(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 127
    .local p0, "this":Lcom/j256/ormlite/stmt/UpdateBuilder;, "Lcom/j256/ormlite/stmt/UpdateBuilder<TT;TID;>;"
    .local p2, "argList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/stmt/ArgumentHolder;>;"
    iget-object v3, p0, Lcom/j256/ormlite/stmt/UpdateBuilder;->a:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/j256/ormlite/stmt/UpdateBuilder;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "UPDATE statements must have at least one SET column"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 130
    :cond_1
    const-string/jumbo v3, "UPDATE "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-object v3, p0, Lcom/j256/ormlite/stmt/UpdateBuilder;->d:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v4, p0, Lcom/j256/ormlite/stmt/UpdateBuilder;->b:Lcom/j256/ormlite/table/TableInfo;

    .line 2121
    iget-object v4, v4, Lcom/j256/ormlite/table/TableInfo;->b:Ljava/lang/String;

    .line 131
    invoke-interface {v3, p1, v4}, Lcom/j256/ormlite/db/DatabaseType;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 132
    const-string/jumbo v3, " SET "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const/4 v1, 0x1

    .line 134
    .local v1, "first":Z
    iget-object v3, p0, Lcom/j256/ormlite/stmt/UpdateBuilder;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/stmt/query/Clause;

    .line 135
    .local v0, "clause":Lcom/j256/ormlite/stmt/query/Clause;
    if-eqz v1, :cond_2

    .line 136
    const/4 v1, 0x0

    .line 140
    :goto_1
    iget-object v3, p0, Lcom/j256/ormlite/stmt/UpdateBuilder;->d:Lcom/j256/ormlite/db/DatabaseType;

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4, p1, p2}, Lcom/j256/ormlite/stmt/query/Clause;->a(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)V

    goto :goto_0

    .line 138
    :cond_2
    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 142
    .end local v0    # "clause":Lcom/j256/ormlite/stmt/query/Clause;
    :cond_3
    return-void
.end method

.method protected final b(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 0
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lcom/j256/ormlite/stmt/UpdateBuilder;, "Lcom/j256/ormlite/stmt/UpdateBuilder<TT;TID;>;"
    .local p2, "argList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/stmt/ArgumentHolder;>;"
    return-void
.end method
