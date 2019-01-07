.class Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao$1;
.super Ljava/lang/Object;
.source "H5AppInstallDao.java"

# interfaces
.implements Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;->createOrUpdateAppInstalled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$time:J

.field final synthetic val$version:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao$1;->this$0:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao$1;->val$appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao$1;->val$version:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao$1;->val$path:Ljava/lang/String;

    iput-wide p5, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao$1;->val$time:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;)Ljava/lang/Object;
    .locals 11
    .param p1, "dbHelper"    # Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x0

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->getH5AppInstallDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    .line 51
    .local v1, "h5AppInstallDao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->a()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    .line 52
    .local v2, "queryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;Ljava/lang/Integer;>;"
    invoke-static {v2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppDaoHelper;->getWhereWithQueryUserIdOrNot(Lcom/j256/ormlite/stmt/StatementBuilder;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "install_appId"

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao$1;->val$appId:Ljava/lang/String;

    .line 53
    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 56
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->c()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 57
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;

    .line 62
    .local v0, "h5AppInstallBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;
    :goto_0
    if-nez v0, :cond_1

    .line 72
    :goto_1
    return-object v10

    .line 59
    .end local v0    # "h5AppInstallBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;-><init>()V

    .restart local v0    # "h5AppInstallBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;
    goto :goto_0

    .line 65
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;->setInstall_userId(Ljava/lang/String;)V

    .line 66
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao$1;->val$appId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;->setInstall_appId(Ljava/lang/String;)V

    .line 67
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao$1;->val$version:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;->setInstall_version(Ljava/lang/String;)V

    .line 68
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao$1;->val$path:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;->setInstallPath(Ljava/lang/String;)V

    .line 69
    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->b(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    .line 70
    const-string/jumbo v3, "H5AppInstallDao"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateAppInstalled: userId: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " appId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao$1;->val$appId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " version:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao$1;->val$version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao$1;->val$path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  spend createOrUpdateAppInstalled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao$1;->val$time:J

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 70
    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
