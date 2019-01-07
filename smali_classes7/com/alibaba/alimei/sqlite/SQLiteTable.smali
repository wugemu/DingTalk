.class public Lcom/alibaba/alimei/sqlite/SQLiteTable;
.super Ljava/lang/Object;
.source "SQLiteTable.java"


# instance fields
.field private columns:[Lcom/alibaba/alimei/sqlite/SQLiteColumn;

.field private mColumnsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sqlite/SQLiteColumn;",
            ">;"
        }
    .end annotation
.end field

.field private tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteTable;->mColumnsList:Ljava/util/List;

    .line 23
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sqlite/SQLiteTable;->setTableName(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sqlite/SQLiteColumn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "columns":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sqlite/SQLiteColumn;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sqlite/SQLiteTable;->setTableName(Ljava/lang/String;)V

    .line 28
    iput-object p2, p0, Lcom/alibaba/alimei/sqlite/SQLiteTable;->mColumnsList:Ljava/util/List;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lcom/alibaba/alimei/sqlite/SQLiteColumn;)V
    .locals 2
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columns"    # [Lcom/alibaba/alimei/sqlite/SQLiteColumn;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string/jumbo v0, "String tableName cannot be null"

    invoke-static {p1, v0}, Lcom/alibaba/alimei/orm/util/Validator;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    const-string/jumbo v0, "Columns can not be null"

    invoke-static {p2, v0}, Lcom/alibaba/alimei/orm/util/Validator;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Must include at least one column"

    invoke-static {v0, v1}, Lcom/alibaba/alimei/orm/util/Validator;->isTrue(ZLjava/lang/String;)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sqlite/SQLiteTable;->setTableName(Ljava/lang/String;)V

    .line 37
    iput-object p2, p0, Lcom/alibaba/alimei/sqlite/SQLiteTable;->columns:[Lcom/alibaba/alimei/sqlite/SQLiteColumn;

    .line 38
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addSQLiteColumn(Lcom/alibaba/alimei/sqlite/SQLiteColumn;)V
    .locals 1
    .param p1, "column"    # Lcom/alibaba/alimei/sqlite/SQLiteColumn;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteTable;->mColumnsList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteTable;->mColumnsList:Ljava/util/List;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteTable;->mColumnsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public getColumns()[Lcom/alibaba/alimei/sqlite/SQLiteColumn;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteTable;->columns:[Lcom/alibaba/alimei/sqlite/SQLiteColumn;

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteTable;->mColumnsList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteTable;->mColumnsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteTable;->mColumnsList:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/alimei/sqlite/SQLiteTable;->mColumnsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/alibaba/alimei/sqlite/SQLiteColumn;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/alimei/sqlite/SQLiteColumn;

    iput-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteTable;->columns:[Lcom/alibaba/alimei/sqlite/SQLiteColumn;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteTable;->columns:[Lcom/alibaba/alimei/sqlite/SQLiteColumn;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteTable;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method setTableName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteTable;->tableName:Ljava/lang/String;

    .line 42
    return-void
.end method
