.class Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao$2;
.super Ljava/lang/Object;
.source "H5AppInstallDao.java"

# interfaces
.implements Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;->getInstalledApp()Ljava/util/Map;
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
        "Ljava/util/List",
        "<",
        "Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao$2;->this$0:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao;

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
    .line 82
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInstallDao$2;->execute(Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;)Ljava/util/List;
    .locals 3
    .param p1, "dbHelper"    # Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->getH5AppInstallDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 89
    .local v0, "h5AppInstallDao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->a()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    .line 90
    .local v1, "queryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;Ljava/lang/Integer;>;"
    invoke-static {v1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppDaoHelper;->handleQueryUserId(Lcom/j256/ormlite/stmt/StatementBuilder;)V

    .line 91
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->b()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method
