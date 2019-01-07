.class Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBCompatHelper;
.super Ljava/lang/Object;
.source "H5DBCompatHelper.java"


# static fields
.field static final DATABASE_VERSION:I = 0xd

.field private static final TAG:Ljava/lang/String; = "H5DBCompatHelper"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static onVersionChange(Landroid/database/sqlite/SQLiteDatabase;II)Z
    .locals 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "oldVersion"    # I
    .param p2, "newVersion"    # I

    .prologue
    const/4 v1, 0x0

    .line 44
    const-string/jumbo v2, "H5DBCompatHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onVersionChange, oldVersion:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",newVersion:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 47
    .local v0, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const-string/jumbo v2, "NO"

    const-string/jumbo v3, "h5_upgrade_compat_db"

    invoke-interface {v0, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v1

    .line 53
    :cond_1
    if-le p2, p1, :cond_0

    .line 55
    const/16 v2, 0x8

    if-lt p1, v2, :cond_0

    .line 59
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 61
    :pswitch_0
    const-string/jumbo v2, "H5DBCompatHelper"

    const-string/jumbo v3, "add for 8 -> 9"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string/jumbo v2, "ALTER table nebula_app_install add column installPath TEXT;"

    invoke-static {p0, v2}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 64
    :pswitch_1
    const-string/jumbo v2, "H5DBCompatHelper"

    const-string/jumbo v3, "add for 9 -> 10"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string/jumbo v2, "ALTER table nebula_app_info_table add column nbl_id TEXT;"

    invoke-static {p0, v2}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 67
    :pswitch_2
    const-string/jumbo v2, "H5DBCompatHelper"

    const-string/jumbo v3, "add for 10 -> 11"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string/jumbo v2, "ALTER table nebula_app_info_table add column slogan TEXT;"

    invoke-static {p0, v2}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 70
    :pswitch_3
    const-string/jumbo v2, "H5DBCompatHelper"

    const-string/jumbo v3, "add for 11 -> 12"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string/jumbo v2, "ALTER table nebula_app_info_table add column unavailable_reason TEXT;"

    invoke-static {p0, v2}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 73
    :pswitch_4
    const-string/jumbo v2, "H5DBCompatHelper"

    const-string/jumbo v3, "add for 12 -> 13"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ALTER table nebula_app_install add column user_id TEXT default "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {p0, v1}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ALTER table nebula_app_info_table add column user_id TEXT default "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-static {p0, v1}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DBUtil;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 88
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 80
    :cond_2
    const-string/jumbo v2, "H5DBCompatHelper"

    const-string/jumbo v3, "not login, just clear table and recreate"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
