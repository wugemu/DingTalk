.class public Lcom/ali/user/open/core/config/ConfigManager;
.super Ljava/lang/Object;


# static fields
.field public static APP_KEY_INDEX:I

.field public static DAILY_APP_KEY_INDEX:I

.field public static DEBUG:Z

.field public static ICBU_LOGIN_HOST:Ljava/lang/String;

.field public static ICBU_LOGIN_HOST_DAILY:Ljava/lang/String;

.field public static LOGIN_HOST:Ljava/lang/String;

.field public static LOGIN_URLS:Ljava/lang/String;

.field public static LOGOUT_URLS:Ljava/lang/String;

.field public static POSTFIX_OF_SECURITY_JPG:Ljava/lang/String;

.field public static POSTFIX_OF_SECURITY_JPG_USER_SET:Ljava/lang/String;

.field private static final a:Lcom/ali/user/open/core/config/ConfigManager;

.field public static qrCodeLoginUrl:Ljava/lang/String;

.field public static qrCodeLoginUrl_daily:Ljava/lang/String;


# instance fields
.field private b:Lcom/ali/user/open/core/config/Environment;

.field private c:I

.field private d:Z

.field private e:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/ali/user/open/core/config/ConfigManager;->DEBUG:Z

    new-instance v0, Lcom/ali/user/open/core/config/ConfigManager;

    invoke-direct {v0}, Lcom/ali/user/open/core/config/ConfigManager;-><init>()V

    sput-object v0, Lcom/ali/user/open/core/config/ConfigManager;->a:Lcom/ali/user/open/core/config/ConfigManager;

    const-string/jumbo v0, "https://passport.daily.alibaba.com/oauth.htm?appName=icbu-oauth&appEntrance="

    sput-object v0, Lcom/ali/user/open/core/config/ConfigManager;->ICBU_LOGIN_HOST_DAILY:Ljava/lang/String;

    const-string/jumbo v0, "https://passport.alibaba.com/oauth.htm?appName=icbu-oauth&appEntrance="

    sput-object v0, Lcom/ali/user/open/core/config/ConfigManager;->ICBU_LOGIN_HOST:Ljava/lang/String;

    const-string/jumbo v0, "https://havanalogin.taobao.com/taobao_oauth_common.htm?appName=taobao-oauth-common&appEntrance=sdk-common&needTopToken=true&topTokenAppName="

    sput-object v0, Lcom/ali/user/open/core/config/ConfigManager;->LOGIN_HOST:Ljava/lang/String;

    const-string/jumbo v0, "((https|http)://)login.m.taobao.com/login.htm(.*),((https|http)://)login.tmall.com(.*),((https|http)://)login.taobao.com/member/login.jhtml(.*)"

    sput-object v0, Lcom/ali/user/open/core/config/ConfigManager;->LOGIN_URLS:Ljava/lang/String;

    sput v1, Lcom/ali/user/open/core/config/ConfigManager;->APP_KEY_INDEX:I

    sput v1, Lcom/ali/user/open/core/config/ConfigManager;->DAILY_APP_KEY_INDEX:I

    const-string/jumbo v0, ""

    sput-object v0, Lcom/ali/user/open/core/config/ConfigManager;->POSTFIX_OF_SECURITY_JPG:Ljava/lang/String;

    const-string/jumbo v0, "http://login.m.taobao.com/qrcodeShow.htm?appKey=%s&from=bcqrlogin"

    sput-object v0, Lcom/ali/user/open/core/config/ConfigManager;->qrCodeLoginUrl:Ljava/lang/String;

    const-string/jumbo v0, "http://login.waptest.taobao.com/qrcodeShow.htm?appKey=%s&from=bcqrlogin"

    sput-object v0, Lcom/ali/user/open/core/config/ConfigManager;->qrCodeLoginUrl_daily:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/ali/user/open/core/config/ConfigManager;->c:I

    iput-boolean v0, p0, Lcom/ali/user/open/core/config/ConfigManager;->d:Z

    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    iput-object v0, p0, Lcom/ali/user/open/core/config/ConfigManager;->e:Ljava/util/Locale;

    return-void
.end method

.method public static getAppKeyIndex()I
    .locals 2

    invoke-static {}, Lcom/ali/user/open/core/config/ConfigManager;->getInstance()Lcom/ali/user/open/core/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/open/core/config/ConfigManager;->getEnvironment()Lcom/ali/user/open/core/config/Environment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ali/user/open/core/config/ConfigManager;->getInstance()Lcom/ali/user/open/core/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/open/core/config/ConfigManager;->getEnvironment()Lcom/ali/user/open/core/config/Environment;

    move-result-object v0

    sget-object v1, Lcom/ali/user/open/core/config/Environment;->TEST:Lcom/ali/user/open/core/config/Environment;

    invoke-virtual {v0, v1}, Lcom/ali/user/open/core/config/Environment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/ali/user/open/core/config/ConfigManager;->DAILY_APP_KEY_INDEX:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/ali/user/open/core/config/ConfigManager;->APP_KEY_INDEX:I

    goto :goto_0
.end method

.method public static getInstance()Lcom/ali/user/open/core/config/ConfigManager;
    .locals 1

    sget-object v0, Lcom/ali/user/open/core/config/ConfigManager;->a:Lcom/ali/user/open/core/config/ConfigManager;

    return-object v0
.end method

.method public static setAppKeyIndex(I)V
    .locals 0

    sput p0, Lcom/ali/user/open/core/config/ConfigManager;->APP_KEY_INDEX:I

    return-void
.end method

.method public static setAppKeyIndex(II)V
    .locals 0

    sput p0, Lcom/ali/user/open/core/config/ConfigManager;->APP_KEY_INDEX:I

    sput p1, Lcom/ali/user/open/core/config/ConfigManager;->DAILY_APP_KEY_INDEX:I

    return-void
.end method


# virtual methods
.method public getCurrentLanguage()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/open/core/config/ConfigManager;->e:Ljava/util/Locale;

    return-object v0
.end method

.method public getEnvironment()Lcom/ali/user/open/core/config/Environment;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/open/core/config/ConfigManager;->b:Lcom/ali/user/open/core/config/Environment;

    return-object v0
.end method

.method public getMaxHistoryAccount()I
    .locals 1

    iget v0, p0, Lcom/ali/user/open/core/config/ConfigManager;->c:I

    return v0
.end method

.method public init()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ali/user/open/core/config/ConfigManager;->b:Lcom/ali/user/open/core/config/Environment;

    if-nez v0, :cond_0

    sget-object v0, Lcom/ali/user/open/core/config/Environment;->ONLINE:Lcom/ali/user/open/core/config/Environment;

    iput-object v0, p0, Lcom/ali/user/open/core/config/ConfigManager;->b:Lcom/ali/user/open/core/config/Environment;

    :cond_0
    iget-object v0, p0, Lcom/ali/user/open/core/config/ConfigManager;->b:Lcom/ali/user/open/core/config/Environment;

    invoke-virtual {v0}, Lcom/ali/user/open/core/config/Environment;->ordinal()I

    move-result v0

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "https://havanalogin.taobao.com/taobao_oauth_common.htm?appName=taobao-oauth-common&appEntrance=sdk-common&needTopToken=true&topTokenAppName="

    aput-object v2, v1, v3

    const-string/jumbo v2, "https://havanalogin.taobao.com/taobao_oauth_common.htm?appName=taobao-oauth-common&appEntrance=sdk-common&needTopToken=true&topTokenAppName="

    aput-object v2, v1, v4

    const-string/jumbo v2, "http://passport.daily.alibaba.com/taobao_oauth_common.htm?appName=taobao-oauth-common&appEntrance=sdk-common&needTopToken=true&topTokenAppName="

    aput-object v2, v1, v5

    const-string/jumbo v2, "http://passport.daily.alibaba.com/taobao_oauth_common.htm?appName=taobao-oauth-common&appEntrance=sdk-common&needTopToken=true&topTokenAppName="

    aput-object v2, v1, v6

    aget-object v1, v1, v0

    sput-object v1, Lcom/ali/user/open/core/config/ConfigManager;->LOGIN_HOST:Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "((https|http)://)login.m.taobao.com/login.htm(.*),((https|http)://)login.tmall.com(.*),((https|http)://)login.taobao.com/member/login.jhtml(.*)"

    aput-object v2, v1, v3

    const-string/jumbo v2, "((https|http)://)login.m.taobao.com/login.htm(.*),((https|http)://)login.wapa.taobao.com/login.htm(.*)"

    aput-object v2, v1, v4

    const-string/jumbo v2, "((https|http)://)login.waptest.tbsandbox.com/login.htm(.*)"

    aput-object v2, v1, v5

    const-string/jumbo v2, "((https|http)://)login.waptest.taobao.com/login.htm(.*)"

    aput-object v2, v1, v6

    aget-object v1, v1, v0

    sput-object v1, Lcom/ali/user/open/core/config/ConfigManager;->LOGIN_URLS:Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "((https|http)://)login.m.taobao.com/logout.htm(.*)"

    aput-object v2, v1, v3

    const-string/jumbo v2, "((https|http)://)login.wapa.taobao.com/logout.htm(.*)"

    aput-object v2, v1, v4

    const-string/jumbo v2, "((https|http)://)login.waptest.tbsandbox.com/logout.htm(.*)"

    aput-object v2, v1, v5

    const-string/jumbo v2, "((https|http)://)login.waptest.taobao.com/logout.htm(.*)"

    aput-object v2, v1, v6

    aget-object v1, v1, v0

    sput-object v1, Lcom/ali/user/open/core/config/ConfigManager;->LOGOUT_URLS:Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "http://login.m.taobao.com/qrcodeShow.htm?appKey=%s&from=bcqrlogin"

    aput-object v2, v1, v3

    const-string/jumbo v2, "http://login.wapa.taobao.com/qrcodeShow.htm?appKey=%s&from=bcqrlogin"

    aput-object v2, v1, v4

    const-string/jumbo v2, "http://login.waptest.taobao.com/qrcodeShow.htm?appKey=%s&from=bcqrlogin"

    aput-object v2, v1, v5

    const-string/jumbo v2, "http://login.waptest.taobao.com/qrcodeShow.htm?appKey=%s&from=bcqrlogin"

    aput-object v2, v1, v6

    aget-object v1, v1, v0

    sput-object v1, Lcom/ali/user/open/core/config/ConfigManager;->qrCodeLoginUrl:Ljava/lang/String;

    sget-object v1, Lcom/ali/user/open/core/config/ConfigManager;->POSTFIX_OF_SECURITY_JPG_USER_SET:Ljava/lang/String;

    if-nez v1, :cond_1

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, ""

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const-string/jumbo v2, ""

    aput-object v2, v1, v5

    const-string/jumbo v2, ""

    aput-object v2, v1, v6

    aget-object v0, v1, v0

    sput-object v0, Lcom/ali/user/open/core/config/ConfigManager;->POSTFIX_OF_SECURITY_JPG:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/ali/user/open/core/config/ConfigManager;->POSTFIX_OF_SECURITY_JPG_USER_SET:Ljava/lang/String;

    sput-object v0, Lcom/ali/user/open/core/config/ConfigManager;->POSTFIX_OF_SECURITY_JPG:Ljava/lang/String;

    goto :goto_0
.end method

.method public isSaveHistoryWithSalt()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ali/user/open/core/config/ConfigManager;->d:Z

    return v0
.end method

.method public setEnvironment(Lcom/ali/user/open/core/config/Environment;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/open/core/config/ConfigManager;->b:Lcom/ali/user/open/core/config/Environment;

    invoke-virtual {p0}, Lcom/ali/user/open/core/config/ConfigManager;->init()V

    return-void
.end method

.method public setLanguage(Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/open/core/config/ConfigManager;->e:Ljava/util/Locale;

    return-void
.end method

.method public setMaxHistoryAccount(I)V
    .locals 0

    iput p1, p0, Lcom/ali/user/open/core/config/ConfigManager;->c:I

    return-void
.end method

.method public setSaveHistoryWithSalt(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ali/user/open/core/config/ConfigManager;->d:Z

    return-void
.end method
