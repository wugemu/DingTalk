.class public Lcom/ali/user/enterprise/base/info/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# static fields
.field public static final INITED_ACTION:Ljava/lang/String; = "com.ali.user.sdk.biz.inited.action"

.field private static INSTANCE:Lcom/ali/user/enterprise/base/info/AppInfo; = null

.field private static final TAG:Ljava/lang/String; = "login.AppInfo"


# instance fields
.field private isApdIdDegrade:Z

.field private mAppVersion:Ljava/lang/String;

.field private mUmidToken:Ljava/lang/String;

.field private mUtdid:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/user/enterprise/base/info/AppInfo;->isApdIdDegrade:Z

    .line 37
    return-void
.end method

.method static synthetic access$002(Lcom/ali/user/enterprise/base/info/AppInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/ali/user/enterprise/base/info/AppInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/ali/user/enterprise/base/info/AppInfo;->mUmidToken:Ljava/lang/String;

    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/ali/user/enterprise/base/info/AppInfo;
    .locals 2

    .prologue
    .line 121
    const-class v1, Lcom/ali/user/enterprise/base/info/AppInfo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/enterprise/base/info/AppInfo;->INSTANCE:Lcom/ali/user/enterprise/base/info/AppInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ali/user/enterprise/base/info/AppInfo;

    invoke-direct {v0}, Lcom/ali/user/enterprise/base/info/AppInfo;-><init>()V

    sput-object v0, Lcom/ali/user/enterprise/base/info/AppInfo;->INSTANCE:Lcom/ali/user/enterprise/base/info/AppInfo;

    .line 122
    :cond_0
    sget-object v0, Lcom/ali/user/enterprise/base/info/AppInfo;->INSTANCE:Lcom/ali/user/enterprise/base/info/AppInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initBroadcast()V
    .locals 2

    .prologue
    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.ali.user.sdk.biz.inited.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 118
    return-void
.end method


# virtual methods
.method public getAndroidAppVersion()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "android_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/enterprise/base/info/AppInfo;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 192
    iget-object v3, p0, Lcom/ali/user/enterprise/base/info/AppInfo;->mAppVersion:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 194
    :try_start_0
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 195
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 196
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 197
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v3, p0, Lcom/ali/user/enterprise/base/info/AppInfo;->mAppVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 204
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/ali/user/enterprise/base/info/AppInfo;->mAppVersion:Ljava/lang/String;

    return-object v3

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 200
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    const-string/jumbo v0, "android_ea_1.0.0"

    return-object v0
.end method

.method public getUmidToken()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 172
    iget-object v2, p0, Lcom/ali/user/enterprise/base/info/AppInfo;->mUmidToken:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    :try_start_0
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/dp/DeviceSecuritySDK;->getInstance(Landroid/content/Context;)Lcom/taobao/dp/DeviceSecuritySDK;

    move-result-object v0

    .line 177
    .local v0, "deviceSecuritySDK":Lcom/taobao/dp/DeviceSecuritySDK;
    invoke-virtual {v0}, Lcom/taobao/dp/DeviceSecuritySDK;->getSecurityToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ali/user/enterprise/base/info/AppInfo;->mUmidToken:Ljava/lang/String;

    .line 179
    const-string/jumbo v2, "login.AppInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "umidToken = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ali/user/enterprise/base/info/AppInfo;->mUmidToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v2, p0, Lcom/ali/user/enterprise/base/info/AppInfo;->mUmidToken:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/ali/user/enterprise/base/info/AppInfo;->isApdIdDegrade:Z

    if-nez v2, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/info/AppInfo;->initBroadcast()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v0    # "deviceSecuritySDK":Lcom/taobao/dp/DeviceSecuritySDK;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/ali/user/enterprise/base/info/AppInfo;->mUmidToken:Ljava/lang/String;

    return-object v2

    .line 184
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getUtdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/ali/user/enterprise/base/info/AppInfo;->mUtdid:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ali/user/enterprise/base/info/AppInfo;->init(Z)V

    .line 41
    return-void
.end method

.method public init(Z)V
    .locals 9
    .param p1, "degrade"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/ali/user/enterprise/base/info/AppInfo;->isApdIdDegrade:Z

    .line 46
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getDataProvider()Lcom/ali/user/enterprise/base/provider/IDataProvider;

    move-result-object v6

    invoke-interface {v6}, Lcom/ali/user/enterprise/base/provider/IDataProvider;->getEnvType()I

    move-result v2

    .line 47
    .local v2, "index":I
    const/4 v3, 0x0

    .line 48
    .local v3, "mode":I
    packed-switch v2, :pswitch_data_0

    .line 67
    :goto_0
    invoke-static {}, Lcom/ali/user/enterprise/base/storage/SecurityGuardManagerWraper;->getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 73
    invoke-static {}, Lcom/ali/user/enterprise/base/storage/SecurityGuardManagerWraper;->getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getUMIDComp()Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;

    move-result-object v5

    .line 75
    .local v5, "umidComponent":Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;
    if-eqz v5, :cond_0

    .line 76
    move-object v1, v5

    .line 78
    .local v1, "finalUmidComponent":Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;
    :try_start_0
    new-instance v6, Lcom/ali/user/enterprise/base/info/AppInfo$1;

    invoke-direct {v6, p0}, Lcom/ali/user/enterprise/base/info/AppInfo$1;-><init>(Lcom/ali/user/enterprise/base/info/AppInfo;)V

    invoke-interface {v1, v3, v6}, Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;->initUMID(ILcom/alibaba/wireless/security/open/umid/IUMIDInitListenerEx;)V
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v1    # "finalUmidComponent":Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;
    :cond_0
    :goto_1
    const-string/jumbo v6, "login.AppInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "init mUmidToken="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/ali/user/enterprise/base/info/AppInfo;->mUmidToken:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .end local v5    # "umidComponent":Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/ali/user/enterprise/base/info/AppInfo;->mUtdid:Ljava/lang/String;

    .line 100
    const-string/jumbo v6, "login.AppInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "init mUtdid="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/ali/user/enterprise/base/info/AppInfo;->mUtdid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 106
    :goto_2
    :try_start_2
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/info/AppInfo;->initBroadcast()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 111
    :goto_3
    return-void

    .line 50
    :pswitch_0
    const/4 v3, 0x2

    .line 51
    goto :goto_0

    .line 53
    :pswitch_1
    const/4 v3, 0x2

    .line 54
    goto :goto_0

    .line 56
    :pswitch_2
    const/4 v3, 0x0

    .line 57
    goto :goto_0

    .line 59
    :pswitch_3
    const/4 v3, 0x0

    .line 60
    goto :goto_0

    .line 62
    :pswitch_4
    const/4 v3, 0x2

    goto :goto_0

    .line 89
    .restart local v1    # "finalUmidComponent":Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;
    .restart local v5    # "umidComponent":Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    goto :goto_1

    .line 101
    .end local v0    # "e":Lcom/alibaba/wireless/security/open/SecException;
    .end local v1    # "finalUmidComponent":Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;
    .end local v5    # "umidComponent":Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;
    :catch_1
    move-exception v4

    .line 102
    .local v4, "t":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 107
    .end local v4    # "t":Ljava/lang/Throwable;
    :catch_2
    move-exception v4

    .line 108
    .restart local v4    # "t":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 48
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
