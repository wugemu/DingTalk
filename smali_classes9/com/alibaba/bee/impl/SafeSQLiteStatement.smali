.class public Lcom/alibaba/bee/impl/SafeSQLiteStatement;
.super Ljava/lang/Object;
.source "SafeSQLiteStatement.java"

# interfaces
.implements Lcom/alibaba/bee/SQLiteStatement;


# instance fields
.field private volatile mClosed:Z

.field private mDatabaseName:Ljava/lang/String;

.field private mSql:Ljava/lang/String;

.field private mStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

.field private mTableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "statement"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;
    .param p2, "dbName"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .param p4, "sql"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->mClosed:Z

    .line 17
    iput-object p1, p0, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->mStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    .line 18
    iput-object p2, p0, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->mDatabaseName:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->mTableName:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->mSql:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public varargs bindAllArgsAsStrings([Ljava/lang/String;)V
    .locals 2
    .param p1, "bindArgs"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 91
    if-eqz p1, :cond_0

    .line 92
    array-length v0, p1

    .local v0, "i":I
    :goto_0
    if-eqz v0, :cond_0

    .line 93
    add-int/lit8 v1, v0, -0x1

    aget-object v1, p1, v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 92
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 96
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public bindBlob(I[B)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # [B

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->mStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 82
    return-void
.end method

.method public bindDouble(ID)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # D

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->mStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 72
    return-void
.end method

.method public bindLong(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->mStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 67
    return-void
.end method

.method public bindNull(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->mStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->bindNull(I)V

    .line 62
    return-void
.end method

.method public bindString(ILjava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->mStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 77
    return-void
.end method

.method public clearBindings()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->mStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->clearBindings()V

    .line 87
    return-void
.end method

.method public close()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 101
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->mClosed:Z

    .line 102
    iget-object v1, p0, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->mStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public execute()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 24
    iget-object v1, p0, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->mSql:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/bee/DatabaseUtils;->getStatementType(Ljava/lang/String;)I

    move-result v0

    .line 25
    .local v0, "type":I
    iget-object v1, p0, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->mDatabaseName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->mTableName:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/alibaba/bee/impl/DBAdapter;->onBeforeProcess(Ljava/lang/String;Ljava/lang/String;I)V

    .line 26
    iget-object v1, p0, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->mStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->execute()V

    .line 27
    iget-object v1, p0, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->mDatabaseName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->mTableName:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/alibaba/bee/impl/DBAdapter;->onAfterProcess(Ljava/lang/String;Ljava/lang/String;I)V

    .line 28
    return-void
.end method

.method public executeInsert()J
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x2

    .line 31
    iget-object v2, p0, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->mDatabaseName:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->mTableName:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/alibaba/bee/impl/DBAdapter;->onBeforeProcess(Ljava/lang/String;Ljava/lang/String;I)V

    .line 32
    iget-object v2, p0, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->mStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    .line 33
    .local v0, "ret":J
    iget-object v2, p0, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->mDatabaseName:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->mTableName:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/alibaba/bee/impl/DBAdapter;->onAfterProcess(Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    return-wide v0
.end method

.method public executeUpdateDelete()J
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 38
    iget-object v3, p0, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->mSql:Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/bee/DatabaseUtils;->getStatementType(Ljava/lang/String;)I

    move-result v2

    .line 39
    .local v2, "type":I
    iget-object v3, p0, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->mDatabaseName:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->mTableName:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lcom/alibaba/bee/impl/DBAdapter;->onBeforeProcess(Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    iget-object v3, p0, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->mStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    invoke-virtual {v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v3

    int-to-long v0, v3

    .line 41
    .local v0, "ret":J
    iget-object v3, p0, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->mDatabaseName:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->mTableName:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lcom/alibaba/bee/impl/DBAdapter;->onAfterProcess(Ljava/lang/String;Ljava/lang/String;I)V

    .line 42
    return-wide v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->mClosed:Z

    return v0
.end method

.method public simpleQueryForLong()J
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 46
    iget-object v2, p0, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->mDatabaseName:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->mTableName:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/alibaba/bee/impl/DBAdapter;->onBeforeProcess(Ljava/lang/String;Ljava/lang/String;I)V

    .line 47
    iget-object v2, p0, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->mStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    .line 48
    .local v0, "ret":J
    iget-object v2, p0, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->mDatabaseName:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->mTableName:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/alibaba/bee/impl/DBAdapter;->onAfterProcess(Ljava/lang/String;Ljava/lang/String;I)V

    .line 49
    return-wide v0
.end method

.method public simpleQueryForString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 53
    iget-object v1, p0, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->mDatabaseName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->mTableName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/alibaba/bee/impl/DBAdapter;->onBeforeProcess(Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    iget-object v1, p0, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->mStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "ret":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->mDatabaseName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/bee/impl/SafeSQLiteStatement;->mTableName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/alibaba/bee/impl/DBAdapter;->onAfterProcess(Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    return-object v0
.end method
