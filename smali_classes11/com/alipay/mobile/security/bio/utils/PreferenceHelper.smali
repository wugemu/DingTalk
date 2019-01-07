.class public Lcom/alipay/mobile/security/bio/utils/PreferenceHelper;
.super Ljava/lang/Object;
.source "PreferenceHelper.java"


# static fields
.field public static final KEY_FACEDETECT_SERVER_CONFIGS:Ljava/lang/String; = "facedetect_server_configs"

.field public static final KEY_FACEDETECT_SERVER_CONFIGS_VERSION:Ljava/lang/String; = "facedetect_server_configs_version"

.field public static final KEY_FACEDETECT_SOUND_ENABLE:Ljava/lang/String; = "facedetect_sound_enable"

.field private static a:Landroid/content/SharedPreferences$Editor;

.field private static b:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    sput-object v0, Lcom/alipay/mobile/security/bio/utils/PreferenceHelper;->a:Landroid/content/SharedPreferences$Editor;

    .line 21
    sput-object v0, Lcom/alipay/mobile/security/bio/utils/PreferenceHelper;->b:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 24
    sget-object v0, Lcom/alipay/mobile/security/bio/utils/PreferenceHelper;->a:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 25
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/security/bio/utils/PreferenceHelper;->a:Landroid/content/SharedPreferences$Editor;

    .line 26
    :cond_0
    sget-object v0, Lcom/alipay/mobile/security/bio/utils/PreferenceHelper;->a:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 30
    sget-object v0, Lcom/alipay/mobile/security/bio/utils/PreferenceHelper;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 31
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/security/bio/utils/PreferenceHelper;->b:Landroid/content/SharedPreferences;

    .line 32
    :cond_0
    sget-object v0, Lcom/alipay/mobile/security/bio/utils/PreferenceHelper;->b:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static getServerConfig(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const-string/jumbo v1, "facedetect_server_configs"

    .line 46
    .local v1, "prfNameOrg":Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/SignHelper;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "prfName":Ljava/lang/String;
    invoke-static {p0}, Lcom/alipay/mobile/security/bio/utils/PreferenceHelper;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getServerConfigVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const-string/jumbo v1, "facedetect_server_configs_version"

    .line 71
    .local v1, "prfNameOrg":Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/SignHelper;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "prfName":Ljava/lang/String;
    invoke-static {p0}, Lcom/alipay/mobile/security/bio/utils/PreferenceHelper;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getSoundEnable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const-string/jumbo v1, "facedetect_sound_enable"

    .line 58
    .local v1, "prfNameOrg":Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/SignHelper;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "prfName":Ljava/lang/String;
    invoke-static {p0}, Lcom/alipay/mobile/security/bio/utils/PreferenceHelper;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method public static getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {p1}, Lcom/alipay/mobile/security/bio/utils/SignHelper;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "prfName":Ljava/lang/String;
    invoke-static {p0}, Lcom/alipay/mobile/security/bio/utils/PreferenceHelper;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static setServerConfig(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serverConfig"    # Ljava/lang/String;

    .prologue
    .line 51
    const-string/jumbo v1, "facedetect_server_configs"

    .line 52
    .local v1, "prfNameOrg":Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/SignHelper;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "prfName":Ljava/lang/String;
    invoke-static {p0}, Lcom/alipay/mobile/security/bio/utils/PreferenceHelper;->a(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 54
    return-void
.end method

.method public static setServerConfigVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string/jumbo v1, "facedetect_server_configs_version"

    .line 77
    .local v1, "prfNameOrg":Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/SignHelper;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "prfName":Ljava/lang/String;
    invoke-static {p0}, Lcom/alipay/mobile/security/bio/utils/PreferenceHelper;->a(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    return-void
.end method

.method public static setSoundEnable(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 63
    const-string/jumbo v1, "facedetect_sound_enable"

    .line 64
    .local v1, "prfNameOrg":Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/SignHelper;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "prfName":Ljava/lang/String;
    invoke-static {p0}, Lcom/alipay/mobile/security/bio/utils/PreferenceHelper;->a(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 66
    return-void
.end method

.method public static setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {p1}, Lcom/alipay/mobile/security/bio/utils/SignHelper;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "prfName":Ljava/lang/String;
    invoke-static {p0}, Lcom/alipay/mobile/security/bio/utils/PreferenceHelper;->a(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 43
    return-void
.end method
