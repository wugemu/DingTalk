.class public Lcom/alibaba/alimei/sqlite/SQLiteViewColumn;
.super Ljava/lang/Object;
.source "SQLiteViewColumn.java"


# instance fields
.field private columnAlias:Ljava/lang/String;

.field private columnName:Ljava/lang/String;

.field private tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0, v0}, Lcom/alibaba/alimei/sqlite/SQLiteViewColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "columnAlias"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/alibaba/alimei/sqlite/SQLiteViewColumn;->columnName:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/alibaba/alimei/sqlite/SQLiteViewColumn;->columnAlias:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/alibaba/alimei/sqlite/SQLiteViewColumn;->tableName:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getColumnAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteViewColumn;->columnAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteViewColumn;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteViewColumn;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public setColumnAlias(Ljava/lang/String;)V
    .locals 0
    .param p1, "columnAlias"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alibaba/alimei/sqlite/SQLiteViewColumn;->columnAlias:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setColumnName(Ljava/lang/String;)V
    .locals 0
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alibaba/alimei/sqlite/SQLiteViewColumn;->columnName:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alibaba/alimei/sqlite/SQLiteViewColumn;->tableName:Ljava/lang/String;

    .line 50
    return-void
.end method
