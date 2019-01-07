.class Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$4;
.super Ljava/lang/Object;
.source "H5NebulaAppDao.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->saveAppInfoList(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

.field final synthetic val$appInfoList:Ljava/util/List;

.field final synthetic val$h5AppInfoDao:Lcom/j256/ormlite/dao/Dao;

.field final synthetic val$useDev:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;Ljava/util/List;Lcom/j256/ormlite/dao/Dao;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$4;->this$0:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$4;->val$appInfoList:Ljava/util/List;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$4;->val$h5AppInfoDao:Lcom/j256/ormlite/dao/Dao;

    iput-boolean p4, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$4;->val$useDev:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 342
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$4;->val$appInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 343
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$4;->val$h5AppInfoDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->a()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    .line 344
    .local v2, "queryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;Ljava/lang/Integer;>;"
    invoke-static {v2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppDaoHelper;->getWhereWithQueryUserIdOrNot(Lcom/j256/ormlite/stmt/StatementBuilder;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string/jumbo v5, "app_id"

    iget-object v6, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    .line 345
    invoke-virtual {v4, v5, v6}, Lcom/j256/ormlite/stmt/Where;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 346
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->a()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string/jumbo v5, "version"

    iget-object v6, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    .line 347
    invoke-virtual {v4, v5, v6}, Lcom/j256/ormlite/stmt/Where;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 348
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;

    .line 349
    .local v1, "h5AppInfoBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;
    if-eqz v1, :cond_0

    .line 350
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$4;->val$h5AppInfoDao:Lcom/j256/ormlite/dao/Dao;

    iget-boolean v5, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$4;->val$useDev:Z

    invoke-static {v1, v0, v5}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInfoUtil;->infoToBean(Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Z)Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/j256/ormlite/dao/Dao;->c(Ljava/lang/Object;)I

    .line 354
    :goto_1
    const-string/jumbo v4, "H5NebulaAppDao"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "saveAppInfo "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " useDev : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$4;->val$useDev:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 352
    :cond_0
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$4;->val$h5AppInfoDao:Lcom/j256/ormlite/dao/Dao;

    iget-boolean v5, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$4;->val$useDev:Z

    invoke-static {v7, v0, v5}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInfoUtil;->infoToBean(Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Z)Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/j256/ormlite/dao/Dao;->a(Ljava/lang/Object;)I

    goto :goto_1

    .line 357
    .end local v0    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v1    # "h5AppInfoBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;
    .end local v2    # "queryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;Ljava/lang/Integer;>;"
    :cond_1
    return-object v7
.end method
