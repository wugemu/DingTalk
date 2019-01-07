.class Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao$3;
.super Ljava/lang/Object;
.source "H5AppInstallDao.java"

# interfaces
.implements Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;->findInstallAppVersion(Ljava/lang/String;)Ljava/lang/String;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;

.field final synthetic val$appId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao$3;->this$0:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao$3;->val$appId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao$3;->execute(Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;)Ljava/lang/String;
    .locals 9
    .param p1, "dbHelper"    # Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->getH5AppInstallDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    .line 134
    .local v1, "h5AppInstallDao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->a()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    .line 135
    .local v3, "queryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;Ljava/lang/Integer;>;"
    invoke-static {v3}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppDaoHelper;->getWhereWithQueryUserIdOrNot(Lcom/j256/ormlite/stmt/StatementBuilder;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    const-string/jumbo v7, "install_appId"

    iget-object v8, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao$3;->val$appId:Ljava/lang/String;

    .line 136
    invoke-virtual {v6, v7, v8}, Lcom/j256/ormlite/stmt/Where;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 137
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->c()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 138
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;

    .line 139
    .local v0, "h5AppInstallBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;
    if-nez v0, :cond_1

    move-object v4, v5

    .line 152
    .end local v0    # "h5AppInstallBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;
    :cond_0
    :goto_0
    return-object v4

    .line 142
    .restart local v0    # "h5AppInstallBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;->getInstallPath()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;->getInstall_version()Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, "ver":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 146
    const-string/jumbo v6, "H5AppInstallDao"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "path "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is not exist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v6, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao$3;->this$0:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;

    iget-object v7, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao$3;->val$appId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;->deleteAppInstall(Ljava/lang/String;)V

    move-object v4, v5

    .line 148
    goto :goto_0

    .end local v0    # "h5AppInstallBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;
    .end local v2    # "path":Ljava/lang/String;
    .end local v4    # "ver":Ljava/lang/String;
    :cond_2
    move-object v4, v5

    .line 152
    goto :goto_0
.end method
