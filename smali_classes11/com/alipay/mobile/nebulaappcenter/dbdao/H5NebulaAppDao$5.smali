.class Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$5;
.super Ljava/lang/Object;
.source "H5NebulaAppDao.java"

# interfaces
.implements Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->deleteAppInfo(Ljava/lang/String;Ljava/lang/String;)V
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$version:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$5;->this$0:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$5;->val$appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$5;->val$version:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;)Ljava/lang/Integer;
    .locals 7
    .param p1, "dbHelper"    # Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 375
    .line 376
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->getH5AppInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    .line 378
    .local v1, "h5AppInfoDao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->a()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    .line 379
    .local v2, "queryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;Ljava/lang/Integer;>;"
    invoke-static {v2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppDaoHelper;->getWhereWithQueryUserIdOrNot(Lcom/j256/ormlite/stmt/StatementBuilder;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "app_id"

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$5;->val$appId:Ljava/lang/String;

    .line 380
    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    .line 381
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->a()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "version"

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$5;->val$version:Ljava/lang/String;

    .line 382
    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 383
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->c()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 384
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;

    .line 385
    .local v0, "h5AppInfoBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;
    if-nez v0, :cond_1

    .line 391
    .end local v0    # "h5AppInfoBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;
    :cond_0
    :goto_0
    return-object v6

    .line 388
    .restart local v0    # "h5AppInfoBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;
    :cond_1
    const-string/jumbo v3, "H5NebulaAppDao"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "deleteAppInfo:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$5;->val$appId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$5;->val$version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->e(Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public bridge synthetic execute(Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 372
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$5;->execute(Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
