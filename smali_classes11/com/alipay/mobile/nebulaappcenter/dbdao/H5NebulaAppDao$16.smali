.class Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$16;
.super Ljava/lang/Object;
.source "H5NebulaAppDao.java"

# interfaces
.implements Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->clearUpdateTime(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

.field final synthetic val$appId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    .prologue
    .line 888
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$16;->this$0:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$16;->val$appId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;)Ljava/lang/Object;
    .locals 10
    .param p1, "dbHelper"    # Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 891
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->getH5AppInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v3

    .line 892
    .local v3, "h5AppInfoDao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->a()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    .line 893
    .local v4, "queryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;Ljava/lang/Integer;>;"
    invoke-static {v4}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppDaoHelper;->getWhereWithQueryUserIdOrNot(Lcom/j256/ormlite/stmt/StatementBuilder;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    const-string/jumbo v7, "app_id"

    iget-object v8, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$16;->val$appId:Ljava/lang/String;

    .line 894
    invoke-virtual {v6, v7, v8}, Lcom/j256/ormlite/stmt/Where;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 897
    :try_start_0
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->b()Ljava/util/List;

    move-result-object v0

    .line 898
    .local v0, "appBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 920
    .end local v0    # "appBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;>;"
    :cond_0
    :goto_0
    return-object v9

    .line 901
    .restart local v0    # "appBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;>;"
    :cond_1
    new-instance v1, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$16$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$16$1;-><init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$16;)V

    .line 907
    .local v1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;>;"
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 909
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;

    .line 910
    .local v5, "updateAppBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;
    const-string/jumbo v6, "0"

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setUpdate_app_time(Ljava/lang/String;)V

    .line 911
    const-string/jumbo v6, "H5NebulaAppDao"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "clearUpdateTime appId : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getApp_id()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " version : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 912
    invoke-virtual {v5}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 911
    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    invoke-interface {v3, v5}, Lcom/j256/ormlite/dao/Dao;->c(Ljava/lang/Object;)I

    .line 916
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->getInstance()Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$16;->val$appId:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->deleteAppInfoFromMemory(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 917
    .end local v0    # "appBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;>;"
    .end local v1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;>;"
    .end local v5    # "updateAppBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;
    :catch_0
    move-exception v2

    .line 918
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "H5NebulaAppDao"

    invoke-static {v6, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
