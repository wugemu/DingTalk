.class public abstract Lcom/j256/ormlite/dao/BaseForeignCollection;
.super Ljava/lang/Object;
.source "BaseForeignCollection.java"

# interfaces
.implements Lcom/j256/ormlite/dao/ForeignCollection;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/j256/ormlite/dao/ForeignCollection",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4797e276d525d695L


# instance fields
.field protected final transient dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;TID;>;"
        }
    .end annotation
.end field

.field private final transient foreignFieldType:Lcom/j256/ormlite/field/FieldType;

.field private final transient orderAscending:Z

.field private final transient orderColumn:Ljava/lang/String;

.field private final transient parent:Ljava/lang/Object;

.field private final transient parentId:Ljava/lang/Object;

.field private transient preparedQuery:Lcom/j256/ormlite/stmt/PreparedQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/PreparedQuery",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/j256/ormlite/dao/Dao;Ljava/lang/Object;Ljava/lang/Object;Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "parent"    # Ljava/lang/Object;
    .param p3, "parentId"    # Ljava/lang/Object;
    .param p4, "foreignFieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p5, "orderColumn"    # Ljava/lang/String;
    .param p6, "orderAscending"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;TID;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/j256/ormlite/field/FieldType;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/j256/ormlite/dao/BaseForeignCollection;, "Lcom/j256/ormlite/dao/BaseForeignCollection<TT;TID;>;"
    .local p1, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;TID;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 41
    iput-object p4, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->foreignFieldType:Lcom/j256/ormlite/field/FieldType;

    .line 42
    iput-object p3, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->parentId:Ljava/lang/Object;

    .line 43
    iput-object p5, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->orderColumn:Ljava/lang/String;

    .line 44
    iput-boolean p6, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->orderAscending:Z

    .line 45
    iput-object p2, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->parent:Ljava/lang/Object;

    .line 46
    return-void
.end method

.method private addElement(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
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
    .local p0, "this":Lcom/j256/ormlite/dao/BaseForeignCollection;, "Lcom/j256/ormlite/dao/BaseForeignCollection<TT;TID;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    .line 195
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    if-nez v1, :cond_0

    .line 196
    const/4 v0, 0x0

    .line 202
    :goto_0
    return v0

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->parent:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->foreignFieldType:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v1, p1}, Lcom/j256/ormlite/field/FieldType;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->foreignFieldType:Lcom/j256/ormlite/field/FieldType;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->parent:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/j256/ormlite/field/FieldType;->a(Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, p1}, Lcom/j256/ormlite/dao/Dao;->a(Ljava/lang/Object;)I

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    .local p0, "this":Lcom/j256/ormlite/dao/BaseForeignCollection;, "Lcom/j256/ormlite/dao/BaseForeignCollection<TT;TID;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-direct {p0, p1}, Lcom/j256/ormlite/dao/BaseForeignCollection;->addElement(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Could not create data element in dao"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    .local p0, "this":Lcom/j256/ormlite/dao/BaseForeignCollection;, "Lcom/j256/ormlite/dao/BaseForeignCollection<TT;TID;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    const/4 v0, 0x0

    .line 70
    .local v0, "changed":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 72
    .local v1, "data":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-direct {p0, v1}, Lcom/j256/ormlite/dao/BaseForeignCollection;->addElement(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    const/4 v0, 0x1

    goto :goto_0

    .line 75
    :catch_0
    move-exception v2

    .line 76
    .local v2, "e":Ljava/sql/SQLException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Could not create data elements in dao"

    invoke-direct {v4, v5, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 79
    .end local v1    # "data":Ljava/lang/Object;, "TT;"
    .end local v2    # "e":Ljava/sql/SQLException;
    :cond_1
    return v0
.end method

.method public clear()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 136
    .local p0, "this":Lcom/j256/ormlite/dao/BaseForeignCollection;, "Lcom/j256/ormlite/dao/BaseForeignCollection<TT;TID;>;"
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    if-nez v1, :cond_0

    .line 147
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseForeignCollection;->closeableIterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    .line 141
    .local v0, "iterator":Lcom/j256/ormlite/dao/CloseableIterator;, "Lcom/j256/ormlite/dao/CloseableIterator<TT;>;"
    :goto_1
    :try_start_0
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->next()Ljava/lang/Object;

    .line 143
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 146
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/j256/ormlite/misc/IOUtils;->a(Ljava/io/Closeable;)V

    throw v1

    :cond_1
    invoke-static {v0}, Lcom/j256/ormlite/misc/IOUtils;->a(Ljava/io/Closeable;)V

    goto :goto_0
.end method

.method public getDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;*>;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "this":Lcom/j256/ormlite/dao/BaseForeignCollection;, "Lcom/j256/ormlite/dao/BaseForeignCollection<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method protected getPreparedQuery()Lcom/j256/ormlite/stmt/PreparedQuery;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/PreparedQuery",
            "<TT;>;"
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
    .line 174
    .local p0, "this":Lcom/j256/ormlite/dao/BaseForeignCollection;, "Lcom/j256/ormlite/dao/BaseForeignCollection<TT;TID;>;"
    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    if-nez v3, :cond_0

    .line 175
    const/4 v3, 0x0

    .line 191
    :goto_0
    return-object v3

    .line 177
    :cond_0
    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->preparedQuery:Lcom/j256/ormlite/stmt/PreparedQuery;

    if-nez v3, :cond_2

    .line 178
    new-instance v0, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {v0}, Lcom/j256/ormlite/stmt/SelectArg;-><init>()V

    .line 179
    .local v0, "fieldArg":Lcom/j256/ormlite/stmt/SelectArg;
    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->parentId:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/j256/ormlite/stmt/SelectArg;->a(Ljava/lang/Object;)V

    .line 180
    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->a()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    .line 181
    .local v2, "qb":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->orderColumn:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 182
    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->orderColumn:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->orderAscending:Z

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->a(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 184
    :cond_1
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->f()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    iget-object v4, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->foreignFieldType:Lcom/j256/ormlite/field/FieldType;

    .line 1455
    iget-object v4, v4, Lcom/j256/ormlite/field/FieldType;->b:Ljava/lang/String;

    .line 184
    invoke-virtual {v3, v4, v0}, Lcom/j256/ormlite/stmt/Where;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->b()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v3

    iput-object v3, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->preparedQuery:Lcom/j256/ormlite/stmt/PreparedQuery;

    .line 185
    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->preparedQuery:Lcom/j256/ormlite/stmt/PreparedQuery;

    instance-of v3, v3, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;

    if-eqz v3, :cond_2

    .line 187
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->preparedQuery:Lcom/j256/ormlite/stmt/PreparedQuery;

    check-cast v1, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;

    .line 188
    .local v1, "mappedStmt":Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;, "Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt<TT;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->parent:Ljava/lang/Object;

    iget-object v4, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->parentId:Ljava/lang/Object;

    .line 2105
    iput-object v3, v1, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->b:Ljava/lang/Object;

    .line 2106
    iput-object v4, v1, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->c:Ljava/lang/Object;

    .line 191
    .end local v0    # "fieldArg":Lcom/j256/ormlite/stmt/SelectArg;
    .end local v1    # "mappedStmt":Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;, "Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt<TT;Ljava/lang/Object;>;"
    .end local v2    # "qb":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    :cond_2
    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->preparedQuery:Lcom/j256/ormlite/stmt/PreparedQuery;

    goto :goto_0
.end method

.method public refresh(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "this":Lcom/j256/ormlite/dao/BaseForeignCollection;, "Lcom/j256/ormlite/dao/BaseForeignCollection<TT;TID;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x0

    .line 164
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->d(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public abstract remove(Ljava/lang/Object;)Z
.end method

.method public abstract removeAll(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 110
    .local p0, "this":Lcom/j256/ormlite/dao/BaseForeignCollection;, "Lcom/j256/ormlite/dao/BaseForeignCollection<TT;TID;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    if-nez v3, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 125
    :goto_0
    return v0

    .line 113
    :cond_0
    const/4 v0, 0x0

    .line 114
    .local v0, "changed":Z
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseForeignCollection;->closeableIterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v2

    .line 116
    .local v2, "iterator":Lcom/j256/ormlite/dao/CloseableIterator;, "Lcom/j256/ormlite/dao/CloseableIterator<TT;>;"
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v2}, Lcom/j256/ormlite/dao/CloseableIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 117
    invoke-interface {v2}, Lcom/j256/ormlite/dao/CloseableIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 118
    .local v1, "data":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 119
    invoke-interface {v2}, Lcom/j256/ormlite/dao/CloseableIterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    const/4 v0, 0x1

    goto :goto_1

    .line 125
    .end local v1    # "data":Ljava/lang/Object;, "TT;"
    :cond_2
    invoke-static {v2}, Lcom/j256/ormlite/misc/IOUtils;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v2}, Lcom/j256/ormlite/misc/IOUtils;->a(Ljava/io/Closeable;)V

    throw v3
.end method

.method public update(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lcom/j256/ormlite/dao/BaseForeignCollection;, "Lcom/j256/ormlite/dao/BaseForeignCollection<TT;TID;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 153
    const/4 v0, 0x0

    .line 155
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->c(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method
