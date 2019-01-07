.class public Lcom/j256/ormlite/dao/RuntimeExceptionDao;
.super Ljava/lang/Object;
.source "RuntimeExceptionDao.java"

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
.field private static final a:Lcom/j256/ormlite/logger/Log$Level;

.field private static final c:Lcom/j256/ormlite/logger/Logger;


# instance fields
.field private b:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;TID;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    sput-object v0, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->a:Lcom/j256/ormlite/logger/Log$Level;

    .line 47
    const-class v0, Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->a(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->c:Lcom/j256/ormlite/logger/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/dao/Dao;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;TID;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/j256/ormlite/dao/RuntimeExceptionDao;, "Lcom/j256/ormlite/dao/RuntimeExceptionDao<TT;TID;>;"
    .local p1, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;TID;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->b:Lcom/j256/ormlite/dao/Dao;

    .line 51
    return-void
.end method

.method private static a(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 8
    .param p0, "e"    # Ljava/lang/Exception;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 932
    sget-object v0, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->c:Lcom/j256/ormlite/logger/Logger;

    sget-object v1, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->a:Lcom/j256/ormlite/logger/Log$Level;

    .line 1509
    sget-object v4, Lcom/j256/ormlite/logger/Logger;->a:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->a:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->a:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->a(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 933
    return-void
.end method


# virtual methods
.method public final a(Lcom/j256/ormlite/stmt/PreparedUpdate;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/PreparedUpdate",
            "<TT;>;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 313
    .local p0, "this":Lcom/j256/ormlite/dao/RuntimeExceptionDao;, "Lcom/j256/ormlite/dao/RuntimeExceptionDao<TT;TID;>;"
    .local p1, "preparedUpdate":Lcom/j256/ormlite/stmt/PreparedUpdate;, "Lcom/j256/ormlite/stmt/PreparedUpdate<TT;>;"
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, p1}, Lcom/j256/ormlite/dao/Dao;->a(Lcom/j256/ormlite/stmt/PreparedUpdate;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "update threw exception on: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 316
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 235
    .local p0, "this":Lcom/j256/ormlite/dao/RuntimeExceptionDao;, "Lcom/j256/ormlite/dao/RuntimeExceptionDao<TT;TID;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, p1}, Lcom/j256/ormlite/dao/Dao;->a(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "create threw exception on: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 238
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Lcom/j256/ormlite/stmt/PreparedQuery;I)Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 3
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 467
    .local p0, "this":Lcom/j256/ormlite/dao/RuntimeExceptionDao;, "Lcom/j256/ormlite/dao/RuntimeExceptionDao<TT;TID;>;"
    .local p1, "preparedQuery":Lcom/j256/ormlite/stmt/PreparedQuery;, "Lcom/j256/ormlite/stmt/PreparedQuery<TT;>;"
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, p1, p2}, Lcom/j256/ormlite/dao/Dao;->a(Lcom/j256/ormlite/stmt/PreparedQuery;I)Lcom/j256/ormlite/dao/CloseableIterator;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "iterator threw exception on: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 470
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a()Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/QueryBuilder",
            "<TT;TID;>;"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "this":Lcom/j256/ormlite/dao/RuntimeExceptionDao;, "Lcom/j256/ormlite/dao/RuntimeExceptionDao<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->a()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    .local p0, "this":Lcom/j256/ormlite/dao/RuntimeExceptionDao;, "Lcom/j256/ormlite/dao/RuntimeExceptionDao<TT;TID;>;"
    .local p1, "preparedQuery":Lcom/j256/ormlite/stmt/PreparedQuery;, "Lcom/j256/ormlite/stmt/PreparedQuery<TT;>;"
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, p1}, Lcom/j256/ormlite/dao/Dao;->a(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "queryForFirst threw exception on: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 97
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<CT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TCT;>;)TCT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 598
    .local p0, "this":Lcom/j256/ormlite/dao/RuntimeExceptionDao;, "Lcom/j256/ormlite/dao/RuntimeExceptionDao<TT;TID;>;"
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TCT;>;"
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, p1}, Lcom/j256/ormlite/dao/Dao;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 599
    :catch_0
    move-exception v0

    .line 600
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "callBatchTasks threw exception on: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 601
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Lcom/j256/ormlite/dao/Dao$DaoObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/j256/ormlite/dao/Dao$DaoObserver;

    .prologue
    .line 913
    .local p0, "this":Lcom/j256/ormlite/dao/RuntimeExceptionDao;, "Lcom/j256/ormlite/dao/RuntimeExceptionDao<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->a(Lcom/j256/ormlite/dao/Dao$DaoObserver;)V

    .line 914
    return-void
.end method

.method public final b(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 274
    .local p0, "this":Lcom/j256/ormlite/dao/RuntimeExceptionDao;, "Lcom/j256/ormlite/dao/RuntimeExceptionDao<TT;TID;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, p1}, Lcom/j256/ormlite/dao/Dao;->b(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "createOrUpdate threw exception on: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 277
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final b()Lcom/j256/ormlite/stmt/UpdateBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/UpdateBuilder",
            "<TT;TID;>;"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "this":Lcom/j256/ormlite/dao/RuntimeExceptionDao;, "Lcom/j256/ormlite/dao/RuntimeExceptionDao<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->b()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v0

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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 222
    .local p0, "this":Lcom/j256/ormlite/dao/RuntimeExceptionDao;, "Lcom/j256/ormlite/dao/RuntimeExceptionDao<TT;TID;>;"
    .local p1, "preparedQuery":Lcom/j256/ormlite/stmt/PreparedQuery;, "Lcom/j256/ormlite/stmt/PreparedQuery<TT;>;"
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, p1}, Lcom/j256/ormlite/dao/Dao;->b(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "query threw exception on: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 225
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final b(Lcom/j256/ormlite/dao/Dao$DaoObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/j256/ormlite/dao/Dao$DaoObserver;

    .prologue
    .line 918
    .local p0, "this":Lcom/j256/ormlite/dao/RuntimeExceptionDao;, "Lcom/j256/ormlite/dao/RuntimeExceptionDao<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->b(Lcom/j256/ormlite/dao/Dao$DaoObserver;)V

    .line 919
    return-void
.end method

.method public final c(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 287
    .local p0, "this":Lcom/j256/ormlite/dao/RuntimeExceptionDao;, "Lcom/j256/ormlite/dao/RuntimeExceptionDao<TT;TID;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, p1}, Lcom/j256/ormlite/dao/Dao;->c(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "update threw exception on: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 290
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
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
    .line 403
    .local p0, "this":Lcom/j256/ormlite/dao/RuntimeExceptionDao;, "Lcom/j256/ormlite/dao/RuntimeExceptionDao<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->c()Lcom/j256/ormlite/dao/CloseableIterator;

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
    .line 408
    .local p0, "this":Lcom/j256/ormlite/dao/RuntimeExceptionDao;, "Lcom/j256/ormlite/dao/RuntimeExceptionDao<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->closeableIterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 326
    .local p0, "this":Lcom/j256/ormlite/dao/RuntimeExceptionDao;, "Lcom/j256/ormlite/dao/RuntimeExceptionDao<TT;TID;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, p1}, Lcom/j256/ormlite/dao/Dao;->d(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "refresh threw exception on: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 329
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
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
    .line 644
    .local p0, "this":Lcom/j256/ormlite/dao/RuntimeExceptionDao;, "Lcom/j256/ormlite/dao/RuntimeExceptionDao<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->d()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 339
    .local p0, "this":Lcom/j256/ormlite/dao/RuntimeExceptionDao;, "Lcom/j256/ormlite/dao/RuntimeExceptionDao<TT;TID;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, p1}, Lcom/j256/ormlite/dao/Dao;->e(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "delete threw exception on: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 342
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 923
    .local p0, "this":Lcom/j256/ormlite/dao/RuntimeExceptionDao;, "Lcom/j256/ormlite/dao/RuntimeExceptionDao<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->f()V

    .line 924
    return-void
.end method

.method public final h()Lcom/j256/ormlite/support/ConnectionSource;
    .locals 1

    .prologue
    .line 908
    .local p0, "this":Lcom/j256/ormlite/dao/RuntimeExceptionDao;, "Lcom/j256/ormlite/dao/RuntimeExceptionDao<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->h()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    return-object v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Lcom/j256/ormlite/dao/RuntimeExceptionDao;, "Lcom/j256/ormlite/dao/RuntimeExceptionDao<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->c()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method
