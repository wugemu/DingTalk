.class public final Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;
.super Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;
.source "SQLiteStatement.java"


# direct methods
.method constructor <init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "db"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "bindArgs"    # [Ljava/lang/Object;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    return-void
.end method


# virtual methods
.method public final enableTrigger(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->acquireReference()V

    .line 182
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->getSession()Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->getConnectionFlags()I

    move-result v2

    invoke-virtual {v1, p1, v2, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->enableTrigger(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->releaseReference()V

    .line 188
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->onCorruption()V

    .line 185
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->releaseReference()V

    throw v1
.end method

.method public final execute()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->acquireReference()V

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->getSession()Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->getSql()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->getBindArgs()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->getConnectionFlags()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->execute(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->releaseReference()V

    .line 53
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->onCorruption()V

    .line 50
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->releaseReference()V

    throw v1
.end method

.method public final executeInsert()J
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->acquireReference()V

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->getSession()Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;

    move-result-object v1

    .line 90
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->getSql()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->getBindArgs()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->getConnectionFlags()I

    move-result v4

    const/4 v5, 0x0

    .line 89
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->executeForLastInsertedRowId(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/Object;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 95
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->releaseReference()V

    return-wide v2

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->onCorruption()V

    .line 93
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->releaseReference()V

    throw v1
.end method

.method public final executeUpdateDelete()I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->acquireReference()V

    .line 67
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->getSession()Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;

    move-result-object v1

    .line 68
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->getSql()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->getBindArgs()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->getConnectionFlags()I

    move-result v4

    const/4 v5, 0x0

    .line 67
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->executeForChangedRowCount(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/Object;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 73
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->releaseReference()V

    return v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->onCorruption()V

    .line 71
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->releaseReference()V

    throw v1
.end method

.method public final executeWithPrimaryConnectionLocked(Lcom/alibaba/sqlcrypto/sqlite/DatabaseTask;)I
    .locals 3
    .param p1, "databaseTask"    # Lcom/alibaba/sqlcrypto/sqlite/DatabaseTask;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->acquireReference()V

    .line 170
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->getSession()Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->getConnectionFlags()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->executeWithPrimaryConnectionLocked(ILcom/alibaba/sqlcrypto/sqlite/DatabaseTask;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 175
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->releaseReference()V

    return v1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->onCorruption()V

    .line 173
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->releaseReference()V

    throw v1
.end method

.method public final simpleQueryForBlobFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->acquireReference()V

    .line 152
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->getSession()Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;

    move-result-object v1

    .line 153
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->getSql()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->getBindArgs()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->getConnectionFlags()I

    move-result v4

    const/4 v5, 0x0

    .line 152
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->executeForBlobFileDescriptor(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/Object;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 158
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->releaseReference()V

    return-object v1

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->onCorruption()V

    .line 156
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->releaseReference()V

    throw v1
.end method

.method public final simpleQueryForLong()J
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->acquireReference()V

    .line 110
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->getSession()Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;

    move-result-object v1

    .line 111
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->getSql()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->getBindArgs()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->getConnectionFlags()I

    move-result v4

    const/4 v5, 0x0

    .line 110
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/Object;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 116
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->releaseReference()V

    return-wide v2

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->onCorruption()V

    .line 114
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->releaseReference()V

    throw v1
.end method

.method public final simpleQueryForString()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->acquireReference()V

    .line 131
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->getSession()Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;

    move-result-object v1

    .line 132
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->getSql()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->getBindArgs()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->getConnectionFlags()I

    move-result v4

    const/4 v5, 0x0

    .line 131
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->executeForString(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 137
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->releaseReference()V

    return-object v1

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->onCorruption()V

    .line 135
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->releaseReference()V

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SQLiteProgram: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
