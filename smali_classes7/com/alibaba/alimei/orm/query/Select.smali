.class public Lcom/alibaba/alimei/orm/query/Select;
.super Lcom/alibaba/alimei/orm/internal/o;
.source "Select.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/orm/internal/o",
        "<",
        "Lcom/alibaba/alimei/orm/query/Select;",
        ">;"
    }
.end annotation


# instance fields
.field private mColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupBy:Ljava/lang/String;

.field private mHaving:Ljava/lang/String;

.field private mLimit:Ljava/lang/String;

.field private mOffset:Ljava/lang/String;

.field private mOrderBy:Ljava/lang/String;

.field private final mViewClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/ViewEntry;",
            ">;"
        }
    .end annotation
.end field


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
    .line 52
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/TableEntry;>;"
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/orm/internal/o;-><init>(Ljava/lang/Class;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/orm/query/Select;->mColumns:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {p0, p0}, Lcom/alibaba/alimei/orm/query/Select;->setWhereBase(Ljava/lang/Object;)V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/orm/query/Select;->mViewClazz:Ljava/lang/Class;

    .line 55
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
    .line 42
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/TableEntry;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/alimei/orm/internal/o;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/orm/query/Select;->mColumns:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {p0, p0}, Lcom/alibaba/alimei/orm/query/Select;->setWhereBase(Ljava/lang/Object;)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/orm/query/Select;->mViewClazz:Ljava/lang/Class;

    .line 45
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "databaseName"    # Ljava/lang/String;
    .param p2, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/ViewEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/ViewEntry;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/alibaba/alimei/orm/internal/o;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/orm/query/Select;->mColumns:Ljava/util/ArrayList;

    .line 85
    invoke-virtual {p0, p0}, Lcom/alibaba/alimei/orm/query/Select;->setWhereBase(Ljava/lang/Object;)V

    .line 86
    iput-object p3, p0, Lcom/alibaba/alimei/orm/query/Select;->mViewClazz:Ljava/lang/Class;

    .line 87
    return-void
.end method

.method private addFrom(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sql"    # Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 203
    const-string/jumbo v0, " FROM "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {p0}, Lcom/alibaba/alimei/orm/query/Select;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    return-void
.end method

.method private addGroupBy(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sql"    # Ljava/lang/StringBuilder;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/alibaba/alimei/orm/query/Select;->mGroupBy:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 209
    const-string/jumbo v0, " GROUP BY "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget-object v0, p0, Lcom/alibaba/alimei/orm/query/Select;->mGroupBy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const-string/jumbo v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_0
    return-void
.end method

.method private addHaving(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sql"    # Ljava/lang/StringBuilder;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/alibaba/alimei/orm/query/Select;->mHaving:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 217
    const-string/jumbo v0, " HAVING "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    iget-object v0, p0, Lcom/alibaba/alimei/orm/query/Select;->mHaving:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const-string/jumbo v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_0
    return-void
.end method

.method private addLimit(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sql"    # Ljava/lang/StringBuilder;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/alibaba/alimei/orm/query/Select;->mLimit:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 233
    const-string/jumbo v0, " LIMIT "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    iget-object v0, p0, Lcom/alibaba/alimei/orm/query/Select;->mLimit:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-string/jumbo v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/orm/query/Select;->mOffset:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 238
    const-string/jumbo v0, " OFFSET "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    iget-object v0, p0, Lcom/alibaba/alimei/orm/query/Select;->mOffset:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const-string/jumbo v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    :cond_1
    return-void
.end method

.method private addOrderBy(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sql"    # Ljava/lang/StringBuilder;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/alibaba/alimei/orm/query/Select;->mOrderBy:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 225
    const-string/jumbo v0, " ORDER BY "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget-object v0, p0, Lcom/alibaba/alimei/orm/query/Select;->mOrderBy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    const-string/jumbo v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    :cond_0
    return-void
.end method

.method private countQuery(Ljava/lang/String;)I
    .locals 12
    .param p1, "limit"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v11, 0x0

    .line 397
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v1, " COUNT(*) "

    aput-object v1, v2, v11

    .line 398
    .local v2, "countName":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/alimei/orm/query/Select;->getDatabase()Lcom/alibaba/alimei/orm/IDatabase;

    move-result-object v0

    .line 399
    .local v0, "database":Lcom/alibaba/alimei/orm/IDatabase;
    if-nez v0, :cond_1

    move v10, v11

    .line 411
    :cond_0
    :goto_0
    return v10

    .line 402
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/orm/query/Select;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v11}, Lcom/alibaba/alimei/orm/query/Select;->getWhereSQL(Z)Ljava/lang/String;

    move-result-object v3

    .line 403
    invoke-virtual {p0}, Lcom/alibaba/alimei/orm/query/Select;->getWhereArguments()[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/alimei/orm/query/Select;->mGroupBy:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/alimei/orm/query/Select;->mHaving:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/alimei/orm/query/Select;->mOrderBy:Ljava/lang/String;

    move-object v8, p1

    .line 402
    invoke-interface/range {v0 .. v8}, Lcom/alibaba/alimei/orm/IDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 404
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 405
    .local v10, "result":I
    if-eqz v9, :cond_0

    .line 406
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 407
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 409
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private getSelectColumns()[Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 268
    iget-object v1, p0, Lcom/alibaba/alimei/orm/query/Select;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 269
    const/4 v0, 0x0

    .line 272
    :goto_0
    return-object v0

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/orm/query/Select;->mColumns:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alibaba/alimei/orm/query/Select;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 272
    .local v0, "columns":[Ljava/lang/String;
    goto :goto_0
.end method

.method public static newTableSelect(Ljava/lang/Class;)Lcom/alibaba/alimei/orm/query/Select;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/TableEntry;",
            ">;)",
            "Lcom/alibaba/alimei/orm/query/Select;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/TableEntry;>;"
    new-instance v0, Lcom/alibaba/alimei/orm/query/Select;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static newTableSelect(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;
    .locals 1
    .param p1, "databaseName"    # Ljava/lang/String;
    .param p2, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/TableEntry;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/alimei/orm/query/Select;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/TableEntry;>;"
    new-instance v0, Lcom/alibaba/alimei/orm/query/Select;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static newViewSelect(Ljava/lang/Class;)Lcom/alibaba/alimei/orm/query/Select;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/ViewEntry;",
            ">;)",
            "Lcom/alibaba/alimei/orm/query/Select;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/ViewEntry;>;"
    invoke-static {p0}, Lcom/alibaba/alimei/orm/internal/d;->d(Ljava/lang/Class;)Lcom/alibaba/alimei/orm/internal/ViewInfo;

    move-result-object v1

    .line 96
    .local v1, "viewInfo":Lcom/alibaba/alimei/orm/internal/ViewInfo;
    if-nez v1, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 100
    :goto_0
    return-object v0

    .line 99
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/orm/query/Select;

    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/internal/ViewInfo;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/internal/ViewInfo;->getViewName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, p0}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 100
    .local v0, "select":Lcom/alibaba/alimei/orm/query/Select;
    goto :goto_0
.end method

.method public static newViewSelect(Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;
    .locals 3
    .param p1, "databaseName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/ViewEntry;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/alimei/orm/query/Select;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/ViewEntry;>;"
    invoke-static {p0}, Lcom/alibaba/alimei/orm/internal/d;->d(Ljava/lang/Class;)Lcom/alibaba/alimei/orm/internal/ViewInfo;

    move-result-object v1

    .line 111
    .local v1, "viewInfo":Lcom/alibaba/alimei/orm/internal/ViewInfo;
    if-nez v1, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 115
    :goto_0
    return-object v0

    .line 114
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/orm/query/Select;

    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/internal/ViewInfo;->getViewName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2, p0}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 115
    .local v0, "select":Lcom/alibaba/alimei/orm/query/Select;
    goto :goto_0
.end method


# virtual methods
.method public addColumn(Ljava/lang/String;)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alibaba/alimei/orm/query/Select;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method public varargs addColumns([Ljava/lang/String;)V
    .locals 4
    .param p1, "columnNames"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 127
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 128
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 129
    .local v0, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/alimei/orm/query/Select;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public bridge synthetic bracket()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Lcom/alibaba/alimei/orm/internal/o;->bracket()V

    return-void
.end method

.method public count()I
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/orm/query/Select;->countQuery(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public execute()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alibaba/alimei/orm/SelectableEntry;",
            ">()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v11, 0x0

    .line 334
    invoke-virtual {p0}, Lcom/alibaba/alimei/orm/query/Select;->getTableName()Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, "tableName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/alimei/orm/query/Select;->getDatabaseName()Ljava/lang/String;

    move-result-object v10

    .line 336
    .local v10, "databaseName":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/alimei/orm/query/Select;->mViewClazz:Ljava/lang/Class;

    if-eqz v2, :cond_2

    .line 337
    iget-object v2, p0, Lcom/alibaba/alimei/orm/query/Select;->mViewClazz:Ljava/lang/Class;

    invoke-static {v2}, Lcom/alibaba/alimei/orm/internal/d;->d(Ljava/lang/Class;)Lcom/alibaba/alimei/orm/internal/ViewInfo;

    move-result-object v14

    .line 338
    .local v14, "viewInfo":Lcom/alibaba/alimei/orm/internal/ViewInfo;
    if-nez v14, :cond_1

    .line 384
    .end local v14    # "viewInfo":Lcom/alibaba/alimei/orm/internal/ViewInfo;
    :cond_0
    :goto_0
    return-object v11

    .line 341
    .restart local v14    # "viewInfo":Lcom/alibaba/alimei/orm/internal/ViewInfo;
    :cond_1
    invoke-virtual {v14}, Lcom/alibaba/alimei/orm/internal/ViewInfo;->getViewName()Ljava/lang/String;

    move-result-object v1

    .line 342
    if-nez v10, :cond_2

    .line 343
    invoke-virtual {v14}, Lcom/alibaba/alimei/orm/internal/ViewInfo;->getDatabaseName()Ljava/lang/String;

    move-result-object v10

    .line 347
    .end local v14    # "viewInfo":Lcom/alibaba/alimei/orm/internal/ViewInfo;
    :cond_2
    invoke-virtual {p0, v10}, Lcom/alibaba/alimei/orm/query/Select;->getDatabase(Ljava/lang/String;)Lcom/alibaba/alimei/orm/IDatabase;

    move-result-object v0

    .line 348
    .local v0, "database":Lcom/alibaba/alimei/orm/IDatabase;
    if-eqz v0, :cond_0

    .line 352
    iget-object v2, p0, Lcom/alibaba/alimei/orm/query/Select;->mOffset:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 353
    invoke-direct {p0}, Lcom/alibaba/alimei/orm/query/Select;->getSelectColumns()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/orm/query/Select;->getWhereSQL(Z)Ljava/lang/String;

    move-result-object v3

    .line 354
    invoke-virtual {p0}, Lcom/alibaba/alimei/orm/query/Select;->getWhereArguments()[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/alimei/orm/query/Select;->mGroupBy:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/alimei/orm/query/Select;->mHaving:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/alimei/orm/query/Select;->mOrderBy:Ljava/lang/String;

    iget-object v8, p0, Lcom/alibaba/alimei/orm/query/Select;->mLimit:Ljava/lang/String;

    .line 353
    invoke-interface/range {v0 .. v8}, Lcom/alibaba/alimei/orm/IDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 360
    .local v9, "cursor":Landroid/database/Cursor;
    :goto_1
    const/4 v11, 0x0

    .line 363
    .local v11, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    if-eqz v9, :cond_0

    .line 364
    new-instance v13, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v13, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 365
    .local v13, "indexCaches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/orm/internal/k;>;"
    :cond_3
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 367
    if-nez v11, :cond_4

    .line 368
    new-instance v11, Ljava/util/ArrayList;

    .end local v11    # "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .restart local v11    # "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_4
    iget-object v2, p0, Lcom/alibaba/alimei/orm/query/Select;->mViewClazz:Ljava/lang/Class;

    if-nez v2, :cond_6

    .line 374
    invoke-virtual {p0}, Lcom/alibaba/alimei/orm/query/Select;->getTableClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v9, v13}, Lcom/alibaba/alimei/orm/AlimeiOrm;->loadFromCursor(Ljava/lang/Class;Landroid/database/Cursor;Ljava/util/ArrayList;)Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v12

    .line 378
    .local v12, "entityObject":Lcom/alibaba/alimei/orm/SelectableEntry;, "TT;"
    :goto_3
    if-eqz v12, :cond_3

    .line 379
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 357
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v11    # "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .end local v12    # "entityObject":Lcom/alibaba/alimei/orm/SelectableEntry;, "TT;"
    .end local v13    # "indexCaches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/orm/internal/k;>;"
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/alimei/orm/query/Select;->toSql()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/alimei/orm/query/Select;->getWhereArguments()[Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alibaba/alimei/orm/IDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .restart local v9    # "cursor":Landroid/database/Cursor;
    goto :goto_1

    .line 376
    .restart local v11    # "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .restart local v13    # "indexCaches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/orm/internal/k;>;"
    :cond_6
    iget-object v2, p0, Lcom/alibaba/alimei/orm/query/Select;->mViewClazz:Ljava/lang/Class;

    invoke-static {v2, v9, v13}, Lcom/alibaba/alimei/orm/AlimeiOrm;->loadViewEntryFromCursor(Ljava/lang/Class;Landroid/database/Cursor;Ljava/util/ArrayList;)Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v12

    .restart local v12    # "entityObject":Lcom/alibaba/alimei/orm/SelectableEntry;, "TT;"
    goto :goto_3

    .line 382
    .end local v12    # "entityObject":Lcom/alibaba/alimei/orm/SelectableEntry;, "TT;"
    :cond_7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alibaba/alimei/orm/SelectableEntry;",
            ">()TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v11, 0x0

    .line 291
    invoke-virtual {p0}, Lcom/alibaba/alimei/orm/query/Select;->getTableName()Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, "tableName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/alimei/orm/query/Select;->getDatabaseName()Ljava/lang/String;

    move-result-object v10

    .line 293
    .local v10, "databaseName":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/alimei/orm/query/Select;->mViewClazz:Ljava/lang/Class;

    if-eqz v2, :cond_2

    .line 294
    iget-object v2, p0, Lcom/alibaba/alimei/orm/query/Select;->mViewClazz:Ljava/lang/Class;

    invoke-static {v2}, Lcom/alibaba/alimei/orm/internal/d;->d(Ljava/lang/Class;)Lcom/alibaba/alimei/orm/internal/ViewInfo;

    move-result-object v12

    .line 295
    .local v12, "viewInfo":Lcom/alibaba/alimei/orm/internal/ViewInfo;
    if-nez v12, :cond_1

    .line 324
    .end local v12    # "viewInfo":Lcom/alibaba/alimei/orm/internal/ViewInfo;
    :cond_0
    :goto_0
    return-object v11

    .line 298
    .restart local v12    # "viewInfo":Lcom/alibaba/alimei/orm/internal/ViewInfo;
    :cond_1
    invoke-virtual {v12}, Lcom/alibaba/alimei/orm/internal/ViewInfo;->getViewName()Ljava/lang/String;

    move-result-object v1

    .line 299
    if-nez v10, :cond_2

    .line 300
    invoke-virtual {v12}, Lcom/alibaba/alimei/orm/internal/ViewInfo;->getDatabaseName()Ljava/lang/String;

    move-result-object v10

    .line 304
    .end local v12    # "viewInfo":Lcom/alibaba/alimei/orm/internal/ViewInfo;
    :cond_2
    invoke-virtual {p0, v10}, Lcom/alibaba/alimei/orm/query/Select;->getDatabase(Ljava/lang/String;)Lcom/alibaba/alimei/orm/IDatabase;

    move-result-object v0

    .line 305
    .local v0, "database":Lcom/alibaba/alimei/orm/IDatabase;
    if-eqz v0, :cond_0

    .line 308
    invoke-direct {p0}, Lcom/alibaba/alimei/orm/query/Select;->getSelectColumns()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/orm/query/Select;->getWhereSQL(Z)Ljava/lang/String;

    move-result-object v3

    .line 309
    invoke-virtual {p0}, Lcom/alibaba/alimei/orm/query/Select;->getWhereArguments()[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/alimei/orm/query/Select;->mGroupBy:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/alimei/orm/query/Select;->mHaving:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/alimei/orm/query/Select;->mOrderBy:Ljava/lang/String;

    const-string/jumbo v8, "0, 1"

    .line 308
    invoke-interface/range {v0 .. v8}, Lcom/alibaba/alimei/orm/IDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 311
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 313
    .local v11, "entityObject":Lcom/alibaba/alimei/orm/SelectableEntry;, "TT;"
    if-eqz v9, :cond_0

    .line 314
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 316
    iget-object v2, p0, Lcom/alibaba/alimei/orm/query/Select;->mViewClazz:Ljava/lang/Class;

    if-nez v2, :cond_4

    .line 317
    invoke-virtual {p0}, Lcom/alibaba/alimei/orm/query/Select;->getTableClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v9}, Lcom/alibaba/alimei/orm/AlimeiOrm;->loadFromCursor(Ljava/lang/Class;Landroid/database/Cursor;)Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v11

    .line 322
    :cond_3
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 319
    :cond_4
    iget-object v2, p0, Lcom/alibaba/alimei/orm/query/Select;->mViewClazz:Ljava/lang/Class;

    invoke-static {v2, v9}, Lcom/alibaba/alimei/orm/AlimeiOrm;->loadViewEntryFromCursor(Ljava/lang/Class;Landroid/database/Cursor;)Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v11

    goto :goto_1
.end method

.method public bridge synthetic getDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/alibaba/alimei/orm/internal/o;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTableClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/alibaba/alimei/orm/internal/o;->getTableClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/alibaba/alimei/orm/internal/o;->getTableName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public groupBy(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;
    .locals 0
    .param p1, "groupBy"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/alibaba/alimei/orm/query/Select;->mGroupBy:Ljava/lang/String;

    .line 136
    return-object p0
.end method

.method public having(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;
    .locals 0
    .param p1, "having"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/alibaba/alimei/orm/query/Select;->mHaving:Ljava/lang/String;

    .line 141
    return-object p0
.end method

.method public isExist()Z
    .locals 1

    .prologue
    .line 281
    const-string/jumbo v0, "0, 1"

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/orm/query/Select;->countQuery(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public limit(I)Lcom/alibaba/alimei/orm/query/Select;
    .locals 1
    .param p1, "limit"    # I

    .prologue
    .line 150
    if-ltz p1, :cond_0

    .line 151
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/orm/query/Select;->limit(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    move-result-object p0

    .line 155
    .end local p0    # "this":Lcom/alibaba/alimei/orm/query/Select;
    :goto_0
    return-object p0

    .line 153
    .restart local p0    # "this":Lcom/alibaba/alimei/orm/query/Select;
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/orm/query/Select;->mLimit:Ljava/lang/String;

    goto :goto_0
.end method

.method public limit(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;
    .locals 0
    .param p1, "limit"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/alibaba/alimei/orm/query/Select;->mLimit:Ljava/lang/String;

    .line 160
    return-object p0
.end method

.method public offset(I)Lcom/alibaba/alimei/orm/query/Select;
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 164
    if-ltz p1, :cond_0

    .line 165
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/orm/query/Select;->offset(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    move-result-object p0

    .line 169
    .end local p0    # "this":Lcom/alibaba/alimei/orm/query/Select;
    :goto_0
    return-object p0

    .line 167
    .restart local p0    # "this":Lcom/alibaba/alimei/orm/query/Select;
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/orm/query/Select;->mOffset:Ljava/lang/String;

    goto :goto_0
.end method

.method public offset(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;
    .locals 0
    .param p1, "offset"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/alibaba/alimei/orm/query/Select;->mOffset:Ljava/lang/String;

    .line 174
    return-object p0
.end method

.method public orderBy(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;
    .locals 0
    .param p1, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/alibaba/alimei/orm/query/Select;->mOrderBy:Ljava/lang/String;

    .line 146
    return-object p0
.end method

.method public resetSelect()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 181
    iget-object v0, p0, Lcom/alibaba/alimei/orm/query/Select;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 182
    iput-object v1, p0, Lcom/alibaba/alimei/orm/query/Select;->mGroupBy:Ljava/lang/String;

    .line 183
    iput-object v1, p0, Lcom/alibaba/alimei/orm/query/Select;->mHaving:Ljava/lang/String;

    .line 184
    iput-object v1, p0, Lcom/alibaba/alimei/orm/query/Select;->mOrderBy:Ljava/lang/String;

    .line 185
    iput-object v1, p0, Lcom/alibaba/alimei/orm/query/Select;->mLimit:Ljava/lang/String;

    .line 186
    iput-object v1, p0, Lcom/alibaba/alimei/orm/query/Select;->mOffset:Ljava/lang/String;

    .line 187
    invoke-virtual {p0}, Lcom/alibaba/alimei/orm/query/Select;->resetWhere()V

    .line 188
    return-void
.end method

.method public resetSelectAndKeepColumns()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Lcom/alibaba/alimei/orm/query/Select;->mGroupBy:Ljava/lang/String;

    .line 195
    iput-object v0, p0, Lcom/alibaba/alimei/orm/query/Select;->mHaving:Ljava/lang/String;

    .line 196
    iput-object v0, p0, Lcom/alibaba/alimei/orm/query/Select;->mOrderBy:Ljava/lang/String;

    .line 197
    iput-object v0, p0, Lcom/alibaba/alimei/orm/query/Select;->mLimit:Ljava/lang/String;

    .line 198
    iput-object v0, p0, Lcom/alibaba/alimei/orm/query/Select;->mOffset:Ljava/lang/String;

    .line 199
    invoke-virtual {p0}, Lcom/alibaba/alimei/orm/query/Select;->resetWhere()V

    .line 200
    return-void
.end method

.method public toSql()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .local v0, "sql":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    iget-object v1, p0, Lcom/alibaba/alimei/orm/query/Select;->mColumns:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/alimei/orm/query/Select;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", "

    invoke-direct {p0}, Lcom/alibaba/alimei/orm/query/Select;->getSelectColumns()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    :goto_0
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/orm/query/Select;->addFrom(Ljava/lang/StringBuilder;)V

    .line 257
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/orm/query/Select;->getWhereSQL(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/orm/query/Select;->addGroupBy(Ljava/lang/StringBuilder;)V

    .line 259
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/orm/query/Select;->addHaving(Ljava/lang/StringBuilder;)V

    .line 260
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/orm/query/Select;->addOrderBy(Ljava/lang/StringBuilder;)V

    .line 261
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/orm/query/Select;->addLimit(Ljava/lang/StringBuilder;)V

    .line 263
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 253
    :cond_0
    const-string/jumbo v1, "* "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
