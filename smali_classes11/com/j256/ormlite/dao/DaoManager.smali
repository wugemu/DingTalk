.class public Lcom/j256/ormlite/dao/DaoManager;
.super Ljava/lang/Object;
.source "DaoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;,
        Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;",
            "Lcom/j256/ormlite/dao/Dao",
            "<**>;>;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;",
            "Lcom/j256/ormlite/dao/Dao",
            "<**>;>;"
        }
    .end annotation
.end field

.field private static d:Lcom/j256/ormlite/logger/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    sput-object v0, Lcom/j256/ormlite/dao/DaoManager;->a:Ljava/util/Map;

    .line 32
    sput-object v0, Lcom/j256/ormlite/dao/DaoManager;->b:Ljava/util/Map;

    .line 33
    sput-object v0, Lcom/j256/ormlite/dao/DaoManager;->c:Ljava/util/Map;

    .line 35
    const-class v0, Lcom/j256/ormlite/dao/DaoManager;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->a(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/dao/DaoManager;->d:Lcom/j256/ormlite/logger/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    return-void
.end method

.method private static a(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;)Lcom/j256/ormlite/dao/Dao;
    .locals 2
    .param p0, "key"    # Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;",
            ")",
            "Lcom/j256/ormlite/dao/Dao",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 267
    sget-object v1, Lcom/j256/ormlite/dao/DaoManager;->b:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 268
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/j256/ormlite/dao/DaoManager;->b:Ljava/util/Map;

    .line 270
    :cond_0
    sget-object v1, Lcom/j256/ormlite/dao/DaoManager;->b:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/dao/Dao;

    .line 271
    .local v0, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    if-nez v0, :cond_1

    .line 272
    const/4 v0, 0x0

    .line 274
    .end local v0    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    :cond_1
    return-object v0
.end method

.method public static declared-synchronized a(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;
    .locals 3
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;*>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<TT;>;)TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    const-class v1, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 127
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "connectionSource argument cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 129
    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Lcom/j256/ormlite/dao/DaoManager;->b(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized a(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;
    .locals 18
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;*>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class",
            "<TT;>;)TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v15, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v15

    if-nez p0, :cond_0

    .line 44
    :try_start_0
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v16, "connectionSource argument cannot be null"

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :catchall_0
    move-exception v14

    monitor-exit v15

    throw v14

    .line 46
    :cond_0
    :try_start_1
    new-instance v13, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v13, v0, v1}, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V

    .line 47
    .local v13, "key":Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;
    invoke-static {v13}, Lcom/j256/ormlite/dao/DaoManager;->a(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;)Lcom/j256/ormlite/dao/Dao;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 48
    .local v5, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    if-eqz v5, :cond_1

    .line 51
    move-object v3, v5

    .local v3, "castDao":Lcom/j256/ormlite/dao/Dao;, "TD;"
    move-object v6, v5

    .line 102
    .end local v5    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    .local v6, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    :goto_0
    monitor-exit v15

    return-object v6

    .line 1314
    .end local v3    # "castDao":Lcom/j256/ormlite/dao/Dao;, "TD;"
    .end local v6    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    .restart local v5    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    :cond_1
    :try_start_2
    sget-object v14, Lcom/j256/ormlite/dao/DaoManager;->a:Ljava/util/Map;

    if-nez v14, :cond_2

    .line 1315
    const/4 v5, 0x0

    .line 55
    .end local v5    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    :goto_1
    check-cast v5, Lcom/j256/ormlite/dao/Dao;

    .line 56
    .restart local v5    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    if-eqz v5, :cond_4

    .line 59
    move-object v3, v5

    .restart local v3    # "castDao":Lcom/j256/ormlite/dao/Dao;, "TD;"
    move-object v6, v5

    .end local v5    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    .restart local v6    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    goto :goto_0

    .line 1319
    .end local v3    # "castDao":Lcom/j256/ormlite/dao/Dao;, "TD;"
    .end local v6    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    .restart local v5    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    :cond_2
    sget-object v14, Lcom/j256/ormlite/dao/DaoManager;->a:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/j256/ormlite/table/DatabaseTableConfig;

    .line 1321
    if-nez v14, :cond_3

    .line 1322
    const/4 v5, 0x0

    goto :goto_1

    .line 1326
    :cond_3
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/j256/ormlite/dao/DaoManager;->b(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v5

    goto :goto_1

    .line 62
    :cond_4
    const-class v14, Lcom/j256/ormlite/table/DatabaseTable;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    check-cast v10, Lcom/j256/ormlite/table/DatabaseTable;

    .line 63
    .local v10, "databaseTable":Lcom/j256/ormlite/table/DatabaseTable;
    if-eqz v10, :cond_5

    invoke-interface {v10}, Lcom/j256/ormlite/table/DatabaseTable;->daoClass()Ljava/lang/Class;

    move-result-object v14

    const-class v16, Ljava/lang/Void;

    move-object/from16 v0, v16

    if-eq v14, v0, :cond_5

    invoke-interface {v10}, Lcom/j256/ormlite/table/DatabaseTable;->daoClass()Ljava/lang/Class;

    move-result-object v14

    const-class v16, Lcom/j256/ormlite/dao/BaseDaoImpl;

    move-object/from16 v0, v16

    if-ne v14, v0, :cond_7

    .line 66
    :cond_5
    invoke-interface/range {p0 .. p0}, Lcom/j256/ormlite/support/ConnectionSource;->b()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v11

    .line 67
    .local v11, "databaseType":Lcom/j256/ormlite/db/DatabaseType;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v11, v0, v1}, Lcom/j256/ormlite/db/DatabaseType;->a(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/table/DatabaseTableConfig;

    move-result-object v4

    .line 69
    .local v4, "config":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    if-nez v4, :cond_6

    .line 70
    invoke-static/range {p0 .. p1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->a(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v9

    .line 74
    .local v9, "daoTmp":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;*>;"
    :goto_2
    move-object v5, v9

    .line 75
    sget-object v14, Lcom/j256/ormlite/dao/DaoManager;->d:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v16, "created dao for class {} with reflection"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v14, v0, v1}, Lcom/j256/ormlite/logger/Logger;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    .end local v4    # "config":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    .end local v9    # "daoTmp":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;*>;"
    .end local v11    # "databaseType":Lcom/j256/ormlite/db/DatabaseType;
    :goto_3
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/j256/ormlite/dao/DaoManager;->a(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/Dao;)V

    .line 102
    move-object v3, v5

    .restart local v3    # "castDao":Lcom/j256/ormlite/dao/Dao;, "TD;"
    move-object v6, v5

    .end local v5    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    .restart local v6    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    goto :goto_0

    .line 72
    .end local v3    # "castDao":Lcom/j256/ormlite/dao/Dao;, "TD;"
    .end local v6    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    .restart local v4    # "config":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    .restart local v5    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    .restart local v11    # "databaseType":Lcom/j256/ormlite/db/DatabaseType;
    :cond_6
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/j256/ormlite/dao/BaseDaoImpl;->a(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v9

    .restart local v9    # "daoTmp":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;*>;"
    goto :goto_2

    .line 77
    .end local v4    # "config":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    .end local v9    # "daoTmp":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;*>;"
    .end local v11    # "databaseType":Lcom/j256/ormlite/db/DatabaseType;
    :cond_7
    invoke-interface {v10}, Lcom/j256/ormlite/table/DatabaseTable;->daoClass()Ljava/lang/Class;

    move-result-object v7

    .line 78
    .local v7, "daoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v14, 0x2

    new-array v2, v14, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p0, v2, v14

    const/4 v14, 0x1

    aput-object p1, v2, v14

    .line 80
    .local v2, "arguments":[Ljava/lang/Object;
    invoke-static {v7, v2}, Lcom/j256/ormlite/dao/DaoManager;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    .line 81
    .local v8, "daoConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-nez v8, :cond_8

    .line 83
    const/4 v14, 0x1

    new-array v2, v14, [Ljava/lang/Object;

    .end local v2    # "arguments":[Ljava/lang/Object;
    const/4 v14, 0x0

    aput-object p0, v2, v14

    .line 84
    .restart local v2    # "arguments":[Ljava/lang/Object;
    invoke-static {v7, v2}, Lcom/j256/ormlite/dao/DaoManager;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    .line 85
    if-nez v8, :cond_8

    .line 86
    new-instance v14, Ljava/sql/SQLException;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "Could not find public constructor with ConnectionSource and optional Class parameters "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ".  Missing static on class?"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    :cond_8
    :try_start_3
    invoke-virtual {v8, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Lcom/j256/ormlite/dao/Dao;

    move-object v5, v0

    .line 93
    sget-object v14, Lcom/j256/ormlite/dao/DaoManager;->d:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v16, "created dao for class {} from constructor"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v14, v0, v1}, Lcom/j256/ormlite/logger/Logger;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 94
    :catch_0
    move-exception v12

    .line 95
    .local v12, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "Could not call the constructor in class "

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v12}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v14

    throw v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private static a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 291
    .local p0, "daoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Constructor;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 292
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 293
    .local v6, "paramsTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v7, v6

    array-length v8, p1

    if-ne v7, v8, :cond_2

    .line 294
    const/4 v5, 0x1

    .line 295
    .local v5, "match":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v7, v6

    if-ge v2, v7, :cond_0

    .line 296
    aget-object v7, v6, v2

    aget-object v8, p1, v2

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 297
    const/4 v5, 0x0

    .line 301
    :cond_0
    if-eqz v5, :cond_2

    .line 306
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "i":I
    .end local v5    # "match":Z
    .end local v6    # "paramsTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_2
    return-object v1

    .line 295
    .restart local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v2    # "i":I
    .restart local v5    # "match":Z
    .restart local v6    # "paramsTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 291
    .end local v2    # "i":I
    .end local v5    # "match":Z
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 306
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v6    # "paramsTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public static declared-synchronized a()V
    .locals 2

    .prologue
    .line 218
    const-class v1, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 219
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 220
    const/4 v0, 0x0

    sput-object v0, Lcom/j256/ormlite/dao/DaoManager;->b:Ljava/util/Map;

    .line 222
    :cond_0
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->c:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 223
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 224
    const/4 v0, 0x0

    sput-object v0, Lcom/j256/ormlite/dao/DaoManager;->c:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :cond_1
    monitor-exit v1

    return-void

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    .locals 1
    .param p0, "key"    # Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;",
            "Lcom/j256/ormlite/dao/Dao",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/j256/ormlite/dao/DaoManager;->b:Ljava/util/Map;

    .line 250
    :cond_0
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->b:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    return-void
.end method

.method private static a(Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    .locals 1
    .param p0, "key"    # Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;",
            "Lcom/j256/ormlite/dao/Dao",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 260
    .local p1, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 261
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/j256/ormlite/dao/DaoManager;->c:Ljava/util/Map;

    .line 263
    :cond_0
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->c:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    return-void
.end method

.method public static declared-synchronized a(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    .locals 3
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/dao/Dao",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    const-class v1, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 169
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "connectionSource argument cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 171
    :cond_0
    :try_start_1
    new-instance v0, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->d()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V

    invoke-static {v0, p1}, Lcom/j256/ormlite/dao/DaoManager;->a(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p0, "configs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/j256/ormlite/table/DatabaseTableConfig<*>;>;"
    const-class v4, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/j256/ormlite/dao/DaoManager;->a:Ljava/util/Map;

    if-nez v3, :cond_0

    .line 235
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 239
    .local v2, "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lcom/j256/ormlite/table/DatabaseTableConfig<*>;>;"
    :goto_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/table/DatabaseTableConfig;

    .line 3085
    .local v0, "config":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<*>;"
    iget-object v3, v0, Lcom/j256/ormlite/table/DatabaseTableConfig;->a:Ljava/lang/Class;

    .line 240
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v3, Lcom/j256/ormlite/dao/DaoManager;->d:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v5, "Loaded configuration for {}"

    .line 4085
    iget-object v6, v0, Lcom/j256/ormlite/table/DatabaseTableConfig;->a:Ljava/lang/Class;

    .line 241
    invoke-virtual {v3, v5, v6}, Lcom/j256/ormlite/logger/Logger;->c(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 234
    .end local v0    # "config":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<*>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lcom/j256/ormlite/table/DatabaseTableConfig<*>;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 237
    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/HashMap;

    sget-object v3, Lcom/j256/ormlite/dao/DaoManager;->a:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .restart local v2    # "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lcom/j256/ormlite/table/DatabaseTableConfig<*>;>;"
    goto :goto_0

    .line 243
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    sput-object v2, Lcom/j256/ormlite/dao/DaoManager;->a:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    monitor-exit v4

    return-void
.end method

.method private static b(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;
    .locals 17
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;*>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<TT;>;)TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 334
    .local p1, "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    new-instance v13, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v13, v0, v1}, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    .line 4279
    .local v13, "tableKey":Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;
    sget-object v14, Lcom/j256/ormlite/dao/DaoManager;->c:Ljava/util/Map;

    if-nez v14, :cond_0

    .line 4280
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    sput-object v14, Lcom/j256/ormlite/dao/DaoManager;->c:Ljava/util/Map;

    .line 4282
    :cond_0
    sget-object v14, Lcom/j256/ormlite/dao/DaoManager;->c:Ljava/util/Map;

    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/j256/ormlite/dao/Dao;

    .line 4283
    if-nez v14, :cond_1

    .line 4284
    const/4 v6, 0x0

    .line 337
    .local v6, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    :goto_0
    if-eqz v6, :cond_2

    .line 340
    move-object v3, v6

    .local v3, "castDao":Lcom/j256/ormlite/dao/Dao;, "TD;"
    move-object v7, v6

    .line 387
    .end local v6    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    .local v7, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    :goto_1
    return-object v7

    .end local v3    # "castDao":Lcom/j256/ormlite/dao/Dao;, "TD;"
    .end local v7    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    :cond_1
    move-object v6, v14

    .line 4286
    goto :goto_0

    .line 5085
    .restart local v6    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    :cond_2
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/j256/ormlite/table/DatabaseTableConfig;->a:Ljava/lang/Class;

    .line 345
    .local v10, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v4, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v10}, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V

    .line 346
    .local v4, "classKey":Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;
    invoke-static {v4}, Lcom/j256/ormlite/dao/DaoManager;->a(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v6

    .line 347
    if-eqz v6, :cond_3

    .line 349
    invoke-static {v13, v6}, Lcom/j256/ormlite/dao/DaoManager;->a(Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;Lcom/j256/ormlite/dao/Dao;)V

    .line 352
    move-object v3, v6

    .restart local v3    # "castDao":Lcom/j256/ormlite/dao/Dao;, "TD;"
    move-object v7, v6

    .end local v6    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    .restart local v7    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    goto :goto_1

    .line 6085
    .end local v3    # "castDao":Lcom/j256/ormlite/dao/Dao;, "TD;"
    .end local v7    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    .restart local v6    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    :cond_3
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/j256/ormlite/table/DatabaseTableConfig;->a:Ljava/lang/Class;

    .line 356
    const-class v15, Lcom/j256/ormlite/table/DatabaseTable;

    invoke-virtual {v14, v15}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    check-cast v11, Lcom/j256/ormlite/table/DatabaseTable;

    .line 357
    .local v11, "databaseTable":Lcom/j256/ormlite/table/DatabaseTable;
    if-eqz v11, :cond_4

    invoke-interface {v11}, Lcom/j256/ormlite/table/DatabaseTable;->daoClass()Ljava/lang/Class;

    move-result-object v14

    const-class v15, Ljava/lang/Void;

    if-eq v14, v15, :cond_4

    invoke-interface {v11}, Lcom/j256/ormlite/table/DatabaseTable;->daoClass()Ljava/lang/Class;

    move-result-object v14

    const-class v15, Lcom/j256/ormlite/dao/BaseDaoImpl;

    if-ne v14, v15, :cond_6

    .line 359
    :cond_4
    invoke-static/range {p0 .. p1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->a(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v9

    .line 360
    .local v9, "daoTmp":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;*>;"
    move-object v6, v9

    .line 377
    .end local v9    # "daoTmp":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;*>;"
    :goto_2
    invoke-static {v13, v6}, Lcom/j256/ormlite/dao/DaoManager;->a(Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;Lcom/j256/ormlite/dao/Dao;)V

    .line 378
    sget-object v14, Lcom/j256/ormlite/dao/DaoManager;->d:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v15, "created dao for class {} from table config"

    invoke-virtual {v14, v15, v10}, Lcom/j256/ormlite/logger/Logger;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 381
    invoke-static {v4}, Lcom/j256/ormlite/dao/DaoManager;->a(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v14

    if-nez v14, :cond_5

    .line 382
    invoke-static {v4, v6}, Lcom/j256/ormlite/dao/DaoManager;->a(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;Lcom/j256/ormlite/dao/Dao;)V

    .line 387
    :cond_5
    move-object v3, v6

    .restart local v3    # "castDao":Lcom/j256/ormlite/dao/Dao;, "TD;"
    move-object v7, v6

    .end local v6    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    .restart local v7    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    goto :goto_1

    .line 362
    .end local v3    # "castDao":Lcom/j256/ormlite/dao/Dao;, "TD;"
    .end local v7    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    .restart local v6    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    :cond_6
    invoke-interface {v11}, Lcom/j256/ormlite/table/DatabaseTable;->daoClass()Ljava/lang/Class;

    move-result-object v8

    .line 363
    .local v8, "daoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v14, 0x2

    new-array v2, v14, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p0, v2, v14

    const/4 v14, 0x1

    aput-object p1, v2, v14

    .line 364
    .local v2, "arguments":[Ljava/lang/Object;
    invoke-static {v8, v2}, Lcom/j256/ormlite/dao/DaoManager;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 365
    .local v5, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-nez v5, :cond_7

    .line 366
    new-instance v14, Ljava/sql/SQLException;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "Could not find public constructor with ConnectionSource, DatabaseTableConfig parameters in class "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 371
    :cond_7
    :try_start_0
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    check-cast v6, Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v6    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    goto :goto_2

    .line 372
    .end local v6    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    :catch_0
    move-exception v12

    .line 373
    .local v12, "e":Ljava/lang/Exception;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "Could not call the constructor in class "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v12}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v14

    throw v14
.end method

.method public static declared-synchronized b(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    .locals 3
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/dao/Dao",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    const-class v1, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 180
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "connectionSource argument cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 182
    :cond_0
    :try_start_1
    new-instance v0, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->d()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V

    .line 2254
    sget-object v2, Lcom/j256/ormlite/dao/DaoManager;->b:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 2255
    sget-object v2, Lcom/j256/ormlite/dao/DaoManager;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    :cond_1
    monitor-exit v1

    return-void
.end method
