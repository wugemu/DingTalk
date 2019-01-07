.class public Lcom/alibaba/alimei/sqlite/SQLiteColumn;
.super Ljava/lang/Object;
.source "SQLiteColumn.java"


# instance fields
.field private autoincrement:Z

.field private columnName:Ljava/lang/String;

.field private columnType:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

.field private defaultValue:Ljava/lang/Object;

.field private nullable:Z

.field private primaryKey:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/alimei/sqlite/SQLiteDataType;)V
    .locals 7
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "columnType"    # Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    .prologue
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/sqlite/SQLiteDataType;ZZLjava/lang/Object;Z)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/alimei/sqlite/SQLiteDataType;ZZLjava/lang/Object;Z)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "columnType"    # Lcom/alibaba/alimei/sqlite/SQLiteDataType;
    .param p3, "primaryKey"    # Z
    .param p4, "nullable"    # Z
    .param p5, "defaultValue"    # Ljava/lang/Object;
    .param p6, "autoincrement"    # Z

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->columnName:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->columnType:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    .line 30
    iput-boolean p3, p0, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->primaryKey:Z

    .line 31
    iput-boolean p4, p0, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->nullable:Z

    .line 32
    iput-object p5, p0, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->defaultValue:Ljava/lang/Object;

    .line 33
    iput-boolean p6, p0, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->autoincrement:Z

    .line 34
    return-void
.end method


# virtual methods
.method public getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public getColumnType()Lcom/alibaba/alimei/sqlite/SQLiteDataType;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->columnType:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->defaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method public isAutoincrement()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->autoincrement:Z

    return v0
.end method

.method public isNullable()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->nullable:Z

    return v0
.end method

.method public isPrimaryKey()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->primaryKey:Z

    return v0
.end method

.method public setAutoIncrement(Z)V
    .locals 0
    .param p1, "autoincrement"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->autoincrement:Z

    .line 74
    return-void
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->defaultValue:Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public setNullable(Z)V
    .locals 0
    .param p1, "nullable"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->nullable:Z

    .line 58
    return-void
.end method

.method public setPrimaryKey(Z)V
    .locals 0
    .param p1, "primaryKey"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->primaryKey:Z

    .line 50
    return-void
.end method
