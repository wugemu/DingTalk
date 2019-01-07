.class public Lcom/alibaba/alimei/sqlite/SQLiteIndex;
.super Ljava/lang/Object;
.source "SQLiteIndex.java"


# instance fields
.field private columnNames:[Ljava/lang/String;

.field private isPrimaryKey:Z

.field private isUnique:Z

.field private name:Ljava/lang/String;

.field private tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "columnNames"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 18
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/sqlite/SQLiteIndex;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "columnNames"    # [Ljava/lang/String;
    .param p4, "isUnique"    # Z
    .param p5, "isPrimaryKey"    # Z

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/alibaba/alimei/sqlite/SQLiteIndex;->name:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/alibaba/alimei/sqlite/SQLiteIndex;->tableName:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/alibaba/alimei/sqlite/SQLiteIndex;->columnNames:[Ljava/lang/String;

    .line 25
    iput-boolean p4, p0, Lcom/alibaba/alimei/sqlite/SQLiteIndex;->isUnique:Z

    .line 26
    iput-boolean p5, p0, Lcom/alibaba/alimei/sqlite/SQLiteIndex;->isPrimaryKey:Z

    .line 27
    return-void
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteIndex;->columnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteIndex;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteIndex;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public isPrimaryKey()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteIndex;->isPrimaryKey:Z

    return v0
.end method

.method public isUnique()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteIndex;->isUnique:Z

    return v0
.end method
