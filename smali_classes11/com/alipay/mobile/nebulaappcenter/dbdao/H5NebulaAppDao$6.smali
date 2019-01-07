.class Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$6;
.super Ljava/lang/Object;
.source "H5NebulaAppDao.java"

# interfaces
.implements Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getCanDeleteAppPooIdList(Ljava/lang/String;)Ljava/util/List;
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
        "Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$installVersion:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$6;->this$0:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$6;->val$installVersion:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$6;->val$appId:Ljava/lang/String;

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
    .line 416
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$6;->execute(Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;)Ljava/util/List;
    .locals 6
    .param p1, "dbHelper"    # Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 419
    .line 420
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->getH5AppInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 422
    .local v0, "h5AppPoolDao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->a()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    .line 424
    .local v1, "queryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$6;->val$installVersion:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 425
    invoke-static {v1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppDaoHelper;->getWhereWithQueryUserIdOrNot(Lcom/j256/ormlite/stmt/StatementBuilder;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "app_id"

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$6;->val$appId:Ljava/lang/String;

    .line 426
    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    .line 427
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->a()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "is_mapping"

    .line 428
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 439
    :goto_0
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->c()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 440
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->b()Ljava/util/List;

    move-result-object v2

    .line 442
    :goto_1
    return-object v2

    .line 431
    :cond_0
    invoke-static {v1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppDaoHelper;->getWhereWithQueryUserIdOrNot(Lcom/j256/ormlite/stmt/StatementBuilder;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "app_id"

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$6;->val$appId:Ljava/lang/String;

    .line 432
    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    .line 433
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->a()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "is_mapping"

    .line 434
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    .line 435
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->a()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    .line 1340
    new-instance v3, Lcom/j256/ormlite/stmt/query/Not;

    invoke-direct {v3}, Lcom/j256/ormlite/stmt/query/Not;-><init>()V

    .line 1341
    invoke-virtual {v2, v3}, Lcom/j256/ormlite/stmt/Where;->a(Lcom/j256/ormlite/stmt/query/Clause;)V

    .line 1342
    invoke-virtual {v2, v3}, Lcom/j256/ormlite/stmt/Where;->a(Lcom/j256/ormlite/stmt/query/NeedsFutureClause;)V

    .line 436
    const-string/jumbo v3, "version"

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$6;->val$installVersion:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    goto :goto_0

    .line 442
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
