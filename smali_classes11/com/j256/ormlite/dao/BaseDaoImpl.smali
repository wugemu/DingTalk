.class public abstract Lcom/j256/ormlite/dao/BaseDaoImpl;
.super Ljava/lang/Object;
.source "BaseDaoImpl.java"

# interfaces
.implements Lcom/j256/ormlite/dao/Dao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/j256/ormlite/dao/Dao",
        "<TT;TID;>;"
    }
.end annotation


# static fields
.field private static final h:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/dao/BaseDaoImpl",
            "<**>;>;>;"
        }
    .end annotation
.end field

.field private static final i:Ljava/lang/Object;


# instance fields
.field protected a:Lcom/j256/ormlite/stmt/StatementExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/StatementExecutor",
            "<TT;TID;>;"
        }
    .end annotation
.end field

.field protected b:Lcom/j256/ormlite/db/DatabaseType;

.field protected final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected d:Lcom/j256/ormlite/table/DatabaseTableConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected e:Lcom/j256/ormlite/table/TableInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;"
        }
    .end annotation
.end field

.field protected f:Lcom/j256/ormlite/support/ConnectionSource;

.field protected g:Lcom/j256/ormlite/dao/CloseableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/j256/ormlite/dao/Dao$DaoObserver;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/j256/ormlite/dao/BaseDaoImpl$1;

    invoke-direct {v0}, Lcom/j256/ormlite/dao/BaseDaoImpl$1;-><init>()V

    sput-object v0, Lcom/j256/ormlite/dao/BaseDaoImpl;->h:Ljava/lang/ThreadLocal;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/j256/ormlite/dao/BaseDaoImpl;->i:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)V
    .locals 1
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 123
    .line 2085
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p2, "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    iget-object v0, p2, Lcom/j256/ormlite/table/DatabaseTableConfig;->a:Ljava/lang/Class;

    .line 123
    invoke-direct {p0, p1, v0, p2}, Lcom/j256/ormlite/dao/BaseDaoImpl;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    .line 124
    return-void
.end method

.method protected constructor <init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V
    .locals 1
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    .line 112
    return-void
.end method

.method private constructor <init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Lcom/j256/ormlite/table/DatabaseTableConfig;)V
    .locals 0
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->c:Ljava/lang/Class;

    .line 129
    iput-object p3, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->d:Lcom/j256/ormlite/table/DatabaseTableConfig;

    .line 130
    if-eqz p1, :cond_0

    .line 131
    iput-object p1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->f:Lcom/j256/ormlite/support/ConnectionSource;

    .line 132
    invoke-direct {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->i()V

    .line 134
    :cond_0
    return-void
.end method

.method private a(I)Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1
    .param p1, "resultFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 549
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    invoke-direct {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->j()V

    .line 550
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->b(I)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->g:Lcom/j256/ormlite/dao/CloseableIterator;

    .line 551
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->g:Lcom/j256/ormlite/dao/CloseableIterator;

    return-object v0
.end method

.method static a(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<TT;>;)",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1055
    .local p1, "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    new-instance v0, Lcom/j256/ormlite/dao/BaseDaoImpl$6;

    invoke-direct {v0, p0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl$6;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    return-object v0
.end method

.method static a(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1041
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/j256/ormlite/dao/BaseDaoImpl$5;

    invoke-direct {v0, p0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl$5;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V

    return-object v0
.end method

.method private b(I)Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 8
    .param p1, "resultFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1088
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->a:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->f:Lcom/j256/ormlite/support/ConnectionSource;

    const/4 v4, 0x0

    .line 20216
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/StatementExecutor;->a()V

    .line 20217
    iget-object v3, v0, Lcom/j256/ormlite/stmt/StatementExecutor;->e:Lcom/j256/ormlite/stmt/PreparedQuery;

    move-object v1, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/j256/ormlite/stmt/StatementExecutor;->a(Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/stmt/PreparedStmt;Lcom/j256/ormlite/dao/ObjectCache;I)Lcom/j256/ormlite/stmt/SelectIterator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1090
    .local v7, "iterator":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    return-object v7

    .line 1091
    .end local v7    # "iterator":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    :catch_0
    move-exception v6

    .line 1092
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Could not build iterator for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->c:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private b(Lcom/j256/ormlite/stmt/PreparedQuery;I)Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 8
    .param p2, "resultFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/PreparedQuery",
            "<TT;>;I)",
            "Lcom/j256/ormlite/dao/CloseableIterator",
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
    .line 1098
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "preparedQuery":Lcom/j256/ormlite/stmt/PreparedQuery;, "Lcom/j256/ormlite/stmt/PreparedQuery<TT;>;"
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->a:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->f:Lcom/j256/ormlite/support/ConnectionSource;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/j256/ormlite/stmt/StatementExecutor;->a(Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/stmt/PreparedStmt;Lcom/j256/ormlite/dao/ObjectCache;I)Lcom/j256/ormlite/stmt/SelectIterator;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1100
    .local v7, "iterator":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    return-object v7

    .line 1101
    .end local v7    # "iterator":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    :catch_0
    move-exception v6

    .line 1102
    .local v6, "e":Ljava/sql/SQLException;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Could not build prepared-query iterator for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->c:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public static declared-synchronized e()V
    .locals 1

    .prologue
    .line 889
    const-class v0, Lcom/j256/ormlite/dao/BaseDaoImpl;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method private f(Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TID;)Z"
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
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "id":Ljava/lang/Object;, "TID;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 944
    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->f:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v4, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->e:Lcom/j256/ormlite/table/TableInfo;

    .line 16121
    iget-object v4, v4, Lcom/j256/ormlite/table/TableInfo;->b:Ljava/lang/String;

    .line 944
    invoke-interface {v3, v4}, Lcom/j256/ormlite/support/ConnectionSource;->a(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 946
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    iget-object v4, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->a:Lcom/j256/ormlite/stmt/StatementExecutor;

    .line 16680
    iget-object v3, v4, Lcom/j256/ormlite/stmt/StatementExecutor;->j:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 16681
    new-instance v5, Lcom/j256/ormlite/stmt/QueryBuilder;

    iget-object v3, v4, Lcom/j256/ormlite/stmt/StatementExecutor;->b:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v6, v4, Lcom/j256/ormlite/stmt/StatementExecutor;->c:Lcom/j256/ormlite/table/TableInfo;

    iget-object v7, v4, Lcom/j256/ormlite/stmt/StatementExecutor;->d:Lcom/j256/ormlite/dao/Dao;

    invoke-direct {v5, v3, v6, v7}, Lcom/j256/ormlite/stmt/QueryBuilder;-><init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/dao/Dao;)V

    .line 16682
    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v7, "COUNT(*)"

    aput-object v7, v6, v3

    move v3, v2

    .line 17139
    :goto_0
    if-gtz v3, :cond_1

    const/4 v7, 0x0

    aget-object v7, v6, v7

    .line 17140
    invoke-static {v7}, Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;->a(Ljava/lang/String;)Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;

    move-result-object v7

    .line 17641
    iget-object v8, v5, Lcom/j256/ormlite/stmt/QueryBuilder;->a:Ljava/util/List;

    if-nez v8, :cond_0

    .line 17642
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v5, Lcom/j256/ormlite/stmt/QueryBuilder;->a:Ljava/util/List;

    .line 17644
    :cond_0
    iget-object v8, v5, Lcom/j256/ormlite/stmt/QueryBuilder;->a:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17139
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 16687
    :cond_1
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->f()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    iget-object v6, v4, Lcom/j256/ormlite/stmt/StatementExecutor;->c:Lcom/j256/ormlite/table/TableInfo;

    .line 18162
    iget-object v6, v6, Lcom/j256/ormlite/table/TableInfo;->e:Lcom/j256/ormlite/field/FieldType;

    .line 18455
    iget-object v6, v6, Lcom/j256/ormlite/field/FieldType;->b:Ljava/lang/String;

    .line 16687
    new-instance v7, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {v7}, Lcom/j256/ormlite/stmt/SelectArg;-><init>()V

    invoke-virtual {v3, v6, v7}, Lcom/j256/ormlite/stmt/Where;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 16688
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->g()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/j256/ormlite/stmt/StatementExecutor;->j:Ljava/lang/String;

    .line 16689
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/j256/ormlite/field/FieldType;

    const/4 v5, 0x0

    iget-object v6, v4, Lcom/j256/ormlite/stmt/StatementExecutor;->c:Lcom/j256/ormlite/table/TableInfo;

    .line 19162
    iget-object v6, v6, Lcom/j256/ormlite/table/TableInfo;->e:Lcom/j256/ormlite/field/FieldType;

    .line 16689
    aput-object v6, v3, v5

    iput-object v3, v4, Lcom/j256/ormlite/stmt/StatementExecutor;->k:[Lcom/j256/ormlite/field/FieldType;

    .line 16691
    :cond_2
    iget-object v3, v4, Lcom/j256/ormlite/stmt/StatementExecutor;->c:Lcom/j256/ormlite/table/TableInfo;

    .line 20162
    iget-object v3, v3, Lcom/j256/ormlite/table/TableInfo;->e:Lcom/j256/ormlite/field/FieldType;

    .line 16691
    invoke-virtual {v3, p1}, Lcom/j256/ormlite/field/FieldType;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 16692
    iget-object v5, v4, Lcom/j256/ormlite/stmt/StatementExecutor;->j:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-interface {v0, v5, v6}, Lcom/j256/ormlite/support/DatabaseConnection;->a(Ljava/lang/String;[Ljava/lang/Object;)J

    move-result-wide v6

    .line 16693
    sget-object v3, Lcom/j256/ormlite/stmt/StatementExecutor;->a:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v5, "query of \'{}\' returned {}"

    iget-object v4, v4, Lcom/j256/ormlite/stmt/StatementExecutor;->j:Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v5, v4, v8}, Lcom/j256/ormlite/logger/Logger;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16694
    const-wide/16 v4, 0x0

    cmp-long v3, v6, v4

    if-eqz v3, :cond_3

    .line 948
    :goto_1
    return v1

    :cond_3
    move v1, v2

    .line 16694
    goto :goto_1

    .line 948
    :catchall_0
    move-exception v1

    throw v1
.end method

.method private i()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/j256/ormlite/dao/BaseDaoImpl;->j:Z

    if-eqz v9, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/j256/ormlite/dao/BaseDaoImpl;->f:Lcom/j256/ormlite/support/ConnectionSource;

    if-nez v9, :cond_2

    .line 146
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "connectionSource was never set on "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 149
    :cond_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/j256/ormlite/dao/BaseDaoImpl;->f:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v9}, Lcom/j256/ormlite/support/ConnectionSource;->b()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/j256/ormlite/dao/BaseDaoImpl;->b:Lcom/j256/ormlite/db/DatabaseType;

    .line 150
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/j256/ormlite/dao/BaseDaoImpl;->b:Lcom/j256/ormlite/db/DatabaseType;

    if-nez v9, :cond_3

    .line 151
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "connectionSource is getting a null DatabaseType in "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 154
    :cond_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/j256/ormlite/dao/BaseDaoImpl;->d:Lcom/j256/ormlite/table/DatabaseTableConfig;

    if-nez v9, :cond_5

    .line 155
    new-instance v9, Lcom/j256/ormlite/table/TableInfo;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/j256/ormlite/dao/BaseDaoImpl;->f:Lcom/j256/ormlite/support/ConnectionSource;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/j256/ormlite/dao/BaseDaoImpl;->c:Ljava/lang/Class;

    move-object/from16 v0, p0

    invoke-direct {v9, v10, v0, v11}, Lcom/j256/ormlite/table/TableInfo;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/BaseDaoImpl;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/j256/ormlite/dao/BaseDaoImpl;->e:Lcom/j256/ormlite/table/TableInfo;

    .line 160
    :goto_1
    new-instance v9, Lcom/j256/ormlite/stmt/StatementExecutor;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/j256/ormlite/dao/BaseDaoImpl;->b:Lcom/j256/ormlite/db/DatabaseType;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/j256/ormlite/dao/BaseDaoImpl;->e:Lcom/j256/ormlite/table/TableInfo;

    move-object/from16 v0, p0

    invoke-direct {v9, v10, v11, v0}, Lcom/j256/ormlite/stmt/StatementExecutor;-><init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/dao/Dao;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/j256/ormlite/dao/BaseDaoImpl;->a:Lcom/j256/ormlite/stmt/StatementExecutor;

    .line 175
    sget-object v9, Lcom/j256/ormlite/dao/BaseDaoImpl;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v9}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 176
    .local v3, "daoConfigList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/dao/BaseDaoImpl<**>;>;"
    move-object/from16 v0, p0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-gt v9, v10, :cond_0

    .line 190
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_19

    .line 191
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/j256/ormlite/dao/BaseDaoImpl;

    .line 200
    .local v2, "dao":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<**>;"
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/j256/ormlite/dao/BaseDaoImpl;->f:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-static {v9, v2}, Lcom/j256/ormlite/dao/DaoManager;->a(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3006
    :try_start_1
    iget-object v9, v2, Lcom/j256/ormlite/dao/BaseDaoImpl;->e:Lcom/j256/ormlite/table/TableInfo;

    .line 3128
    iget-object v1, v9, Lcom/j256/ormlite/table/TableInfo;->c:[Lcom/j256/ormlite/field/FieldType;

    .line 204
    .local v1, "arr$":[Lcom/j256/ormlite/field/FieldType;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_3
    if-ge v7, v8, :cond_18

    aget-object v5, v1, v7

    .line 205
    .local v5, "fieldType":Lcom/j256/ormlite/field/FieldType;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/j256/ormlite/dao/BaseDaoImpl;->f:Lcom/j256/ormlite/support/ConnectionSource;

    .line 3758
    iget-object v11, v2, Lcom/j256/ormlite/dao/BaseDaoImpl;->c:Ljava/lang/Class;

    .line 4286
    iget-object v9, v5, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v15

    .line 4287
    invoke-interface {v10}, Lcom/j256/ormlite/support/ConnectionSource;->b()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v16

    .line 4295
    iget-object v9, v5, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 4484
    iget-object v0, v9, Lcom/j256/ormlite/field/DatabaseFieldConfig;->F:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 4296
    iget-object v9, v5, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 5364
    iget-boolean v9, v9, Lcom/j256/ormlite/field/DatabaseFieldConfig;->y:Z

    .line 4296
    if-nez v9, :cond_4

    if-eqz v17, :cond_b

    .line 4297
    :cond_4
    iget-object v9, v5, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 6255
    const/4 v9, 0x0

    .line 4298
    if-nez v9, :cond_6

    .line 4300
    invoke-static {v10, v15}, Lcom/j256/ormlite/dao/DaoManager;->a(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v9

    check-cast v9, Lcom/j256/ormlite/dao/BaseDaoImpl;

    .line 7006
    iget-object v14, v9, Lcom/j256/ormlite/dao/BaseDaoImpl;->e:Lcom/j256/ormlite/table/TableInfo;

    move-object v10, v9

    .line 8162
    :goto_4
    iget-object v13, v14, Lcom/j256/ormlite/table/TableInfo;->e:Lcom/j256/ormlite/field/FieldType;

    .line 4309
    if-nez v13, :cond_7

    .line 4310
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Foreign field "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " does not have id field"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    .end local v1    # "arr$":[Lcom/j256/ormlite/field/FieldType;
    .end local v5    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :catch_0
    move-exception v4

    .line 209
    .local v4, "e":Ljava/sql/SQLException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/j256/ormlite/dao/BaseDaoImpl;->f:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-static {v9, v2}, Lcom/j256/ormlite/dao/DaoManager;->b(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/Dao;)V

    .line 210
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    .end local v2    # "dao":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<**>;"
    .end local v4    # "e":Ljava/sql/SQLException;
    :catchall_0
    move-exception v9

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 219
    sget-object v10, Lcom/j256/ormlite/dao/BaseDaoImpl;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v10}, Ljava/lang/ThreadLocal;->remove()V

    throw v9

    .line 157
    .end local v3    # "daoConfigList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/dao/BaseDaoImpl<**>;>;"
    .end local v6    # "i":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/j256/ormlite/dao/BaseDaoImpl;->d:Lcom/j256/ormlite/table/DatabaseTableConfig;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/j256/ormlite/dao/BaseDaoImpl;->f:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-virtual {v9, v10}, Lcom/j256/ormlite/table/DatabaseTableConfig;->a(Lcom/j256/ormlite/support/ConnectionSource;)V

    .line 158
    new-instance v9, Lcom/j256/ormlite/table/TableInfo;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/j256/ormlite/dao/BaseDaoImpl;->b:Lcom/j256/ormlite/db/DatabaseType;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/j256/ormlite/dao/BaseDaoImpl;->d:Lcom/j256/ormlite/table/DatabaseTableConfig;

    move-object/from16 v0, p0

    invoke-direct {v9, v10, v0, v11}, Lcom/j256/ormlite/table/TableInfo;-><init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/j256/ormlite/dao/BaseDaoImpl;->e:Lcom/j256/ormlite/table/TableInfo;

    goto/16 :goto_1

    .line 4303
    .restart local v1    # "arr$":[Lcom/j256/ormlite/field/FieldType;
    .restart local v2    # "dao":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<**>;"
    .restart local v3    # "daoConfigList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/dao/BaseDaoImpl<**>;>;"
    .restart local v5    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    .restart local v6    # "i":I
    .restart local v7    # "i$":I
    .restart local v8    # "len$":I
    :cond_6
    :try_start_3
    invoke-virtual {v9, v10}, Lcom/j256/ormlite/table/DatabaseTableConfig;->a(Lcom/j256/ormlite/support/ConnectionSource;)V

    .line 4305
    invoke-static {v10, v9}, Lcom/j256/ormlite/dao/DaoManager;->a(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v9

    check-cast v9, Lcom/j256/ormlite/dao/BaseDaoImpl;

    .line 8006
    iget-object v14, v9, Lcom/j256/ormlite/dao/BaseDaoImpl;->e:Lcom/j256/ormlite/table/TableInfo;

    move-object v10, v9

    .line 4306
    goto :goto_4

    .line 4312
    :cond_7
    if-nez v17, :cond_a

    move-object v12, v13

    .line 4322
    :cond_8
    move-object/from16 v0, v16

    invoke-static {v0, v14, v12}, Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;->a(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/field/FieldType;)Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;

    move-result-object v9

    .line 4326
    const/4 v11, 0x0

    .line 4415
    :goto_5
    iput-object v9, v5, Lcom/j256/ormlite/field/FieldType;->o:Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;

    .line 4416
    iput-object v14, v5, Lcom/j256/ormlite/field/FieldType;->l:Lcom/j256/ormlite/table/TableInfo;

    .line 4417
    iput-object v11, v5, Lcom/j256/ormlite/field/FieldType;->m:Lcom/j256/ormlite/field/FieldType;

    .line 4418
    iput-object v10, v5, Lcom/j256/ormlite/field/FieldType;->n:Lcom/j256/ormlite/dao/BaseDaoImpl;

    .line 4419
    iput-object v13, v5, Lcom/j256/ormlite/field/FieldType;->j:Lcom/j256/ormlite/field/FieldType;

    .line 4420
    iput-object v12, v5, Lcom/j256/ormlite/field/FieldType;->k:Lcom/j256/ormlite/field/FieldType;

    .line 4423
    iget-object v9, v5, Lcom/j256/ormlite/field/FieldType;->k:Lcom/j256/ormlite/field/FieldType;

    if-eqz v9, :cond_9

    .line 4424
    iget-object v9, v5, Lcom/j256/ormlite/field/FieldType;->k:Lcom/j256/ormlite/field/FieldType;

    .line 12459
    iget-object v9, v9, Lcom/j256/ormlite/field/FieldType;->g:Lcom/j256/ormlite/field/DataPersister;

    .line 4424
    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v9}, Lcom/j256/ormlite/field/FieldType;->a(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/DataPersister;)V

    .line 204
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 4315
    :cond_a
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/j256/ormlite/table/TableInfo;->a(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v12

    .line 4316
    if-nez v12, :cond_8

    .line 4317
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Foreign field "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " does not have field named \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 4327
    :cond_b
    iget-object v9, v5, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 8243
    iget-boolean v9, v9, Lcom/j256/ormlite/field/DatabaseFieldConfig;->m:Z

    .line 4327
    if-eqz v9, :cond_10

    .line 4328
    iget-object v9, v5, Lcom/j256/ormlite/field/FieldType;->g:Lcom/j256/ormlite/field/DataPersister;

    if-eqz v9, :cond_c

    iget-object v9, v5, Lcom/j256/ormlite/field/FieldType;->g:Lcom/j256/ormlite/field/DataPersister;

    invoke-interface {v9}, Lcom/j256/ormlite/field/DataPersister;->i()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 4329
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Field "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " is a primitive class "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " but marked as foreign"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 4332
    :cond_c
    iget-object v9, v5, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 8255
    const/4 v9, 0x0

    .line 4333
    if-eqz v9, :cond_d

    .line 4334
    invoke-virtual {v9, v10}, Lcom/j256/ormlite/table/DatabaseTableConfig;->a(Lcom/j256/ormlite/support/ConnectionSource;)V

    .line 4336
    invoke-static {v10, v9}, Lcom/j256/ormlite/dao/DaoManager;->a(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v9

    check-cast v9, Lcom/j256/ormlite/dao/BaseDaoImpl;

    move-object v10, v9

    .line 9006
    :goto_6
    iget-object v13, v10, Lcom/j256/ormlite/dao/BaseDaoImpl;->e:Lcom/j256/ormlite/table/TableInfo;

    .line 9162
    iget-object v12, v13, Lcom/j256/ormlite/table/TableInfo;->e:Lcom/j256/ormlite/field/FieldType;

    .line 4349
    if-nez v12, :cond_e

    .line 4350
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Foreign field "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " does not have id field"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 4345
    :cond_d
    invoke-static {v10, v15}, Lcom/j256/ormlite/dao/DaoManager;->a(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v9

    check-cast v9, Lcom/j256/ormlite/dao/BaseDaoImpl;

    move-object v10, v9

    goto :goto_6

    .line 9888
    :cond_e
    iget-object v9, v5, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 10468
    iget-boolean v9, v9, Lcom/j256/ormlite/field/DatabaseFieldConfig;->D:Z

    .line 4353
    if-eqz v9, :cond_f

    .line 10499
    iget-boolean v9, v12, Lcom/j256/ormlite/field/FieldType;->e:Z

    .line 4353
    if-nez v9, :cond_f

    .line 4354
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Field "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v5, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", if foreignAutoCreate = true then class "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " must have id field with generatedId = true"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 4358
    :cond_f
    const/4 v11, 0x0

    .line 4359
    const/4 v9, 0x0

    move-object v14, v13

    move-object v13, v12

    .line 4360
    goto/16 :goto_5

    :cond_10
    iget-object v9, v5, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 11388
    iget-boolean v9, v9, Lcom/j256/ormlite/field/DatabaseFieldConfig;->H:Z

    .line 4360
    if-eqz v9, :cond_17

    .line 4361
    const-class v9, Ljava/util/Collection;

    if-eq v15, v9, :cond_11

    const-class v9, Lcom/j256/ormlite/dao/ForeignCollection;

    invoke-virtual {v9, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_11

    .line 4362
    new-instance v9, Ljava/sql/SQLException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Field class for \'"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v5, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\' must be of class "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-class v11, Lcom/j256/ormlite/dao/ForeignCollection;

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " or Collection."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 4365
    :cond_11
    iget-object v9, v5, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v9

    .line 4366
    instance-of v12, v9, Ljava/lang/reflect/ParameterizedType;

    if-nez v12, :cond_12

    .line 4367
    new-instance v9, Ljava/sql/SQLException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Field class for \'"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v5, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\' must be a parameterized Collection."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 4369
    :cond_12
    check-cast v9, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v9}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v9

    .line 4370
    array-length v12, v9

    if-nez v12, :cond_13

    .line 4372
    new-instance v9, Ljava/sql/SQLException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Field class for \'"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v5, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\' must be a parameterized Collection with at least 1 type."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 4377
    :cond_13
    const/4 v12, 0x0

    aget-object v12, v9, v12

    instance-of v12, v12, Ljava/lang/reflect/TypeVariable;

    if-eqz v12, :cond_14

    .line 4378
    invoke-virtual {v11}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v9

    check-cast v9, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v9}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v9

    .line 4381
    :cond_14
    const/4 v12, 0x0

    aget-object v12, v9, v12

    instance-of v12, v12, Ljava/lang/Class;

    if-nez v12, :cond_15

    .line 4382
    new-instance v10, Ljava/sql/SQLException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Field class for \'"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v5, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\' must be a parameterized Collection whose generic argument is an entity class not: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v9, v9, v12

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 4386
    :cond_15
    const/4 v12, 0x0

    aget-object v9, v9, v12

    check-cast v9, Ljava/lang/Class;

    .line 4387
    iget-object v12, v5, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 12255
    const/4 v12, 0x0

    .line 4389
    if-nez v12, :cond_16

    .line 4391
    invoke-static {v10, v9}, Lcom/j256/ormlite/dao/DaoManager;->a(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v10

    check-cast v10, Lcom/j256/ormlite/dao/BaseDaoImpl;

    .line 4401
    :goto_7
    invoke-virtual {v5, v9, v11, v10}, Lcom/j256/ormlite/field/FieldType;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/j256/ormlite/dao/BaseDaoImpl;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v11

    .line 4402
    const/4 v13, 0x0

    .line 4403
    const/4 v12, 0x0

    .line 4404
    const/4 v14, 0x0

    .line 4405
    const/4 v9, 0x0

    .line 4406
    goto/16 :goto_5

    .line 4396
    :cond_16
    invoke-static {v10, v12}, Lcom/j256/ormlite/dao/DaoManager;->a(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v10

    check-cast v10, Lcom/j256/ormlite/dao/BaseDaoImpl;
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    .line 4407
    :cond_17
    const/4 v14, 0x0

    .line 4408
    const/4 v13, 0x0

    .line 4409
    const/4 v12, 0x0

    .line 4410
    const/4 v11, 0x0

    .line 4411
    const/4 v10, 0x0

    .line 4412
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 214
    .end local v5    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_18
    const/4 v9, 0x1

    :try_start_4
    iput-boolean v9, v2, Lcom/j256/ormlite/dao/BaseDaoImpl;->j:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 190
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 218
    .end local v1    # "arr$":[Lcom/j256/ormlite/field/FieldType;
    .end local v2    # "dao":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<**>;"
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_19
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 219
    sget-object v9, Lcom/j256/ormlite/dao/BaseDaoImpl;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v9}, Ljava/lang/ThreadLocal;->remove()V

    goto/16 :goto_0
.end method

.method private j()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1060
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    iget-boolean v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->j:Z

    if-nez v0, :cond_0

    .line 1061
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "you must call initialize() before you can use the dao"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1063
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/j256/ormlite/stmt/PreparedUpdate;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 433
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "preparedUpdate":Lcom/j256/ormlite/stmt/PreparedUpdate;, "Lcom/j256/ormlite/stmt/PreparedUpdate<TT;>;"
    invoke-direct {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->j()V

    .line 434
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->f:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1}, Lcom/j256/ormlite/support/ConnectionSource;->a()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 436
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->a:Lcom/j256/ormlite/stmt/StatementExecutor;

    invoke-virtual {v1, v0, p1}, Lcom/j256/ormlite/stmt/StatementExecutor;->a(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/PreparedUpdate;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 438
    return v1

    :catchall_0
    move-exception v1

    throw v1
.end method

.method public final a(Ljava/lang/Object;)I
    .locals 6
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 316
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->j()V

    .line 318
    if-nez p1, :cond_0

    .line 319
    const/4 v2, 0x0

    .line 330
    :goto_0
    return v2

    .line 321
    :cond_0
    instance-of v2, p1, Lcom/j256/ormlite/misc/BaseDaoEnabled;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 323
    check-cast v1, Lcom/j256/ormlite/misc/BaseDaoEnabled;

    .line 324
    .local v1, "daoEnabled":Lcom/j256/ormlite/misc/BaseDaoEnabled;, "Lcom/j256/ormlite/misc/BaseDaoEnabled<TT;TID;>;"
    invoke-virtual {v1, p0}, Lcom/j256/ormlite/misc/BaseDaoEnabled;->a(Lcom/j256/ormlite/dao/Dao;)V

    .line 326
    .end local v1    # "daoEnabled":Lcom/j256/ormlite/misc/BaseDaoEnabled;, "Lcom/j256/ormlite/misc/BaseDaoEnabled<TT;TID;>;"
    :cond_1
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->f:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2}, Lcom/j256/ormlite/support/ConnectionSource;->a()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 328
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    iget-object v4, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->a:Lcom/j256/ormlite/stmt/StatementExecutor;

    const/4 v2, 0x0

    .line 13455
    iget-object v3, v4, Lcom/j256/ormlite/stmt/StatementExecutor;->f:Lcom/j256/ormlite/stmt/mapped/MappedCreate;

    if-nez v3, :cond_2

    .line 13456
    iget-object v3, v4, Lcom/j256/ormlite/stmt/StatementExecutor;->b:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v5, v4, Lcom/j256/ormlite/stmt/StatementExecutor;->c:Lcom/j256/ormlite/table/TableInfo;

    invoke-static {v3, v5}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->a(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;)Lcom/j256/ormlite/stmt/mapped/MappedCreate;

    move-result-object v3

    iput-object v3, v4, Lcom/j256/ormlite/stmt/StatementExecutor;->f:Lcom/j256/ormlite/stmt/mapped/MappedCreate;

    .line 13458
    :cond_2
    iget-object v3, v4, Lcom/j256/ormlite/stmt/StatementExecutor;->f:Lcom/j256/ormlite/stmt/mapped/MappedCreate;

    iget-object v5, v4, Lcom/j256/ormlite/stmt/StatementExecutor;->b:Lcom/j256/ormlite/db/DatabaseType;

    invoke-virtual {v3, v5, v0, p1, v2}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->a(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I

    move-result v3

    .line 13459
    iget-object v2, v4, Lcom/j256/ormlite/stmt/StatementExecutor;->d:Lcom/j256/ormlite/dao/Dao;

    if-eqz v2, :cond_3

    iget-object v2, v4, Lcom/j256/ormlite/stmt/StatementExecutor;->l:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    .line 13460
    iget-object v2, v4, Lcom/j256/ormlite/stmt/StatementExecutor;->d:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    move v2, v3

    .line 330
    goto :goto_0

    :catchall_0
    move-exception v2

    throw v2
.end method

.method public final a(Lcom/j256/ormlite/stmt/PreparedQuery;I)Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1
    .param p2, "resultFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/PreparedQuery",
            "<TT;>;I)",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 607
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "preparedQuery":Lcom/j256/ormlite/stmt/PreparedQuery;, "Lcom/j256/ormlite/stmt/PreparedQuery<TT;>;"
    invoke-direct {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->j()V

    .line 608
    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/dao/BaseDaoImpl;->b(Lcom/j256/ormlite/stmt/PreparedQuery;I)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->g:Lcom/j256/ormlite/dao/CloseableIterator;

    .line 609
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->g:Lcom/j256/ormlite/dao/CloseableIterator;

    return-object v0
.end method

.method public final a()Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/QueryBuilder",
            "<TT;TID;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 258
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    invoke-direct {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->j()V

    .line 259
    new-instance v0, Lcom/j256/ormlite/stmt/QueryBuilder;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->b:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->e:Lcom/j256/ormlite/table/TableInfo;

    invoke-direct {v0, v1, v2, p0}, Lcom/j256/ormlite/stmt/QueryBuilder;-><init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/dao/Dao;)V

    return-object v0
.end method

.method public final a(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/PreparedQuery",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 236
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "preparedQuery":Lcom/j256/ormlite/stmt/PreparedQuery;, "Lcom/j256/ormlite/stmt/PreparedQuery<TT;>;"
    invoke-direct {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->j()V

    .line 237
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->f:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->e:Lcom/j256/ormlite/table/TableInfo;

    .line 13121
    iget-object v2, v2, Lcom/j256/ormlite/table/TableInfo;->b:Ljava/lang/String;

    .line 237
    invoke-interface {v1, v2}, Lcom/j256/ormlite/support/ConnectionSource;->a(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 239
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, p1, v1}, Lcom/j256/ormlite/stmt/StatementExecutor;->a(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/PreparedStmt;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 241
    return-object v1

    :catchall_0
    move-exception v1

    throw v1
.end method

.method public final a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<CT:",
            "Ljava/lang/Object;",
            ">(",
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

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 720
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TCT;>;"
    invoke-direct {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->j()V

    .line 721
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->a:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->f:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-virtual {v0, v1, p1}, Lcom/j256/ormlite/stmt/StatementExecutor;->a(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/j256/ormlite/dao/Dao$DaoObserver;)V
    .locals 2
    .param p1, "observer"    # Lcom/j256/ormlite/dao/Dao$DaoObserver;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 907
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->k:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 913
    monitor-enter p0

    .line 914
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->k:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 915
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->k:Ljava/util/Map;

    .line 917
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 920
    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->k:Ljava/util/Map;

    sget-object v1, Lcom/j256/ormlite/dao/BaseDaoImpl;->i:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    return-void

    .line 917
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;"
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
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 381
    if-nez p1, :cond_0

    .line 382
    new-instance v2, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    invoke-direct {v2, v3, v3, v3}, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;-><init>(ZZI)V

    .line 391
    :goto_0
    return-object v2

    .line 13746
    :cond_0
    invoke-direct {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->j()V

    .line 13747
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->e:Lcom/j256/ormlite/table/TableInfo;

    .line 14162
    iget-object v2, v2, Lcom/j256/ormlite/table/TableInfo;->e:Lcom/j256/ormlite/field/FieldType;

    .line 13748
    if-nez v2, :cond_1

    .line 13749
    new-instance v2, Ljava/sql/SQLException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Class "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->c:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " does not have an id field"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 13752
    :cond_1
    invoke-virtual {v2, p1}, Lcom/j256/ormlite/field/FieldType;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 386
    .local v0, "id":Ljava/lang/Object;, "TID;"
    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->f(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 387
    :cond_2
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->a(Ljava/lang/Object;)I

    move-result v1

    .line 388
    .local v1, "numRows":I
    new-instance v2, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    invoke-direct {v2, v4, v3, v1}, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;-><init>(ZZI)V

    goto :goto_0

    .line 390
    .end local v1    # "numRows":I
    :cond_3
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->c(Ljava/lang/Object;)I

    move-result v1

    .line 391
    .restart local v1    # "numRows":I
    new-instance v2, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    invoke-direct {v2, v3, v4, v1}, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;-><init>(ZZI)V

    goto :goto_0
.end method

.method public final b()Lcom/j256/ormlite/stmt/UpdateBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/UpdateBuilder",
            "<TT;TID;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 264
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    invoke-direct {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->j()V

    .line 265
    new-instance v0, Lcom/j256/ormlite/stmt/UpdateBuilder;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->b:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->e:Lcom/j256/ormlite/table/TableInfo;

    invoke-direct {v0, v1, v2, p0}, Lcom/j256/ormlite/stmt/UpdateBuilder;-><init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/dao/Dao;)V

    return-object v0
.end method

.method public final b(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/PreparedQuery",
            "<TT;>;)",
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

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 276
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "preparedQuery":Lcom/j256/ormlite/stmt/PreparedQuery;, "Lcom/j256/ormlite/stmt/PreparedQuery<TT;>;"
    invoke-direct {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->j()V

    .line 277
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->a:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->f:Lcom/j256/ormlite/support/ConnectionSource;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/j256/ormlite/stmt/StatementExecutor;->a(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/stmt/PreparedStmt;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/j256/ormlite/dao/Dao$DaoObserver;)V
    .locals 2
    .param p1, "observer"    # Lcom/j256/ormlite/dao/Dao$DaoObserver;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 925
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->k:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 926
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->k:Ljava/util/Map;

    monitor-enter v1

    .line 927
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    monitor-exit v1

    .line 930
    :cond_0
    return-void

    .line 928
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c(Ljava/lang/Object;)I
    .locals 6
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 397
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->j()V

    .line 399
    if-nez p1, :cond_0

    .line 400
    const/4 v2, 0x0

    .line 411
    :goto_0
    return v2

    .line 402
    :cond_0
    instance-of v2, p1, Lcom/j256/ormlite/misc/BaseDaoEnabled;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 404
    check-cast v1, Lcom/j256/ormlite/misc/BaseDaoEnabled;

    .line 405
    .local v1, "daoEnabled":Lcom/j256/ormlite/misc/BaseDaoEnabled;, "Lcom/j256/ormlite/misc/BaseDaoEnabled<TT;TID;>;"
    invoke-virtual {v1, p0}, Lcom/j256/ormlite/misc/BaseDaoEnabled;->a(Lcom/j256/ormlite/dao/Dao;)V

    .line 407
    .end local v1    # "daoEnabled":Lcom/j256/ormlite/misc/BaseDaoEnabled;, "Lcom/j256/ormlite/misc/BaseDaoEnabled<TT;TID;>;"
    :cond_1
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->f:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2}, Lcom/j256/ormlite/support/ConnectionSource;->a()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 409
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    iget-object v4, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->a:Lcom/j256/ormlite/stmt/StatementExecutor;

    const/4 v2, 0x0

    .line 14469
    iget-object v3, v4, Lcom/j256/ormlite/stmt/StatementExecutor;->g:Lcom/j256/ormlite/stmt/mapped/MappedUpdate;

    if-nez v3, :cond_2

    .line 14470
    iget-object v3, v4, Lcom/j256/ormlite/stmt/StatementExecutor;->b:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v5, v4, Lcom/j256/ormlite/stmt/StatementExecutor;->c:Lcom/j256/ormlite/table/TableInfo;

    invoke-static {v3, v5}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->a(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;)Lcom/j256/ormlite/stmt/mapped/MappedUpdate;

    move-result-object v3

    iput-object v3, v4, Lcom/j256/ormlite/stmt/StatementExecutor;->g:Lcom/j256/ormlite/stmt/mapped/MappedUpdate;

    .line 14472
    :cond_2
    iget-object v3, v4, Lcom/j256/ormlite/stmt/StatementExecutor;->g:Lcom/j256/ormlite/stmt/mapped/MappedUpdate;

    invoke-virtual {v3, v0, p1, v2}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->a(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I

    move-result v3

    .line 14473
    iget-object v2, v4, Lcom/j256/ormlite/stmt/StatementExecutor;->d:Lcom/j256/ormlite/dao/Dao;

    if-eqz v2, :cond_3

    iget-object v2, v4, Lcom/j256/ormlite/stmt/StatementExecutor;->l:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    .line 14474
    iget-object v2, v4, Lcom/j256/ormlite/stmt/StatementExecutor;->d:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    move v2, v3

    .line 411
    goto :goto_0

    :catchall_0
    move-exception v2

    throw v2
.end method

.method public final c()Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 539
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->a(I)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public closeableIterator()Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 544
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->a(I)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/Object;)I
    .locals 6
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 444
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->j()V

    .line 446
    if-nez p1, :cond_0

    .line 447
    const/4 v2, 0x0

    .line 458
    :goto_0
    return v2

    .line 449
    :cond_0
    instance-of v2, p1, Lcom/j256/ormlite/misc/BaseDaoEnabled;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 451
    check-cast v1, Lcom/j256/ormlite/misc/BaseDaoEnabled;

    .line 452
    .local v1, "daoEnabled":Lcom/j256/ormlite/misc/BaseDaoEnabled;, "Lcom/j256/ormlite/misc/BaseDaoEnabled<TT;TID;>;"
    invoke-virtual {v1, p0}, Lcom/j256/ormlite/misc/BaseDaoEnabled;->a(Lcom/j256/ormlite/dao/Dao;)V

    .line 454
    .end local v1    # "daoEnabled":Lcom/j256/ormlite/misc/BaseDaoEnabled;, "Lcom/j256/ormlite/misc/BaseDaoEnabled<TT;TID;>;"
    :cond_1
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->f:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->e:Lcom/j256/ormlite/table/TableInfo;

    .line 15121
    iget-object v3, v3, Lcom/j256/ormlite/table/TableInfo;->b:Ljava/lang/String;

    .line 454
    invoke-interface {v2, v3}, Lcom/j256/ormlite/support/ConnectionSource;->a(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 456
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->a:Lcom/j256/ormlite/stmt/StatementExecutor;

    const/4 v3, 0x0

    .line 15515
    iget-object v4, v2, Lcom/j256/ormlite/stmt/StatementExecutor;->i:Lcom/j256/ormlite/stmt/mapped/MappedRefresh;

    if-nez v4, :cond_2

    .line 15516
    iget-object v4, v2, Lcom/j256/ormlite/stmt/StatementExecutor;->b:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v5, v2, Lcom/j256/ormlite/stmt/StatementExecutor;->c:Lcom/j256/ormlite/table/TableInfo;

    invoke-static {v4, v5}, Lcom/j256/ormlite/stmt/mapped/MappedRefresh;->a(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;)Lcom/j256/ormlite/stmt/mapped/MappedRefresh;

    move-result-object v4

    iput-object v4, v2, Lcom/j256/ormlite/stmt/StatementExecutor;->i:Lcom/j256/ormlite/stmt/mapped/MappedRefresh;

    .line 15518
    :cond_2
    iget-object v2, v2, Lcom/j256/ormlite/stmt/StatementExecutor;->i:Lcom/j256/ormlite/stmt/mapped/MappedRefresh;

    invoke-virtual {v2, v0, p1, v3}, Lcom/j256/ormlite/stmt/mapped/MappedRefresh;->b(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    goto :goto_0

    .line 458
    :catchall_0
    move-exception v2

    throw v2
.end method

.method public final d()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 758
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->c:Ljava/lang/Class;

    return-object v0
.end method

.method public final e(Ljava/lang/Object;)I
    .locals 5
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 464
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->j()V

    .line 466
    if-nez p1, :cond_0

    .line 467
    const/4 v1, 0x0

    .line 473
    :goto_0
    return v1

    .line 469
    :cond_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->f:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1}, Lcom/j256/ormlite/support/ConnectionSource;->a()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 471
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->a:Lcom/j256/ormlite/stmt/StatementExecutor;

    const/4 v1, 0x0

    .line 15525
    iget-object v2, v3, Lcom/j256/ormlite/stmt/StatementExecutor;->h:Lcom/j256/ormlite/stmt/mapped/MappedDelete;

    if-nez v2, :cond_1

    .line 15526
    iget-object v2, v3, Lcom/j256/ormlite/stmt/StatementExecutor;->b:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v4, v3, Lcom/j256/ormlite/stmt/StatementExecutor;->c:Lcom/j256/ormlite/table/TableInfo;

    invoke-static {v2, v4}, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->a(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;)Lcom/j256/ormlite/stmt/mapped/MappedDelete;

    move-result-object v2

    iput-object v2, v3, Lcom/j256/ormlite/stmt/StatementExecutor;->h:Lcom/j256/ormlite/stmt/mapped/MappedDelete;

    .line 15528
    :cond_1
    iget-object v2, v3, Lcom/j256/ormlite/stmt/StatementExecutor;->h:Lcom/j256/ormlite/stmt/mapped/MappedDelete;

    invoke-virtual {v2, v0, p1, v1}, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->a(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I

    move-result v2

    .line 15529
    iget-object v1, v3, Lcom/j256/ormlite/stmt/StatementExecutor;->d:Lcom/j256/ormlite/dao/Dao;

    if-eqz v1, :cond_2

    iget-object v1, v3, Lcom/j256/ormlite/stmt/StatementExecutor;->l:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 15530
    iget-object v1, v3, Lcom/j256/ormlite/stmt/StatementExecutor;->d:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    move v1, v2

    .line 473
    goto :goto_0

    :catchall_0
    move-exception v1

    throw v1
.end method

.method public final f()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 898
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->k:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 899
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->k:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/dao/Dao$DaoObserver;

    .line 900
    .local v0, "daoObserver":Lcom/j256/ormlite/dao/Dao$DaoObserver;
    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao$DaoObserver;->a()V

    goto :goto_0

    .line 903
    .end local v0    # "daoObserver":Lcom/j256/ormlite/dao/Dao$DaoObserver;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public final g()Lcom/j256/ormlite/table/TableInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;"
        }
    .end annotation

    .prologue
    .line 1006
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->e:Lcom/j256/ormlite/table/TableInfo;

    return-object v0
.end method

.method public final h()Lcom/j256/ormlite/support/ConnectionSource;
    .locals 1

    .prologue
    .line 1011
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->f:Lcom/j256/ormlite/support/ConnectionSource;

    return-object v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 59
    .line 20539
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->a(I)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    .line 59
    return-object v0
.end method
