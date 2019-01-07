.class public final Lhra;
.super Ljava/lang/Object;
.source "UidTokenDataSource.java"

# interfaces
.implements Lhqz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhra$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lhrb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lhra;->a:Ljava/util/Map;

    .line 47
    return-void
.end method

.method private static a(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 6
    .param p0, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lhrb;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 193
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 194
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lhrb;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 195
    .local v1, "keysItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 196
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 197
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 198
    .local v4, "value":Ljava/lang/String;
    invoke-static {v4}, Lhrb;->a(Ljava/lang/String;)Lhrb;

    move-result-object v3

    .line 199
    .local v3, "uidTokenWrapper":Lhrb;
    if-eqz v3, :cond_0

    .line 202
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 204
    .end local v0    # "key":Ljava/lang/String;
    .end local v3    # "uidTokenWrapper":Lhrb;
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method private a()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 148
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    const-string/jumbo v5, "light_app_uid_token_map"

    invoke-static {v4, v5}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "appIdToUidTokenStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 163
    :goto_0
    return-void

    .line 155
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 156
    .local v2, "json":Lorg/json/JSONObject;
    invoke-static {v2}, Lhra;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    .line 157
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lhrb;>;"
    iget-object v4, p0, Lhra;->a:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lhrb;>;"
    :goto_1
    const-string/jumbo v4, "safeTunnel"

    const-string/jumbo v5, "restoreCommonDomains="

    iget-object v6, p0, Lhra;->a:Ljava/util/Map;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 158
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method static a(Ljava/lang/String;JZ)V
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "startTime"    # J
    .param p3, "isSync"    # Z

    .prologue
    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, p1

    .line 262
    .local v2, "timeMillis":J
    const/4 v1, 0x0

    .line 263
    .local v1, "isSetSuccess":Z
    invoke-static {}, Lcom/uc/webview/export/CookieManager;->getInstance()Lcom/uc/webview/export/CookieManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/uc/webview/export/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "cookie":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "ding_ut"

    .line 265
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 266
    const/4 v1, 0x1

    .line 269
    :cond_0
    long-to-double v4, v2

    invoke-static {p0, v4, v5, p3, v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitUidTokenStatus(Ljava/lang/String;DZZ)V

    .line 270
    return-void
.end method

.method private static b(Lhiq;)Ljava/lang/String;
    .locals 5
    .param p0, "cookieModel"    # Lhiq;

    .prologue
    .line 226
    if-nez p0, :cond_0

    .line 227
    const-string/jumbo v3, ""

    .line 253
    :goto_0
    return-object v3

    .line 229
    :cond_0
    iget-object v2, p0, Lhiq;->a:Ljava/util/Map;

    .line 230
    .local v2, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 231
    .local v1, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 232
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 233
    const-string/jumbo v3, "="

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 234
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 235
    const-string/jumbo v3, "; "

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1

    .line 237
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string/jumbo v3, "domain="

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 238
    iget-object v3, p0, Lhiq;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 239
    const-string/jumbo v3, "; "

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 240
    const-string/jumbo v3, "path="

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 241
    iget-object v3, p0, Lhiq;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 242
    const-string/jumbo v3, "; "

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 243
    const-string/jumbo v3, "expires="

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 244
    iget-object v3, p0, Lhiq;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 245
    iget-object v3, p0, Lhiq;->e:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 246
    const-string/jumbo v3, "; "

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 247
    const-string/jumbo v3, "secure"

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 249
    :cond_2
    iget-object v3, p0, Lhiq;->f:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 250
    const-string/jumbo v3, "; "

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 251
    const-string/jumbo v3, "HttpOnly"

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 253
    :cond_3
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method


# virtual methods
.method a(Lhiq;)Lhrb;
    .locals 12
    .param p1, "cookieModel"    # Lhiq;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 210
    :try_start_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "EEE, dd MMM yyyy HH:mm:ss z"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 211
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    const-string/jumbo v7, "GMT"

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 212
    iget-object v7, p1, Lhiq;->b:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 213
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 219
    .end local v0    # "date":Ljava/util/Date;
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    .local v2, "expireTime":J
    :goto_0
    invoke-static {p1}, Lhra;->b(Lhiq;)Ljava/lang/String;

    move-result-object v5

    .line 220
    .local v5, "uidTokenCookie":Ljava/lang/String;
    new-instance v6, Lhrb;

    invoke-direct {v6, v5, v2, v3}, Lhrb;-><init>(Ljava/lang/String;J)V

    .line 222
    .local v6, "uidTokenWrapper":Lhrb;
    return-object v6

    .line 215
    .end local v2    # "expireTime":J
    .end local v5    # "uidTokenCookie":Ljava/lang/String;
    .end local v6    # "uidTokenWrapper":Lhrb;
    :catch_0
    move-exception v1

    .line 216
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 217
    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->currentServerTime()J

    move-result-wide v8

    const-wide/32 v10, 0x1ee62800

    add-long v2, v8, v10

    .restart local v2    # "expireTime":J
    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lhqz$a;)V
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "callback"    # Lhqz$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1070
    .local v4, "startTime":J
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1071
    const/4 v0, 0x0

    .line 59
    .local v0, "uidToken":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 61
    invoke-static {p1, v4, v5, v6}, Lhra;->a(Ljava/lang/String;JZ)V

    .line 62
    invoke-interface {p2, v0}, Lhqz$a;->onSuccess(Ljava/lang/String;)V

    .line 2105
    :cond_0
    :goto_1
    return-void

    .line 1073
    .end local v0    # "uidToken":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lhra;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 1074
    invoke-direct {p0}, Lhra;->a()V

    .line 1076
    :cond_2
    const-string/jumbo v2, ""

    .line 1077
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1078
    iget-object v1, p0, Lhra;->a:Ljava/util/Map;

    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhrb;

    .line 1079
    if-eqz v1, :cond_5

    .line 1080
    iget-wide v8, v1, Lhrb;->b:J

    .line 1166
    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->currentServerTime()J

    move-result-wide v10

    .line 1167
    sub-long/2addr v8, v10

    const-wide/32 v10, 0x927c0

    cmp-long v3, v8, v10

    if-gez v3, :cond_3

    move v3, v6

    .line 1082
    :goto_2
    if-nez v3, :cond_4

    .line 1083
    iget-object v1, v1, Lhrb;->a:Ljava/lang/String;

    .line 1084
    invoke-static {}, Lcom/uc/webview/export/CookieManager;->getInstance()Lcom/uc/webview/export/CookieManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/uc/webview/export/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move-object v0, v1

    .line 1089
    goto :goto_0

    .line 1167
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 1086
    :cond_4
    iget-object v1, p0, Lhra;->a:Ljava/util/Map;

    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    move-object v1, v2

    goto :goto_3

    .line 2093
    .restart local v0    # "uidToken":Ljava/lang/String;
    :cond_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2094
    if-eqz p2, :cond_0

    .line 2095
    const-string/jumbo v1, "0"

    const-string/jumbo v2, "url is null"

    invoke-interface {p2, v1, v2}, Lhqz$a;->onFail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2099
    :cond_7
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2100
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 2101
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2102
    if-eqz p2, :cond_0

    .line 2103
    const-string/jumbo v1, "0"

    const-string/jumbo v2, "host is null"

    invoke-interface {p2, v1, v2}, Lhqz$a;->onFail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2112
    :cond_8
    const-class v1, Lcom/alibaba/lightapp/runtime/idl/CookiesIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/alibaba/lightapp/runtime/idl/CookiesIService;

    .line 2113
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v1, Lhra$1;

    move-object v2, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lhra$1;-><init>(Lhra;Landroid/net/Uri;JLhqz$a;)V

    invoke-interface {v7, v8, v1}, Lcom/alibaba/lightapp/runtime/idl/CookiesIService;->getAuthorizeCookie(Ljava/lang/String;Liyv;)V

    goto/16 :goto_1
.end method
