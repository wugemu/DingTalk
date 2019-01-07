.class public final Lhlh;
.super Ljava/lang/Object;
.source "ICBULoginHelper.java"


# static fields
.field public static a:Ljava/util/regex/Pattern;

.field public static b:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 9
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v5, "f_lightapp_overrideurl_loading_icbu_login"

    invoke-static {v5, v4}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 35
    :cond_0
    :goto_0
    return v3

    .line 22
    :cond_1
    :try_start_0
    sget-object v5, Lhlh;->a:Ljava/util/regex/Pattern;

    if-nez v5, :cond_2

    .line 23
    const-string/jumbo v5, "(http|https):\\/\\/((.*\\.)?login(\\.(m|waptest|wapa|waimaoquan))?\\.alibaba\\.com(.*)?|(.*\\.)?(m|waimaoquan)\\.alibaba\\.com(.*)?((login\\.htm(l)?)|(LoginPhpProxy\\.htm(l)?)|(mobileLogin\\.htm(l)?))(.*))"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    sput-object v5, Lhlh;->a:Ljava/util/regex/Pattern;

    .line 26
    :cond_2
    sget-object v5, Lhlh;->b:Ljava/util/regex/Pattern;

    if-nez v5, :cond_3

    .line 27
    const-string/jumbo v5, "^(http|https)://passport.alibaba.com/login_check.htm(\\\\?(.*)?|/)?"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    sput-object v5, Lhlh;->b:Ljava/util/regex/Pattern;

    .line 29
    :cond_3
    sget-object v5, Lhlh;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 30
    .local v0, "matcher":Ljava/util/regex/Matcher;
    sget-object v5, Lhlh;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 32
    .local v1, "matcher2":Ljava/util/regex/Matcher;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    :cond_5
    move v3, v4

    goto :goto_0

    .line 33
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    .end local v1    # "matcher2":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v2

    .line 34
    .local v2, "tr":Ljava/lang/Throwable;
    const-string/jumbo v5, "H5"

    const-string/jumbo v6, "ICBULoginHelper"

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ICBULoginHelper.shouldInterceptUrl"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v3

    invoke-static {v5, p0, v6, v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
