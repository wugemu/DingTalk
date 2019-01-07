.class Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$3;
.super Ljava/lang/Object;
.source "H5NebulaAppDao.java"

# interfaces
.implements Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->saveAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V
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

.field final synthetic val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$3;->this$0:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$3;->val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;)Ljava/lang/Object;
    .locals 8
    .param p1, "dbHelper"    # Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;
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

    .line 274
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->getH5AppInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    .line 275
    .local v1, "h5AppInfoDao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->a()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    .line 276
    .local v2, "queryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;Ljava/lang/Integer;>;"
    invoke-static {v2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppDaoHelper;->getWhereWithQueryUserIdOrNot(Lcom/j256/ormlite/stmt/StatementBuilder;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string/jumbo v5, "app_id"

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$3;->val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v6, v6, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    .line 277
    invoke-virtual {v4, v5, v6}, Lcom/j256/ormlite/stmt/Where;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 278
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->a()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string/jumbo v5, "version"

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$3;->val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v6, v6, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    .line 279
    invoke-virtual {v4, v5, v6}, Lcom/j256/ormlite/stmt/Where;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 280
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;

    .line 281
    .local v0, "h5AppInfoBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;
    const/4 v3, 0x0

    .line 282
    .local v3, "useDev":Z
    instance-of v4, p1, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DevDBOpenHelper;

    if-eqz v4, :cond_0

    .line 283
    const/4 v3, 0x1

    .line 286
    :cond_0
    if-eqz v0, :cond_1

    .line 287
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$3;->val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-static {v0, v4, v3}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInfoUtil;->infoToBean(Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Z)Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/j256/ormlite/dao/Dao;->c(Ljava/lang/Object;)I

    .line 291
    :goto_0
    return-object v7

    .line 289
    :cond_1
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$3;->val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-static {v7, v4, v3}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInfoUtil;->infoToBean(Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Z)Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/j256/ormlite/dao/Dao;->a(Ljava/lang/Object;)I

    goto :goto_0
.end method
