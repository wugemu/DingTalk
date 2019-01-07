.class public Lcom/j256/ormlite/misc/TransactionManager;
.super Ljava/lang/Object;
.source "TransactionManager.java"


# static fields
.field private static final a:Lcom/j256/ormlite/logger/Logger;

.field private static b:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/j256/ormlite/misc/TransactionManager;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->a(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/misc/TransactionManager;->a:Lcom/j256/ormlite/logger/Logger;

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/j256/ormlite/misc/TransactionManager;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method public static a(Lcom/j256/ormlite/support/DatabaseConnection;ZLcom/j256/ormlite/db/DatabaseType;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 9
    .param p0, "connection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p1, "saved"    # Z
    .param p2, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Z",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .local p3, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    const/4 v8, 0x1

    .line 205
    const/4 v2, 0x0

    .line 207
    .local v2, "restoreAutoCommit":Z
    const/4 v1, 0x0

    .line 208
    .local v1, "hasSavePoint":Z
    const/4 v4, 0x0

    .line 209
    .local v4, "savePoint":Ljava/sql/Savepoint;
    if-nez p1, :cond_0

    :try_start_0
    invoke-interface {p2}, Lcom/j256/ormlite/db/DatabaseType;->d()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 210
    :cond_0
    invoke-interface {p0}, Lcom/j256/ormlite/support/DatabaseConnection;->a()Z

    .line 211
    invoke-interface {p0}, Lcom/j256/ormlite/support/DatabaseConnection;->b()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 213
    const/4 v5, 0x0

    invoke-interface {p0, v5}, Lcom/j256/ormlite/support/DatabaseConnection;->a(Z)V

    .line 214
    const/4 v2, 0x1

    .line 215
    sget-object v5, Lcom/j256/ormlite/misc/TransactionManager;->a:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v6, "had to set auto-commit to false"

    invoke-virtual {v5, v6}, Lcom/j256/ormlite/logger/Logger;->a(Ljava/lang/String;)V

    .line 218
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ORMLITE"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/j256/ormlite/misc/TransactionManager;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5}, Lcom/j256/ormlite/support/DatabaseConnection;->a(Ljava/lang/String;)Ljava/sql/Savepoint;

    move-result-object v4

    .line 222
    sget-object v5, Lcom/j256/ormlite/misc/TransactionManager;->a:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v6, "started savePoint transaction {}"

    invoke-interface {v4}, Ljava/sql/Savepoint;->getSavepointName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/j256/ormlite/logger/Logger;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    const/4 v1, 0x1

    .line 227
    :cond_2
    :try_start_1
    invoke-interface {p3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v3

    .line 228
    .local v3, "result":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_3

    .line 1267
    if-nez v4, :cond_5

    const/4 v5, 0x0

    .line 1268
    :goto_0
    invoke-interface {p0, v4}, Lcom/j256/ormlite/support/DatabaseConnection;->a(Ljava/sql/Savepoint;)V

    .line 1269
    if-nez v5, :cond_6

    .line 1270
    sget-object v5, Lcom/j256/ormlite/misc/TransactionManager;->a:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v6, "committed savePoint transaction"

    invoke-virtual {v5, v6}, Lcom/j256/ormlite/logger/Logger;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 256
    invoke-interface {p0, v8}, Lcom/j256/ormlite/support/DatabaseConnection;->a(Z)V

    .line 257
    sget-object v5, Lcom/j256/ormlite/misc/TransactionManager;->a:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v6, "restored auto-commit to true"

    invoke-virtual {v5, v6}, Lcom/j256/ormlite/logger/Logger;->a(Ljava/lang/String;)V

    :cond_4
    return-object v3

    .line 1267
    :cond_5
    :try_start_2
    invoke-interface {v4}, Ljava/sql/Savepoint;->getSavepointName()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1272
    :cond_6
    sget-object v6, Lcom/j256/ormlite/misc/TransactionManager;->a:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v7, "committed savePoint transaction {}"

    invoke-virtual {v6, v7, v5}, Lcom/j256/ormlite/logger/Logger;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 232
    .end local v3    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/sql/SQLException;
    if-eqz v1, :cond_7

    .line 235
    :try_start_3
    invoke-static {p0, v4}, Lcom/j256/ormlite/misc/TransactionManager;->a(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/sql/Savepoint;)V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 241
    :cond_7
    :goto_2
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 254
    .end local v0    # "e":Ljava/sql/SQLException;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_8

    .line 256
    invoke-interface {p0, v8}, Lcom/j256/ormlite/support/DatabaseConnection;->a(Z)V

    .line 257
    sget-object v6, Lcom/j256/ormlite/misc/TransactionManager;->a:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v7, "restored auto-commit to true"

    invoke-virtual {v6, v7}, Lcom/j256/ormlite/logger/Logger;->a(Ljava/lang/String;)V

    :cond_8
    throw v5

    .line 237
    .restart local v0    # "e":Ljava/sql/SQLException;
    :catch_1
    move-exception v5

    :try_start_5
    sget-object v5, Lcom/j256/ormlite/misc/TransactionManager;->a:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v6, "after commit exception, rolling back to save-point also threw exception"

    invoke-virtual {v5, v0, v6}, Lcom/j256/ormlite/logger/Logger;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 242
    .end local v0    # "e":Ljava/sql/SQLException;
    :catch_2
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/Exception;
    if-eqz v1, :cond_9

    .line 245
    :try_start_6
    invoke-static {p0, v4}, Lcom/j256/ormlite/misc/TransactionManager;->a(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/sql/Savepoint;)V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 251
    :cond_9
    :goto_3
    :try_start_7
    const-string/jumbo v5, "Transaction callable threw non-SQL exception"

    invoke-static {v5, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v5

    throw v5

    .line 247
    :catch_3
    move-exception v5

    sget-object v5, Lcom/j256/ormlite/misc/TransactionManager;->a:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v6, "after commit exception, rolling back to save-point also threw exception"

    invoke-virtual {v5, v0, v6}, Lcom/j256/ormlite/logger/Logger;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3
.end method

.method private static a(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/sql/Savepoint;)V
    .locals 3
    .param p0, "connection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p1, "savePoint"    # Ljava/sql/Savepoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 277
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 278
    .local v0, "name":Ljava/lang/String;
    :goto_0
    invoke-interface {p0, p1}, Lcom/j256/ormlite/support/DatabaseConnection;->b(Ljava/sql/Savepoint;)V

    .line 279
    if-nez v0, :cond_1

    .line 280
    sget-object v1, Lcom/j256/ormlite/misc/TransactionManager;->a:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v2, "rolled back savePoint transaction"

    invoke-virtual {v1, v2}, Lcom/j256/ormlite/logger/Logger;->a(Ljava/lang/String;)V

    .line 284
    :goto_1
    return-void

    .line 277
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Ljava/sql/Savepoint;->getSavepointName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 282
    .restart local v0    # "name":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/j256/ormlite/misc/TransactionManager;->a:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v2, "rolled back savePoint transaction {}"

    invoke-virtual {v1, v2, v0}, Lcom/j256/ormlite/logger/Logger;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method
