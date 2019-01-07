.class Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao$4;
.super Ljava/lang/Object;
.source "H5AppInstallDao.java"

# interfaces
.implements Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;->deleteAppInstall(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;Ljava/lang/String;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao$4;->this$0:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao$4;->val$appId:Ljava/lang/String;

    iput-wide p3, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao$4;->val$time:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;)Ljava/lang/Integer;
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

    .line 172
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->getH5AppInstallDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    .line 173
    .local v1, "h5AppPoolDao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->a()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    .line 174
    .local v2, "queryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;Ljava/lang/Integer;>;"
    invoke-static {v2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppDaoHelper;->getWhereWithQueryUserIdOrNot(Lcom/j256/ormlite/stmt/StatementBuilder;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "install_appId"

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao$4;->val$appId:Ljava/lang/String;

    .line 175
    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 176
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->c()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 177
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;

    .line 178
    .local v0, "h5AppInstallBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;
    if-nez v0, :cond_1

    .line 185
    .end local v0    # "h5AppInstallBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;
    :cond_0
    :goto_0
    return-object v10

    .line 181
    .restart local v0    # "h5AppInstallBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;
    :cond_1
    const-string/jumbo v3, "H5AppInstallDao"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "deleteAppInstall userId: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " appId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao$4;->val$appId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " cost:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao$4;->val$time:J

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 181
    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
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
    .line 169
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao$4;->execute(Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
