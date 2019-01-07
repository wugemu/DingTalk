.class public Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;
.super Ljava/lang/Object;
.source "H5DaoTemplate.java"


# static fields
.field private static final EMPTY_USER_ID:Ljava/lang/String; = "empty_user_id"

.field private static final TAG:Ljava/lang/String; = "H5DaoTemplate"

.field private static userIdCache:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;->userIdCache:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 58
    sget-object v2, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;->userIdCache:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    .line 60
    .local v0, "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    if-eqz v0, :cond_2

    .line 61
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "userId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    const-string/jumbo v2, "H5DaoTemplate"

    const-string/jumbo v3, "getUserId null"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string/jumbo v2, "empty_user_id"

    .line 76
    .end local v1    # "userId":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 67
    .restart local v1    # "userId":Ljava/lang/String;
    :cond_0
    sput-object v1, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;->userIdCache:Ljava/lang/String;

    .line 74
    .end local v1    # "userId":Ljava/lang/String;
    :cond_1
    :goto_1
    const-string/jumbo v2, "H5DaoTemplate"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "current user userIdCache : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;->userIdCache:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    sget-object v2, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;->userIdCache:Ljava/lang/String;

    goto :goto_0

    .line 70
    :cond_2
    const-string/jumbo v2, "empty_user_id"

    sput-object v2, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;->userIdCache:Ljava/lang/String;

    goto :goto_1
.end method

.method public static onSwitchAccount()V
    .locals 2

    .prologue
    .line 83
    const-string/jumbo v1, ""

    sput-object v1, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;->userIdCache:Ljava/lang/String;

    .line 84
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    .line 85
    .local v0, "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;->getUserId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;->userIdCache:Ljava/lang/String;

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    const-string/jumbo v1, "empty_user_id"

    sput-object v1, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;->userIdCache:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected execute(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 23
    .local p1, "executor":Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;, "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<TT;>;"
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil;->getOnLineDBHelperInstance()Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;

    move-result-object v0

    .line 25
    .local v0, "dbHelper":Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;
    :try_start_0
    invoke-interface {p1, v0}, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;->execute(Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 30
    :goto_0
    return-object v2

    .line 26
    :catch_0
    move-exception v1

    .line 27
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "H5DaoTemplate"

    const-string/jumbo v3, "execute error!"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    invoke-static {v1}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil;->logDbError(Ljava/lang/Throwable;)V

    .line 30
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected executeDB(Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;Z)Ljava/lang/Object;
    .locals 4
    .param p2, "useDev"    # Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor",
            "<TT;>;Z)TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 37
    .local p1, "executor":Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;, "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<TT;>;"
    if-eqz p2, :cond_0

    .line 38
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil;->getDevDBHelperInstance()Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;

    move-result-object v0

    .line 44
    .local v0, "dbHelper":Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;
    :goto_0
    :try_start_0
    invoke-interface {p1, v0}, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;->execute(Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 49
    :goto_1
    return-object v2

    .line 40
    .end local v0    # "dbHelper":Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil;->getOnLineDBHelperInstance()Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;

    move-result-object v0

    .restart local v0    # "dbHelper":Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;
    goto :goto_0

    .line 45
    :catch_0
    move-exception v1

    .line 46
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "H5DaoTemplate"

    const-string/jumbo v3, "executeDB error!"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    invoke-static {v1}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil;->logDbError(Ljava/lang/Throwable;)V

    .line 49
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected getDBHelper(Z)Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;
    .locals 1
    .param p1, "useDev"    # Z

    .prologue
    .line 53
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil;->getDevDBHelperInstance()Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil;->getOnLineDBHelperInstance()Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;

    move-result-object v0

    goto :goto_0
.end method
