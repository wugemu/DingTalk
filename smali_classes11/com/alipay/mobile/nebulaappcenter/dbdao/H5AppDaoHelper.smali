.class public Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppDaoHelper;
.super Ljava/lang/Object;
.source "H5AppDaoHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5AppDaoHelper"

.field public static final USER_ID_COLUMN_NAME:Ljava/lang/String; = "user_id"

.field private static sEnablePartitionWithUserId:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppDaoHelper;->sEnablePartitionWithUserId:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWhereWithQueryUserIdOrNot(Lcom/j256/ormlite/stmt/StatementBuilder;)Lcom/j256/ormlite/stmt/Where;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/stmt/StatementBuilder",
            "<TT;TS;>;)",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TS;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "originalBuilder":Lcom/j256/ormlite/stmt/StatementBuilder;, "Lcom/j256/ormlite/stmt/StatementBuilder<TT;TS;>;"
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppDaoHelper;->isEnablePartitionWithUserId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/StatementBuilder;->f()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v1, "user_id"

    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/Where;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->a()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/StatementBuilder;->f()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    goto :goto_0
.end method

.method public static handleQueryUserId(Lcom/j256/ormlite/stmt/StatementBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/stmt/StatementBuilder",
            "<TT;TS;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "originalBuilder":Lcom/j256/ormlite/stmt/StatementBuilder;, "Lcom/j256/ormlite/stmt/StatementBuilder<TT;TS;>;"
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppDaoHelper;->isEnablePartitionWithUserId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/StatementBuilder;->f()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v1, "user_id"

    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/Where;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 42
    :cond_0
    return-void
.end method

.method public static isEnablePartitionWithUserId()Z
    .locals 4

    .prologue
    .line 46
    sget-object v2, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppDaoHelper;->sEnablePartitionWithUserId:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    .line 47
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 48
    .local v1, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-nez v1, :cond_1

    .line 49
    const-string/jumbo v2, "H5AppDaoHelper"

    const-string/jumbo v3, "h5ConfigProvider == null"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v2, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppDaoHelper;->sEnablePartitionWithUserId:Ljava/lang/Boolean;

    .line 60
    :cond_0
    :goto_0
    sget-object v2, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppDaoHelper;->sEnablePartitionWithUserId:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 52
    :cond_1
    const-string/jumbo v2, "h5_enableAppPartitionWithUserId"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "configStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 54
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v2, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppDaoHelper;->sEnablePartitionWithUserId:Ljava/lang/Boolean;

    goto :goto_0

    .line 56
    :cond_2
    const-string/jumbo v2, "NO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppDaoHelper;->sEnablePartitionWithUserId:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static updateSwitch()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppDaoHelper;->sEnablePartitionWithUserId:Ljava/lang/Boolean;

    .line 65
    return-void
.end method
