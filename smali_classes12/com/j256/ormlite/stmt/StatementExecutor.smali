.class public Lcom/j256/ormlite/stmt/StatementExecutor;
.super Ljava/lang/Object;
.source "StatementExecutor.java"

# interfaces
.implements Lcom/j256/ormlite/stmt/GenericRowMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/j256/ormlite/stmt/GenericRowMapper",
        "<[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Lcom/j256/ormlite/logger/Logger;

.field private static final m:[Lcom/j256/ormlite/field/FieldType;


# instance fields
.field public final b:Lcom/j256/ormlite/db/DatabaseType;

.field public final c:Lcom/j256/ormlite/table/TableInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;"
        }
    .end annotation
.end field

.field public final d:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;TID;>;"
        }
    .end annotation
.end field

.field public e:Lcom/j256/ormlite/stmt/PreparedQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/PreparedQuery",
            "<TT;>;"
        }
    .end annotation
.end field

.field public f:Lcom/j256/ormlite/stmt/mapped/MappedCreate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/mapped/MappedCreate",
            "<TT;TID;>;"
        }
    .end annotation
.end field

.field public g:Lcom/j256/ormlite/stmt/mapped/MappedUpdate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/mapped/MappedUpdate",
            "<TT;TID;>;"
        }
    .end annotation
.end field

.field public h:Lcom/j256/ormlite/stmt/mapped/MappedDelete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/mapped/MappedDelete",
            "<TT;TID;>;"
        }
    .end annotation
.end field

.field public i:Lcom/j256/ormlite/stmt/mapped/MappedRefresh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/mapped/MappedRefresh",
            "<TT;TID;>;"
        }
    .end annotation
.end field

.field public j:Ljava/lang/String;

.field public k:[Lcom/j256/ormlite/field/FieldType;

.field public final l:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/j256/ormlite/stmt/StatementExecutor;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->a(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/stmt/StatementExecutor;->a:Lcom/j256/ormlite/logger/Logger;

    .line 53
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/j256/ormlite/field/FieldType;

    sput-object v0, Lcom/j256/ormlite/stmt/StatementExecutor;->m:[Lcom/j256/ormlite/field/FieldType;

    return-void
.end method

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
    .line 80
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    .local p3, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;TID;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/j256/ormlite/stmt/StatementExecutor$1;

    invoke-direct {v0, p0}, Lcom/j256/ormlite/stmt/StatementExecutor$1;-><init>(Lcom/j256/ormlite/stmt/StatementExecutor;)V

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->l:Ljava/lang/ThreadLocal;

    .line 81
    iput-object p1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->b:Lcom/j256/ormlite/db/DatabaseType;

    .line 82
    iput-object p2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->c:Lcom/j256/ormlite/table/TableInfo;

    .line 83
    iput-object p3, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->d:Lcom/j256/ormlite/dao/Dao;

    .line 84
    return-void
.end method

.method public static a(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/PreparedStmt;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;
    .locals 5
    .param p0, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p2, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Lcom/j256/ormlite/stmt/PreparedStmt",
            "<TT;>;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "preparedStmt":Lcom/j256/ormlite/stmt/PreparedStmt;, "Lcom/j256/ormlite/stmt/PreparedStmt<TT;>;"
    sget-object v2, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-interface {p1, p0, v2}, Lcom/j256/ormlite/stmt/PreparedStmt;->a(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v0

    .line 103
    .local v0, "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    const/4 v1, 0x0

    .line 105
    .local v1, "results":Lcom/j256/ormlite/support/DatabaseResults;
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {v0, v2}, Lcom/j256/ormlite/support/CompiledStatement;->a(I)V

    .line 106
    invoke-interface {v0, p2}, Lcom/j256/ormlite/support/CompiledStatement;->a(Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/support/DatabaseResults;

    move-result-object v1

    .line 107
    invoke-interface {v1}, Lcom/j256/ormlite/support/DatabaseResults;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    sget-object v2, Lcom/j256/ormlite/stmt/StatementExecutor;->a:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v3, "query-for-first of \'{}\' returned at least 1 result"

    invoke-interface {p1}, Lcom/j256/ormlite/stmt/PreparedStmt;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/logger/Logger;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    invoke-interface {p1, v1}, Lcom/j256/ormlite/stmt/PreparedStmt;->a(Lcom/j256/ormlite/support/DatabaseResults;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 115
    const-string/jumbo v3, "results"

    invoke-static {v1, v3}, Lcom/j256/ormlite/misc/IOUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 116
    const-string/jumbo v3, "compiled statement"

    invoke-static {v0, v3}, Lcom/j256/ormlite/misc/IOUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    :goto_0
    return-object v2

    .line 111
    :cond_0
    :try_start_1
    sget-object v2, Lcom/j256/ormlite/stmt/StatementExecutor;->a:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v3, "query-for-first of \'{}\' returned at 0 results"

    invoke-interface {p1}, Lcom/j256/ormlite/stmt/PreparedStmt;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/logger/Logger;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    const-string/jumbo v2, "results"

    invoke-static {v1, v2}, Lcom/j256/ormlite/misc/IOUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 116
    const-string/jumbo v2, "compiled statement"

    invoke-static {v0, v2}, Lcom/j256/ormlite/misc/IOUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v2

    const-string/jumbo v3, "results"

    invoke-static {v1, v3}, Lcom/j256/ormlite/misc/IOUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 116
    const-string/jumbo v3, "compiled statement"

    invoke-static {v0, v3}, Lcom/j256/ormlite/misc/IOUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v2
.end method

.method private a(Lcom/j256/ormlite/support/DatabaseConnection;ZLjava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 6
    .param p1, "connection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p2, "saved"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<CT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Z",
            "Ljava/util/concurrent/Callable",
            "<TCT;>;)TCT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p3, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TCT;>;"
    const/4 v5, 0x1

    .line 635
    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->b:Lcom/j256/ormlite/db/DatabaseType;

    invoke-interface {v2}, Lcom/j256/ormlite/db/DatabaseType;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 636
    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->b:Lcom/j256/ormlite/db/DatabaseType;

    invoke-static {p1, p2, v2, p3}, Lcom/j256/ormlite/misc/TransactionManager;->a(Lcom/j256/ormlite/support/DatabaseConnection;ZLcom/j256/ormlite/db/DatabaseType;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v2

    .line 664
    :cond_0
    :goto_0
    return-object v2

    .line 638
    :cond_1
    const/4 v1, 0x0

    .line 640
    .local v1, "resetAutoCommit":Z
    :try_start_0
    invoke-interface {p1}, Lcom/j256/ormlite/support/DatabaseConnection;->a()Z

    .line 641
    invoke-interface {p1}, Lcom/j256/ormlite/support/DatabaseConnection;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 643
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Lcom/j256/ormlite/support/DatabaseConnection;->a(Z)V

    .line 644
    const/4 v1, 0x1

    .line 645
    sget-object v2, Lcom/j256/ormlite/stmt/StatementExecutor;->a:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v3, "disabled auto-commit on table {} before batch tasks"

    iget-object v4, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->c:Lcom/j256/ormlite/table/TableInfo;

    .line 2121
    iget-object v4, v4, Lcom/j256/ormlite/table/TableInfo;->b:Ljava/lang/String;

    .line 645
    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/logger/Logger;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    :cond_2
    :try_start_1
    invoke-interface {p3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 656
    if-eqz v1, :cond_0

    .line 663
    invoke-interface {p1, v5}, Lcom/j256/ormlite/support/DatabaseConnection;->a(Z)V

    .line 664
    sget-object v3, Lcom/j256/ormlite/stmt/StatementExecutor;->a:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v4, "re-enabled auto-commit on table {} after batch tasks"

    iget-object v5, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->c:Lcom/j256/ormlite/table/TableInfo;

    .line 3121
    iget-object v5, v5, Lcom/j256/ormlite/table/TableInfo;->b:Ljava/lang/String;

    .line 664
    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/logger/Logger;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 650
    :catch_0
    move-exception v0

    .line 651
    .local v0, "e":Ljava/sql/SQLException;
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 656
    .end local v0    # "e":Ljava/sql/SQLException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    .line 663
    invoke-interface {p1, v5}, Lcom/j256/ormlite/support/DatabaseConnection;->a(Z)V

    .line 664
    sget-object v3, Lcom/j256/ormlite/stmt/StatementExecutor;->a:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v4, "re-enabled auto-commit on table {} after batch tasks"

    iget-object v5, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->c:Lcom/j256/ormlite/table/TableInfo;

    .line 4121
    iget-object v5, v5, Lcom/j256/ormlite/table/TableInfo;->b:Ljava/lang/String;

    .line 664
    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/logger/Logger;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    throw v2

    .line 652
    :catch_1
    move-exception v0

    .line 653
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v2, "Batch tasks callable threw non-SQL exception"

    invoke-static {v2, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private b(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 5
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<CT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/util/concurrent/Callable",
            "<TCT;>;)TCT;"
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
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TCT;>;"
    const/4 v4, 0x0

    .line 606
    const/4 v1, 0x0

    .line 607
    .local v1, "saved":Z
    invoke-interface {p1}, Lcom/j256/ormlite/support/ConnectionSource;->a()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 613
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->l:Ljava/lang/ThreadLocal;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 618
    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->a(Lcom/j256/ormlite/support/DatabaseConnection;)Z

    move-result v1

    .line 619
    invoke-direct {p0, v0, v1, p2}, Lcom/j256/ormlite/stmt/StatementExecutor;->a(Lcom/j256/ormlite/support/DatabaseConnection;ZLjava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 621
    if-eqz v1, :cond_0

    .line 622
    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->b(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 625
    :cond_0
    iget-object v3, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->l:Ljava/lang/ThreadLocal;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 626
    iget-object v3, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->d:Lcom/j256/ormlite/dao/Dao;

    if-eqz v3, :cond_1

    .line 628
    iget-object v3, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->d:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->f()V

    :cond_1
    return-object v2

    .line 621
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 622
    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->b(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 625
    :cond_2
    iget-object v3, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->l:Ljava/lang/ThreadLocal;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 626
    iget-object v3, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->d:Lcom/j256/ormlite/dao/Dao;

    if-eqz v3, :cond_3

    .line 628
    iget-object v3, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->d:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->f()V

    :cond_3
    throw v2
.end method


# virtual methods
.method public final a(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/PreparedUpdate;)I
    .locals 4
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Lcom/j256/ormlite/stmt/PreparedUpdate",
            "<TT;>;)I"
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
    .line 498
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "preparedUpdate":Lcom/j256/ormlite/stmt/PreparedUpdate;, "Lcom/j256/ormlite/stmt/PreparedUpdate<TT;>;"
    sget-object v2, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->UPDATE:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-interface {p2, p1, v2}, Lcom/j256/ormlite/stmt/PreparedUpdate;->a(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v0

    .line 500
    .local v0, "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :try_start_0
    invoke-interface {v0}, Lcom/j256/ormlite/support/CompiledStatement;->a()I

    move-result v1

    .line 501
    .local v1, "result":I
    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->d:Lcom/j256/ormlite/dao/Dao;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->l:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 502
    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->d:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    :cond_0
    const-string/jumbo v2, "compiled statement"

    invoke-static {v0, v2}, Lcom/j256/ormlite/misc/IOUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    return v1

    .end local v1    # "result":I
    :catchall_0
    move-exception v2

    const-string/jumbo v3, "compiled statement"

    invoke-static {v0, v3}, Lcom/j256/ormlite/misc/IOUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v2
.end method

.method public final a(Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/stmt/PreparedStmt;Lcom/j256/ormlite/dao/ObjectCache;I)Lcom/j256/ormlite/stmt/SelectIterator;
    .locals 9
    .param p2, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p4, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .param p5, "resultFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/BaseDaoImpl",
            "<TT;TID;>;",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/stmt/PreparedStmt",
            "<TT;>;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            "I)",
            "Lcom/j256/ormlite/stmt/SelectIterator",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 243
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p1, "classDao":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p3, "preparedStmt":Lcom/j256/ormlite/stmt/PreparedStmt;, "Lcom/j256/ormlite/stmt/PreparedStmt<TT;>;"
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->c:Lcom/j256/ormlite/table/TableInfo;

    .line 1121
    iget-object v1, v1, Lcom/j256/ormlite/table/TableInfo;->b:Ljava/lang/String;

    .line 243
    invoke-interface {p2, v1}, Lcom/j256/ormlite/support/ConnectionSource;->a(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v5

    .line 244
    .local v5, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    const/4 v6, 0x0

    .line 246
    .local v6, "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :try_start_0
    sget-object v1, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-interface {p3, v5, v1, p5}, Lcom/j256/ormlite/stmt/PreparedStmt;->a(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;I)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v6

    .line 247
    new-instance v0, Lcom/j256/ormlite/stmt/SelectIterator;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->c:Lcom/j256/ormlite/table/TableInfo;

    .line 2114
    iget-object v1, v1, Lcom/j256/ormlite/table/TableInfo;->a:Ljava/lang/Class;

    .line 247
    invoke-interface {p3}, Lcom/j256/ormlite/stmt/PreparedStmt;->a()Ljava/lang/String;

    move-result-object v7

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/stmt/SelectIterator;-><init>(Ljava/lang/Class;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/stmt/GenericRowMapper;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/support/CompiledStatement;Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    .local v0, "iterator":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    const/4 v6, 0x0

    .line 253
    const/4 v1, 0x0

    const-string/jumbo v2, "compiled statement"

    invoke-static {v1, v2}, Lcom/j256/ormlite/misc/IOUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 255
    return-object v0

    .line 253
    .end local v0    # "iterator":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    :catchall_0
    move-exception v1

    const-string/jumbo v2, "compiled statement"

    invoke-static {v6, v2}, Lcom/j256/ormlite/misc/IOUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 255
    throw v1
.end method

.method public final a(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<CT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/util/concurrent/Callable",
            "<TCT;>;)TCT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 597
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TCT;>;"
    monitor-enter p0

    .line 598
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/stmt/StatementExecutor;->b(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 599
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final bridge synthetic a(Lcom/j256/ormlite/support/DatabaseResults;)Ljava/lang/Object;
    .locals 4
    .param p1, "x0"    # Lcom/j256/ormlite/support/DatabaseResults;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 50
    .line 4671
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    invoke-interface {p1}, Lcom/j256/ormlite/support/DatabaseResults;->a()I

    move-result v1

    .line 4672
    new-array v2, v1, [Ljava/lang/String;

    .line 4673
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 4674
    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/DatabaseResults;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 4673
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_0
    return-object v2
.end method

.method public final a(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/stmt/PreparedStmt;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/util/List;
    .locals 8
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p3, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/stmt/PreparedStmt",
            "<TT;>;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 197
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "preparedStmt":Lcom/j256/ormlite/stmt/PreparedStmt;, "Lcom/j256/ormlite/stmt/PreparedStmt<TT;>;"
    const/4 v1, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/j256/ormlite/stmt/StatementExecutor;->a(Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/stmt/PreparedStmt;Lcom/j256/ormlite/dao/ObjectCache;I)Lcom/j256/ormlite/stmt/SelectIterator;

    move-result-object v6

    .line 200
    .local v6, "iterator":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v7, "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_0
    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/SelectIterator;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/SelectIterator;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 207
    .end local v7    # "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_0
    move-exception v0

    const-string/jumbo v1, "iterator"

    invoke-static {v6, v1}, Lcom/j256/ormlite/misc/IOUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 204
    .restart local v7    # "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_0
    :try_start_1
    sget-object v0, Lcom/j256/ormlite/stmt/StatementExecutor;->a:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v1, "query of \'{}\' returned {} results"

    invoke-interface {p2}, Lcom/j256/ormlite/stmt/PreparedStmt;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/j256/ormlite/logger/Logger;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    const-string/jumbo v0, "iterator"

    invoke-static {v6, v0}, Lcom/j256/ormlite/misc/IOUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object v7
.end method

.method public a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 704
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->e:Lcom/j256/ormlite/stmt/PreparedQuery;

    if-nez v0, :cond_0

    .line 705
    new-instance v0, Lcom/j256/ormlite/stmt/QueryBuilder;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->b:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->c:Lcom/j256/ormlite/table/TableInfo;

    iget-object v3, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->d:Lcom/j256/ormlite/dao/Dao;

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;-><init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/dao/Dao;)V

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->a()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->e:Lcom/j256/ormlite/stmt/PreparedQuery;

    .line 707
    :cond_0
    return-void
.end method
