.class public Lcom/ali/user/enterprise/base/constant/LoginUrlConstants;
.super Ljava/lang/Object;
.source "LoginUrlConstants.java"


# static fields
.field private static final ALIBABA_SCAN_PREFIX:Ljava/lang/String; = "m.alibaba.com/qr?"

.field private static final BASE_URL:Ljava/lang/String; = "//login.m.taobao.com"

.field private static final COMMON_SCAN_URL:Ljava/lang/String; = "login.m.taobao.com/qrcodeCheck.htm?"

.field private static final LOGIN_URLS:Ljava/lang/String; = "((https|http)://)login.(m|wapa|waptest).(taobao|tmall).com/(login/){0,1}login.htm(.*);((https|http)://)login.tmall.com(.*);((https|http)://)login.taobao.com/member/login.jhtml(.*);(http|https)://login.(taobao|tmall).com/login/(.*);http://login.m.taobao.com/minisdk/login.htm;https://oauth.m.taobao.com/authorize"

.field private static final LOGOUT_URLS:Ljava/lang/String; = "((https|http)://)login.(m|wapa|waptest).(taobao|tmall).com/(login/){0,1}logout.htm(.*)"

.field private static final SCAN_LOGIN:Ljava/lang/String; = "/qrcodeLogin.htm?shortURL="


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLoginUrls()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string/jumbo v0, "((https|http)://)login.(m|wapa|waptest).(taobao|tmall).com/(login/){0,1}login.htm(.*);((https|http)://)login.tmall.com(.*);((https|http)://)login.taobao.com/member/login.jhtml(.*);(http|https)://login.(taobao|tmall).com/login/(.*);http://login.m.taobao.com/minisdk/login.htm;https://oauth.m.taobao.com/authorize"

    return-object v0
.end method

.method public static getLogoutUrls()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "((https|http)://)login.(m|wapa|waptest).(taobao|tmall).com/(login/){0,1}logout.htm(.*)"

    return-object v0
.end method

.method public static getScanLoginUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "//login.m.taobao.com/qrcodeLogin.htm?shortURL="

    return-object v0
.end method

.method public static isAlibabaScanUrl(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 45
    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "m.alibaba.com/qr?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isCommonScanUrl(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 53
    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "login.m.taobao.com/qrcodeCheck.htm?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method
