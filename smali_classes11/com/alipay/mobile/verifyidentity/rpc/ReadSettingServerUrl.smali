.class public Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;
.super Ljava/lang/Object;
.source "ReadSettingServerUrl.java"


# static fields
.field private static a:Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string/jumbo v0, "https://mobilegw.alipay.com/mgw.htm"

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;->b:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, "http://amdc.alipay.com/query"

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;->c:Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;
    .locals 2

    .prologue
    .line 24
    const-class v1, Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;->a:Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;-><init>()V

    sput-object v0, Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;->a:Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;

    .line 27
    :cond_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;->a:Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 89
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 90
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 91
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getValue.  cursor exist.  uri=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]  ret=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :cond_0
    :goto_0
    return-object p2

    .line 95
    :cond_1
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static isDebug(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 43
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x4000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 45
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 47
    const/4 v0, 0x1

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 52
    :catch_0
    move-exception v1

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isDebug exception.  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public final getGWFURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 65
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "mobilegw.url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 77
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    .line 73
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    const-string/jumbo v0, "content://com.alipay.setting/GWFServerUrl"

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public getmUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setmUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;->b:Ljava/lang/String;

    .line 36
    return-void
.end method
