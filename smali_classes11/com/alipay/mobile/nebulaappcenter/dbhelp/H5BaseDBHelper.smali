.class public abstract Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;
.super Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
.source "H5BaseDBHelper.java"


# instance fields
.field private KEY_LAST_GWURL:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private h5AppConfigDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h5AppInfoDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h5AppInstallDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "databaseName"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "databaseVersion"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 35
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->getDBLogTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->TAG:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "construct db + "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " with version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method private logDbError(Ljava/lang/String;)V
    .locals 6
    .param p1, "exception"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 257
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 258
    .local v0, "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v0, :cond_0

    .line 259
    const-string/jumbo v1, "h5_nebula_db_exception"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v2

    move-object v4, v2

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_0
    return-void
.end method

.method private reCreateDB(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 113
    :try_start_0
    const-class v1, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInfoBean;

    const/4 v2, 0x1

    invoke-static {p2, v1, v2}, Lcom/j256/ormlite/table/TableUtils;->a(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 114
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "dropTable H5AppInfoBean"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    :try_start_1
    const-class v1, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppPoolBean;

    const/4 v2, 0x1

    invoke-static {p2, v1, v2}, Lcom/j256/ormlite/table/TableUtils;->a(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 123
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "dropTable H5AppPoolBean"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    :goto_1
    :try_start_2
    const-class v1, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;

    const/4 v2, 0x1

    invoke-static {p2, v1, v2}, Lcom/j256/ormlite/table/TableUtils;->a(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 131
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "dropTable H5AppConfigBean"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 138
    :goto_2
    :try_start_3
    const-class v1, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;

    const/4 v2, 0x1

    invoke-static {p2, v1, v2}, Lcom/j256/ormlite/table/TableUtils;->a(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 139
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "dropTable H5AppInstallBean"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 146
    :goto_3
    :try_start_4
    const-class v1, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;

    const/4 v2, 0x1

    invoke-static {p2, v1, v2}, Lcom/j256/ormlite/table/TableUtils;->a(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 147
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "dropTable H5NebulaAppBean"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 154
    :goto_4
    :try_start_5
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 159
    :goto_5
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Can\'t dropTable database"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->logDbError(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 125
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Can\'t dropTable database"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->logDbError(Ljava/lang/String;)V

    goto :goto_1

    .line 132
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 133
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Can\'t dropTable database"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->logDbError(Ljava/lang/String;)V

    goto :goto_2

    .line 140
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 141
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Can\'t dropTable database"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->logDbError(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 148
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 149
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->logDbError(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 155
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .line 156
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->logDbError(Ljava/lang/String;)V

    goto/16 :goto_5
.end method


# virtual methods
.method public declared-synchronized clearAllTable()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 221
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppDaoHelper;->isEnablePartitionWithUserId()Z

    move-result v7

    if-nez v7, :cond_3

    move v4, v5

    .line 222
    .local v4, "needClearTable":Z
    :goto_0
    const/4 v0, 0x0

    .line 223
    .local v0, "currentGWFUrl":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebug()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 224
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getGWFURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 225
    iget-object v7, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->KEY_LAST_GWURL:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getStringConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, "lastGWFUrl":Ljava/lang/String;
    iget-object v7, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "needClearTable currentGWFUrl: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", lastGWFUrl: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 228
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 229
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    move v4, v5

    .line 232
    .end local v3    # "lastGWFUrl":Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz v4, :cond_1

    .line 233
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    const-class v6, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;

    invoke-static {v5, v6}, Lcom/j256/ormlite/table/TableUtils;->b(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 234
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    const-class v6, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;

    invoke-static {v5, v6}, Lcom/j256/ormlite/table/TableUtils;->b(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 235
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "clearAllTable"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebug()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 238
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->KEY_LAST_GWURL:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->setStringConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_1
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "clearMemory"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->getInstance()Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->clearMemory()V

    .line 246
    const-class v5, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 247
    .local v2, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v2, :cond_2

    .line 248
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->clearResourceAppCache()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .end local v0    # "currentGWFUrl":Ljava/lang/String;
    .end local v2    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v4    # "needClearTable":Z
    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    :cond_3
    move v4, v6

    .line 221
    goto/16 :goto_0

    .restart local v0    # "currentGWFUrl":Ljava/lang/String;
    .restart local v3    # "lastGWFUrl":Ljava/lang/String;
    .restart local v4    # "needClearTable":Z
    :cond_4
    move v4, v6

    .line 229
    goto :goto_1

    .line 250
    .end local v0    # "currentGWFUrl":Ljava/lang/String;
    .end local v3    # "lastGWFUrl":Ljava/lang/String;
    .end local v4    # "needClearTable":Z
    :catch_0
    move-exception v1

    .line 251
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "clearAllTable exception"

    invoke-static {v5, v6, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 221
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public close()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 210
    invoke-super {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->close()V

    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->getDBName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " onClose !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iput-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->h5AppInfoDao:Lcom/j256/ormlite/dao/Dao;

    .line 213
    iput-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->h5AppInstallDao:Lcom/j256/ormlite/dao/Dao;

    .line 214
    iput-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->h5AppConfigDao:Lcom/j256/ormlite/dao/Dao;

    .line 215
    return-void
.end method

.method public abstract getDBLogTag()Ljava/lang/String;
.end method

.method public abstract getDBName()Ljava/lang/String;
.end method

.method public getH5AppConfigDao()Lcom/j256/ormlite/dao/Dao;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;",
            "Ljava/lang/Integer;",
            ">;"
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
    .line 175
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->h5AppConfigDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v1, :cond_0

    .line 177
    :try_start_0
    const-class v1, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->h5AppConfigDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->h5AppConfigDao:Lcom/j256/ormlite/dao/Dao;

    return-object v1

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "throwable":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->logDbError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getH5AppInfoDao()Lcom/j256/ormlite/dao/Dao;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;",
            "Ljava/lang/Integer;",
            ">;"
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
    .line 162
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->h5AppInfoDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v1, :cond_0

    .line 164
    :try_start_0
    const-class v1, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->h5AppInfoDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->h5AppInfoDao:Lcom/j256/ormlite/dao/Dao;

    return-object v1

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "throwable":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->logDbError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getH5AppInstallDao()Lcom/j256/ormlite/dao/Dao;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;",
            "Ljava/lang/Integer;",
            ">;"
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
    .line 189
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->h5AppInstallDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v1, :cond_0

    .line 191
    :try_start_0
    const-class v1, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->h5AppInstallDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->h5AppInstallDao:Lcom/j256/ormlite/dao/Dao;

    return-object v1

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "throwable":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->logDbError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    :try_start_0
    const-class v1, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;

    invoke-static {p2, v1}, Lcom/j256/ormlite/table/TableUtils;->a(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 58
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "createTable H5NebulaAppBean"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    :try_start_1
    const-class v1, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;

    invoke-static {p2, v1}, Lcom/j256/ormlite/table/TableUtils;->a(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 66
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "createTable H5AppConfigBean"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    :goto_1
    :try_start_2
    const-class v1, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;

    invoke-static {p2, v1}, Lcom/j256/ormlite/table/TableUtils;->a(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 74
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "createTable H5AppInstallBean"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 82
    :goto_2
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->getInstance()Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->setDefaultConfig()V

    .line 83
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "createTable setDefaultConfig"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 88
    :goto_3
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Can\'t create database"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->logDbError(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 68
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Can\'t create database"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->logDbError(Ljava/lang/String;)V

    goto :goto_1

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 76
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Can\'t create database"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->logDbError(Ljava/lang/String;)V

    goto :goto_2

    .line 84
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 85
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Can\'t create database"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->logDbError(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6570\u636e\u5e93\u964d\u7ea7 onDowngrade oldVersion "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " newVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 95
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 203
    invoke-super {p0, p1}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->getDBName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " onOpen !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p3, "oldVersion"    # I
    .param p4, "newVersion"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u6570\u636e\u5e93\u5347\u7ea7 onUpgrade, oldVersion:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",newVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    if-eq p3, p4, :cond_0

    .line 103
    invoke-static {p1, p3, p4}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBCompatHelper;->onVersionChange(Landroid/database/sqlite/SQLiteDatabase;II)Z

    move-result v0

    .line 104
    .local v0, "compatResult":Z
    if-nez v0, :cond_0

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->reCreateDB(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V

    .line 108
    .end local v0    # "compatResult":Z
    :cond_0
    return-void
.end method
