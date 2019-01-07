.class Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$18;
.super Ljava/lang/Object;
.source "H5AppConfigDao.java"

# interfaces
.implements Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->setDefaultConfig()V
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
.field final synthetic this$0:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    .prologue
    .line 526
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$18;->this$0:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;)Ljava/lang/Object;
    .locals 6
    .param p1, "dbHelper"    # Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 529
    .line 530
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->getH5AppConfigDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    .line 532
    .local v1, "h5AppConfigBeanIntegerDao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->a()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    .line 535
    .local v2, "queryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->c()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 536
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;

    .line 540
    .local v0, "h5AppConfigBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;
    :goto_0
    if-eqz v0, :cond_0

    .line 541
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;->setApp_pool_limit(I)V

    .line 542
    const-wide v4, 0x4082c00000000000L    # 600.0

    invoke-virtual {v0, v4, v5}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;->setLimitReqRate(D)V

    .line 543
    const-wide v4, 0x409c200000000000L    # 1800.0

    invoke-virtual {v0, v4, v5}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;->setNormalReqRate(D)V

    .line 544
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;->setStrictReqRate(I)V

    .line 545
    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->b(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    .line 547
    :cond_0
    const/4 v3, 0x0

    return-object v3

    .line 538
    .end local v0    # "h5AppConfigBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;
    :cond_1
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;-><init>()V

    .restart local v0    # "h5AppConfigBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;
    goto :goto_0
.end method
