.class Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$2;
.super Ljava/lang/Object;
.source "H5NebulaAppDao.java"

# interfaces
.implements Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->updateAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
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

.field final synthetic val$column:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/Object;

.field final synthetic val$version:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$2;->this$0:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$2;->val$column:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$2;->val$value:Ljava/lang/Object;

    iput-object p4, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$2;->val$appId:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$2;->val$version:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;)Ljava/lang/Integer;
    .locals 5
    .param p1, "dbHelper"    # Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 235
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->getH5AppInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 237
    .local v0, "h5AppInfoDao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->b()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v1

    .line 238
    .local v1, "updateBuilder":Lcom/j256/ormlite/stmt/UpdateBuilder;, "Lcom/j256/ormlite/stmt/UpdateBuilder<Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$2;->val$column:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$2;->val$value:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/UpdateBuilder;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/UpdateBuilder;

    .line 239
    invoke-static {v1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppDaoHelper;->getWhereWithQueryUserIdOrNot(Lcom/j256/ormlite/stmt/StatementBuilder;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "app_id"

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$2;->val$appId:Ljava/lang/String;

    .line 240
    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    .line 241
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->a()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "version"

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$2;->val$version:Ljava/lang/String;

    .line 242
    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 244
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/UpdateBuilder;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic execute(Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$2;->execute(Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
