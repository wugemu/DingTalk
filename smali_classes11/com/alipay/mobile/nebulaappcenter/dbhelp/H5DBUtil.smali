.class public Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil;
.super Ljava/lang/Object;
.source "H5DBUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil$DevDbHelperHolder;,
        Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil$OnlineDbSingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "H5DBUtil"

.field private static sIsDevDbInUse:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil;->sIsDevDbInUse:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static devDBIsUsing()Z
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil;->sIsDevDbInUse:Z

    return v0
.end method

.method public static enableNotQueryInstallApp()Z
    .locals 3

    .prologue
    .line 45
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 46
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 47
    const-string/jumbo v2, "h5_enableNotQueryInstallApp"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    const/4 v2, 0x0

    .line 52
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static enableSaveAppInfoList()Z
    .locals 3

    .prologue
    .line 56
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 57
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 58
    const-string/jumbo v2, "h5_enableSaveAppInfoList"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "yes"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    const/4 v2, 0x1

    .line 63
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getDevDBHelperInstance()Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil;->sIsDevDbInUse:Z

    .line 29
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil$DevDbHelperHolder;->access$100()Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;

    move-result-object v0

    return-object v0
.end method

.method public static getOnLineDBHelperInstance()Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil$OnlineDbSingletonHolder;->access$000()Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;

    move-result-object v0

    return-object v0
.end method

.method public static isLogin()Z
    .locals 4

    .prologue
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
    const-string/jumbo v1, "H5DBUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isLogin : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;->isLogin()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;->isLogin()Z

    move-result v1

    .line 90
    :goto_0
    return v1

    .line 89
    :cond_0
    const-string/jumbo v1, "H5DBUtil"

    const-string/jumbo v2, "h5LoginProvider == null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static logDbError(Ljava/lang/Throwable;)V
    .locals 6
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v2, 0x0

    .line 77
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 78
    .local v0, "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v0, :cond_0

    .line 79
    const-string/jumbo v1, "h5_nebula_db_exception"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v2

    move-object v4, v2

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_0
    return-void
.end method

.method public static safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 4
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "stmt"    # Ljava/lang/String;

    .prologue
    .line 68
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    const-string/jumbo v1, "H5DBUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "execSQL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil;->logDbError(Ljava/lang/Throwable;)V

    .line 72
    const-string/jumbo v1, "H5DBUtil"

    const-string/jumbo v2, "execSQL error!"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
